<?php
session_start();
require '../config.php';
require '../lib/session_user.php';

        if (isset($_POST['pesan'])) {
		    require '../lib/session_login.php';
		    $post_kategori = $conn->real_escape_string(trim(filter($_POST['kategori'])));
		    $post_layanan = $conn->real_escape_string(trim(filter($_POST['layanan'])));
		    $post_target = $conn->real_escape_string(trim(filter($_POST['target'])));
		    $post_jumlah = $conn->real_escape_string(trim(filter($_POST['jumlah'])));
		    $post_pin = $conn->real_escape_string(trim(filter($_POST['pin'])));
		    $post_comments = $_POST['comments'];

		    $cek_rate = $conn->query("SELECT * FROM setting_rate WHERE tipe = 'Sosial Media'");
		    $data_rate = mysqli_fetch_assoc($cek_rate);

		    $cek_layanan = $conn->query("SELECT * FROM layanan_sosmed WHERE service_id = '$post_layanan' AND status = 'Aktif'");
		    $data_layanan = mysqli_fetch_assoc($cek_layanan);

	    	$cek_pesanan = $conn->query("SELECT * FROM pembelian_sosmed WHERE target = '$post_target' AND status = 'Pending'");
		    $data_pesanan = mysqli_fetch_assoc($cek_pesanan);

			$cek_rate_koin = $conn->query("SELECT * FROM setting_koin_didapat WHERE status = 'Aktif'");
			$data_rate_koin = mysqli_fetch_assoc($cek_rate_koin);

		    $kategori = $data_layanan['kategori'];
		    $layanan = $data_layanan['layanan'];
		    $cek_harga = $data_layanan['harga'] / 1000;
		    $cek_profit = $data_rate['rate'] / 1000;
		    $hitung = count(explode(PHP_EOL, $post_comments));
	        $replace = str_replace("\r\n",'\r\n', $post_comments);
	        if (!empty($post_comments)) {
			    $post_jumlah = $hitung;
		    } else {
		    	$post_jumlah = $post_jumlah;
		    }
		    if (!empty($post_comments)) {
		    	$harga = $cek_harga*$hitung;
			    $profit = $cek_profit*$hitung;
		    } else {
			    $harga = $cek_harga*$post_jumlah;
			    $profit = $cek_profit*$post_jumlah;
		    }
		    $order_id = acak_nomor(3).acak_nomor(4);
            $provider = $data_layanan['provider'];
            $koin = $harga * $data_rate_koin['rate'];

		    $cek_provider = $conn->query("SELECT * FROM provider WHERE code = '$provider'");
		    $data_provider = mysqli_fetch_assoc($cek_provider);

            // Get Start Count
            if ($data_layanan['kategori'] == "Instagram Likes" AND "Instagram Likes Indonesia" AND "Instagram Likes [Targeted Negara]" AND "Instagram Likes/Followers Per Minute") {
                $start_count = likes_count($post_target);
            } else if ($data_layanan['kategori'] == "Instagram Followers No Refill/Not Guaranteed" AND "Instagram Followers Indonesia" AND "Instagram Followers [Negara]" AND "Instagram Followers [Refill] [Guaranteed] [NonDrop]") {
                $start_count = followers_count($post_target);
            } else if ($data_layanan['kategori'] == "Instagram Views") {
                $start_count = views_count($post_target);
            } else {
                $start_count = 0;
            }

            $error = array();
            if (empty($post_kategori)) {
    		    $error ['kategori'] = '*Wajib Pilih Salah Satu.';
            }
            if (empty($post_layanan)) {
    		    $error ['layanan'] = '*Wajib Pilih Salah Satu.';
            }
            if (empty($post_target)) {
    		    $error ['target'] = '*Tidak Boleh Kosong.';
            }
            if (empty($post_jumlah)) {
    		    $error ['jumlah'] = '*Tidak Boleh Kosong.';
            } else {

    		if (mysqli_num_rows($cek_layanan) == 0) {
    			$_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, Layanan Tidak Tersedia.<script>swal("Ups Gagal!", "Layanan Tidak Tersedia.", "error");</script>');

		    } else if (mysqli_num_rows($cek_provider) == 0) {
			    $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, Server Kami Sedang Maintance.<script>swal("Ups Gagal!", "Server Kami Sedang Maintance.", "error");</script>');

		    } else if ($post_jumlah < $data_layanan['min']) {
			    $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, Minimal Jumlah Pemesanan Adalah '.number_format($data_layanan['min'],0,',','.').'<script>swal("Yahh Gagal!", "Jumlah Minimal Pemesanan Adalah '.number_format($data_layanan['min'],0,',','.').'", "error");</script>');
			
		    } else if ($post_jumlah > $data_layanan['max']) {
			    $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, Maksimal Jumlah Pemesanan Adalah '.number_format($data_layanan['max'],0,',','.').'<script>swal("Yahh Gagal!", "Jumlah Maksimal Pemesanan Adalah '.number_format($data_layanan['max'],0,',','.').'", "error");</script>');
			
		    } else if ($data_user['saldo_top_up'] < $harga) {
			    $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Yahh, Saldo  Kamu Tidak Mencukupi Untuk Melakukan Pemesanan Ini.<script>swal("Yahh Gagal!", "Saldo Sosial Media Kamu Tidak Mencukupi Untuk Melakukan Pemesanan Ini.", "error");</script>');

		    } else if (mysqli_num_rows($cek_pesanan) == 1) {
		        $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, Masih Terdapat Pesanan Dengan Tujuan Yang Sama & Berstatus Pending.<script>swal("Ups Gagal!", "Masih Terdapat Pesanan Dengan Tujuan Yang Sama & Berstatus Pending.", "error");</script>');

		    } else {

			if ($provider == "MANUAL") {
				$api_postdata = "";
			} else if ($provider == "IRVANKEDE") {
			    if ($post_comments == false) {
                $postdata = "api_id=".$data_provider['api_id']."&api_key=".$data_provider['api_key']."&service=".$data_layanan['provider_id']."&target=$post_target&quantity=$post_jumlah";
			    } else if ($post_comments == true) {
			    $postdata = "api_id=".$data_provider['api_id']."&api_key=".$data_provider['api_key']."&service=".$data_layanan['provider_id']."&target=$post_target&custom_comments=$post_comments";
			    }
			    $url = "https://irvankede-smm.co.id/api/order";
			} else if ($provider == "MEDANPEDIA") {
			    if ($post_comments == false) {
                $postdata = "api_id=".$data_provider['api_id']."&api_key=".$data_provider['api_key']."&service=".$data_layanan['provider_id']."&target=$post_target&quantity=$post_jumlah";
			    } else if ($post_comments == true) {
			    $postdata = "api_id=".$data_provider['api_id']."&api_key=".$data_provider['api_key']."&service=".$data_layanan['provider_id']."&target=$post_target&custom_comments=$post_comments";
			    }
			    $url = "https://medanpedia.co.id/api/order";
			} else if($provider == "WSTORE") {
			    if ($post_comments == false) {
                $postdata = "api_id=".$data_provider['api_id']."&api_key=".$data_provider['api_key']."&service=".$data_layanan['provider_id']."&target=$post_target&quantity=$post_jumlah";
			    } else if ($post_comments == true) {
			    $postdata = "api_id=".$data_provider['api_id']."&api_key=".$data_provider['api_key']."&service=".$data_layanan['provider_id']."&target=$post_target&custom_comments=$post_comments";
			    }
			    $url = "https://www.wstore.co.id/api/order";
			} else {
				die("System Error!");
			}
			    $ch = curl_init();
                curl_setopt($ch, CURLOPT_URL, $url);
                curl_setopt($ch, CURLOPT_POST, 1);
                curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                $chresult = curl_exec($ch);
                $json_result = json_decode($chresult, true);

			    if ($provider == "IRVANKEDE" AND $json_result['status'] == false) {
				    $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, Server Maintenance');
			    } else if ($provider == "MEDANPEDIA" AND $json_result['status'] == false) {
			     if ($json_result['data'] == 'Saldo tidak mencukupi'){
			            $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, Server gangguan, silahkan coba beberapa saat lagi');
			        } else {
		            $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, '.$json_result['data']); }
			       
			    } else if ($provider == "WSTORE" AND $json_result['status'] == false) {
			        $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, '.$json_result['data']);
			    } else {

                    if ($provider == "IRVANKEDE") {
					    $provider_oid = $json_result['data']['id'];
				    } else if($provider == "MEDANPEDIA") {
				        $provider_oid = $json_result['data']['id'];
				    } else if($provider == "WSTORE") {
				        $provider_oid = $json_result['data']['id'];
				    }

			            $top_layanan = $conn->query("SELECT * FROM top_layanan WHERE layanan = '$layanan'");
			            $data_layanan = mysqli_fetch_assoc($top_layanan);
			            $check_top = $conn->query("SELECT * FROM top_users WHERE username = '$sess_username'");
			            $data_top = mysqli_fetch_assoc($check_top);
			            if ($conn->query("INSERT INTO pembelian_sosmed VALUES ('','$order_id', '$provider_oid', '$sess_username', '$layanan', '$post_target', '$post_jumlah', '$post_jumlah', '$start_count', '$harga', '$profit', '$koin', 'Pending', '$date', '$time', '$provider', 'Website', '0')") == true) {
			            	$conn->query("INSERT INTO semua_pembelian VALUES ('','WEB-$order_id', '$order_id', '$sess_username', '$kategori', '$layanan', '$harga', '$post_target', 'Pending', '$date', '$time', 'WEB', '0')");
				            $conn->query("UPDATE users SET saldo_top_up = saldo_top_up-$harga, pemakaian_saldo = pemakaian_saldo+$harga WHERE username = '$sess_username'");
				            $conn->query("INSERT INTO riwayat_saldo_koin VALUES ('', '$sess_username', 'Saldo', 'Pengurangan Saldo', '$harga', 'Mengurangi Saldo Sosial Media Melalui Pemesanan Sosial Media Dengan Kode Pesanan : WEB-$order_id', '$date', '$time')");
			                if (mysqli_num_rows($check_top) == 0) {
				                $insert_topup = $conn->query("INSERT INTO top_users VALUES ('', 'Order', '$sess_username', '$harga', '1')");
			                } else {
				                $insert_topup = $conn->query("UPDATE top_users SET jumlah = ".$data_top['jumlah']."+$harga, total = ".$data_top['total']."+1 WHERE username = '$sess_username' AND method = 'Order'");
			                }
			                if (mysqli_num_rows($top_layanan) == 0) {
				                $insert_topup = $conn->query("INSERT INTO top_layanan VALUES ('', 'Layanan', '$layanan', '$harga', '1')");
			                } else {
				                $insert_topup = $conn->query("UPDATE top_layanan SET jumlah = ".$data_top['jumlah']."+$harga, total = ".$data_top['total']."+1 WHERE layanan = '$layanan' AND method = 'Layanan'");
			                }
    			            $jumlah = number_format($post_jumlah,0,',','.');
    			            $harga2 = number_format($harga,0,',','.');
    			            $_SESSION['hasil'] = array('alert' => 'success', 'pesan' => 'Sip, Pesanan Kamu Telah Kami Terima.');
				        } else {
					        $_SESSION['hasil'] = array('alert' => 'danger', 'pesan' => 'Ups, Gagal! Sistem Kami Sedang Mengalami Gangguan.<script>swal("Ups Gagal!", "Sistem Kami Sedang Mengalami Gangguan.", "error");</script>');
				        }
			        }
		        }
	        }
        }
	
	    require("../lib/header.php");

?>
