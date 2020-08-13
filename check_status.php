<?php

$check_order_sos = $conn->query("SELECT * FROM pembelian_sosmed WHERE status IN ('Pending', 'Processing')");

while ($data_order = mysqli_fetch_assoc($check_order_sos)) {
	$o_oid = $data_order['oid'];
	$o_poid = $data_order['provider_oid'];
	$o_provider = $data_order['provider'];
	$username = $data_order['user'];
	$koin = $data_order['koin'];
	$layanan = $data_order['layanan'];
	$provider = $data_order['provider'];
	if ($o_provider == "MANUAL") {
		echo "";
	} else {

		$getService = $conn->query("SELECT * FROM layanan_sosmed WHERE layanan = '$layanan' AND provider = '$provider'");
		$getDataService = mysqli_fetch_assoc($getService);

		$check_provider = $conn->query("SELECT * FROM provider WHERE code = 'MEDANPEDIA'");
		$data_provider = mysqli_fetch_assoc($check_provider);

		$p_apikey = $data_provider['api_key'];
		$p_api_id = $data_provider['api_id'];

		$url = "https://medanpedia.co.id/api/status";

		$postdata = array(
			'api_id' => $p_api_id,
			'api_key' => $p_apikey,
			'id' => $o_poid,
		);
		// echo json_encode($data);
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		$chresult = curl_exec($ch);
		$result = json_decode($chresult, true);
		// echo $result;
		$sn = $result['data']['status'];
		if (isset($result['status']) and $result['status'] == true) {
			if ($sn == 'Success') {
				$status = 'Success';
			} elseif ($sn == 'Error') {
				$status = 'Error';
			} elseif ($sn == 'Partial') {
				$status = 'Partial';
			} elseif ($sn == 'Processing') {
				$status = 'Processing';
			} else {
				$status = 'Pending';
			}

			if ($sn == "Success") {
				$update = $conn->query("INSERT INTO riwayat_saldo_koin VALUES ('', '$username', 'Koin', 'Penambahan Koin', '$koin', 'Mendapatkan Koin Melalui Pemesanan $layanan Dengan Kode Pesanan : $o_oid', '$date', '$time')");
				$update = $conn->query("UPDATE users SET koin = koin+$koin WHERE username = '$username'");
			}
			$start_count = (isset($result['data']['start_count'])) ? $result['data']['start_count'] : 0;
			$remains = (isset($result['data']['remains'])) ? $result['data']['remains'] : 0;
			$update_order = $conn->query("UPDATE semua_pembelian SET status = '$status' WHERE id_pesan = '$o_oid'");
			$update_order = $conn->query("UPDATE pembelian_sosmed SET status = '" . $status . "', remains = '" . $remains . "', start_count = '" . $start_count . "',  date = '" . date('Y-m-d') . "' WHERE oid = '$o_oid'");
		}
	}
}


$check_order_top = $conn->query("SELECT * FROM pembelian_pulsa WHERE status IN ('Pending', '')");

while ($data_order = mysqli_fetch_assoc($check_order_top)) {
	$o_oid = $data_order['oid'];
	$o_poid = $data_order['provider_oid'];
	$o_provider = $data_order['provider'];
	$username = $data_order['user'];
	$koin = $data_order['koin'];
	$layanan = $data_order['layanan'];
	$provider = $data_order['provider'];
	if ($o_provider == "MANUAL") {
		echo "";
	} else {

		$getService = $conn->query("SELECT * FROM layanan_pulsa WHERE layanan = '$layanan' AND provider = '$provider'");
		$getDataService = mysqli_fetch_assoc($getService);

		$check_provider = $conn->query("SELECT * FROM provider_pulsa WHERE code = 'DG-PULSA'");
		$data_provider = mysqli_fetch_assoc($check_provider);

		$p_apikey = $data_provider['api_key'];
		$p_api_id = $data_provider['api_id'];

		$url = "https://api.digiflazz.com/v1/transaction";
		$sign = md5("$p_api_id" . "$p_apikey" . $o_oid);

		$header = array(
			'Content-Type: application/json',
		);

		$data = array(
			'command' => 'status-pasca',
			'username' => $p_api_id,
			'buyer_sku_code' => $getDataService['service_id'],
			'customer_no' => $data_order['target'],
			'ref_id' => $o_oid,
			'sign' => $sign
		);
		// echo json_encode($data);
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
		$result = curl_exec($ch);
		$result = json_decode($result, true);
		// echo $result;

		$sn = $result['data']['sn'];
		$ht_status = $result['data']['status'];

		if ($ht_status == "Gagal") {
			$status = "Error";
		} else if ($ht_status == "Sukses") {
			$status = "Success";
		}

		if ($ht_status == "Sukses") {
			$update = $conn->query("INSERT INTO riwayat_saldo_koin VALUES ('', '$username', 'Koin', 'Penambahan Koin', '$koin', 'Mendapatkan Koin Melalui Pemesanan $layanan Dengan Kode Pesanan : $o_oid', '$date', '$time')");
			$update = $conn->query("UPDATE users SET koin = koin+$koin WHERE username = '$username'");
		}
		$update_order = $conn->query("UPDATE semua_pembelian SET status = '$status' WHERE id_pesan = '$o_oid'");
		$update_order = $conn->query("UPDATE pembelian_pulsa SET status = '$status', keterangan = '$sn' WHERE oid = '$o_oid'");
	}
}



$check_refund_sos = $conn->query("SELECT * FROM pembelian_sosmed WHERE status IN ('Error','Partial') AND refund = '0'");

while ($data_order = mysqli_fetch_assoc($check_refund_sos)) {
	$o_oid = $data_order['oid'];
	$o_poid = $data_order['provider_oid'];
	$u_remains = $data_order['remains'];
	$layanan = $data_order['layanan'];

	$priceone = $data_order['harga'] / $data_order['jumlah'];
	$refund = $priceone * $u_remains;
	$buyer = $data_order['user'];
	if ($u_remains == 0) {
		$refund = $data_order['harga'];
	}

	$update_user = $conn->query("UPDATE users SET saldo_sosmed = saldo_sosmed+$refund, pemakaian_saldo = pemakaian_saldo+$refund WHERE username = '$buyer'");
	$update_order = $conn->query("INSERT INTO riwayat_saldo_koin VALUES ('', '$buyer', 'Saldo', 'Penambahan Saldo', '$refund', 'Pengembalian Dana Dari Pemesanan $layanan Akibat Status Pesanan Error/Partial Dengan Kode Pesanan : $o_oid', '$date', '$time')");
	$update_order = $conn->query("UPDATE pembelian_sosmed SET refund = '1'  WHERE oid = '$o_oid'");
	$update_order = $conn->query("UPDATE semua_pembelian SET refund = '1'  WHERE id_pesan = '$o_oid'");
}


$check_refund_top = $conn->query("SELECT * FROM pembelian_pulsa WHERE status IN ('Error') AND refund = '0'");

while ($data_order = mysqli_fetch_assoc($check_refund_top)) {
	$o_oid = $data_order['oid'];
	$o_poid = $data_order['provider_oid'];
	$layanan = $data_order['layanan'];

	$priceone = $data_order['harga'];
	$refund = $priceone;
	$buyer = $data_order['user'];

	$update_user = $conn->query("UPDATE users SET saldo_top_up = saldo_top_up+$refund, pemakaian_saldo = pemakaian_saldo+$refund WHERE username = '$buyer'");
	$update_order = $conn->query("INSERT INTO riwayat_saldo_koin VALUES ('', '$buyer', 'Saldo', 'Penambahan Saldo', '$refund', 'Pengembalian Dana Dari Pemesanan $layanan Akibat Status Pesanan Error Dengan Kode Pesanan : $o_oid', '$date', '$time')");
	$update_order = $conn->query("UPDATE pembelian_pulsa SET refund = '1'  WHERE oid = '$o_oid'");
	$update_order = $conn->query("UPDATE semua_pembelian SET refund = '1'  WHERE id_pesan = '$o_oid'");
}
?>
