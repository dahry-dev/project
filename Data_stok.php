<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include_once APPPATH . '/third_party/fpdf/fpdf.php';
include_once APPPATH . '/third_party/phpspreadsheet/vendor/autoload.php';
require APPPATH . '/libraries/BaseController.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Helper\Sample;
use PhpOffice\PhpSpreadsheet\IOFactory;

class Data_stok extends BaseController
{
    function __construct()
    {
        parent::__construct();
        $this->load->model("modelDataStok");
        $this->isLoggedIn($this->global['idUser'], 2, 17);
    }
    
    function index()
    {
        $data['show_kategori']     = $this->db->get("ap_kategori")->result();
        $this->global['pageTitle'] = "SIMRS - Data Stok Gudang";
        $this->loadViews("data_stok/body_data_stok_fg", $this->global, $data, "data_stok/footerDataStok");
    }
    
    function export_excel_fg()
    {
        $objPHPExcel = new Spreadsheet();
        
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'No')->setCellValue('B1', 'SKU')->setCellValue('C1', 'Nama Produk')->setCellValue('D1', 'Kategori')->setCellValue('E1', 'Last Stok')->setCellValue('F1', 'Harga Beli');
        
        $data_stok = $this->modelDataStok->dataStokFgAll();
        
        $i = 2;
        foreach ($data_stok->result() as $row) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $i - 1)->setCellValue('B' . $i, $row->id_produk)->setCellValue('C' . $i, $row->nama_produk)->setCellValue('D' . $i, $row->kategori)->setCellValue('E' . $i, $row->stok)->setCellValue('F' . $i, $row->harga);
            $i++;
        }
        
        //set title pada sheet (me rename nama sheet)
        $objPHPExcel->getActiveSheet()->setTitle('Sheet 1');
        
        // Set document properties
        $objPHPExcel->getProperties()->setCreator("Rifal")->setLastModifiedBy("Rifal")->setTitle("TukuWebsite | Simple PSB System")->setSubject("TukuWebsite | Simple PSB System")->setDescription("Export Data")->setKeywords("office 2007 openxml php")->setCategory("Data SO");
        
        
        //sesuaikan headernya 
        header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
        header("Cache-Control: no-store, no-cache, must-revalidate");
        header("Cache-Control: post-check=0, pre-check=0", false);
        header("Pragma: no-cache");
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        //ubah nama file saat diunduh
        header('Content-Disposition: attachment;filename=Data Stok Gudang' . date('d/m/y') . '.xlsx');
        //unduh file
        $writer = IOFactory::createWriter($objPHPExcel, 'Xlsx');
        $writer->save('php://output');
        exit;
    }
    
    function exportExcelFgFilter()
    {
        $objPHPExcel = new Spreadsheet();
    
        
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'No')->setCellValue('B1', 'SKU')->setCellValue('C1', 'Nama Produk')->setCellValue('D1', 'Kategori')->setCellValue('E1', 'Last Stok')->setCellValue('F1', 'Harga Beli');
        
        $idKategori     = $_GET['idKategori'];
        $stokSign       = $_GET['stokSign'];
        $stokValue      = $_GET['stokValue'];
        $priceSign      = $_GET['priceSign'];
        $priceSignValue = $_GET['priceSignValue'];
        
        $data_stok = $this->modelDataStok->dataStokFgFilterExport($idKategori, $stokSign, $stokValue, $priceSign, $priceSignValue);
        
        $i = 2;
        foreach ($data_stok->result() as $row) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $i - 1)->setCellValue('B' . $i, $row->id_produk)->setCellValue('C' . $i, $row->nama_produk)->setCellValue('D' . $i, $row->kategori)->setCellValue('E' . $i, $row->stok)->setCellValue('F' . $i, $row->harga);
            $i++;
        }
        
         //set title pada sheet (me rename nama sheet)
		 $objPHPExcel->getActiveSheet()->setTitle('Sheet 1');
        
		 // Set document properties
		 $objPHPExcel->getProperties()->setCreator("Rifal")->setLastModifiedBy("Rifal")->setTitle("TukuWebsite | Simple PSB System")->setSubject("TukuWebsite | Simple PSB System")->setDescription("Export Data")->setKeywords("office 2007 openxml php")->setCategory("Data SO");
		 
		 
		 //sesuaikan headernya 
		 header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
		 header("Cache-Control: no-store, no-cache, must-revalidate");
		 header("Cache-Control: post-check=0, pre-check=0", false);
		 header("Pragma: no-cache");
		 header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		 //ubah nama file saat diunduh
		 header('Content-Disposition: attachment;filename=Data Stok Gudang' . date('d/m/y') . '.xlsx');
		 //unduh file
		 $writer = IOFactory::createWriter($objPHPExcel, 'Xlsx');
		 $writer->save('php://output');
		 exit;
    }
    
    function export_excel()
    {
        $this->load->library("excel/PHPExcel");
        
        $objPHPExcel = new PHPExcel();
        
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'No')->setCellValue('B1', 'SKU')->setCellValue('C1', 'Nama Bahan')->setCellValue('D1', 'Kategori')->setCellValue('E1', 'Last Stok')->setCellValue('F1', 'Satuan')->setCellValue('G1', 'Harga');
        $data_stok = $this->model1->data_stok_all();
        
        $i = 2;
        foreach ($data_stok->result() as $row) {
            $objPHPExcel->getActiveSheet()->setCellValue('A' . $i, $i - 1)->setCellValue('B' . $i, $row->sku)->setCellValue('C' . $i, $row->nama_bahan)->setCellValue('D' . $i, $row->kategori)->setCellValue('E' . $i, $row->stok)->setCellValue('F' . $i, $row->satuan)->setCellValue('G' . $i, $row->harga);
            $i++;
        }
        
        //set title pada sheet (me rename nama sheet)
        $objPHPExcel->getActiveSheet()->setTitle('Sheet 1');
        
        // Set document properties
        $objPHPExcel->getProperties()->setCreator("Rifal")->setLastModifiedBy("Rifal")->setTitle("TukuWebsite | Simple PSB System")->setSubject("TukuWebsite | Simple PSB System")->setDescription("Export Data")->setKeywords("office 2007 openxml php")->setCategory("Data SO");
        
        //mulai menyimpan excel format xlsx, kalau ingin xls ganti Excel2007 menjadi Excel5          
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
        
        //sesuaikan headernya 
        header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
        header("Cache-Control: no-store, no-cache, must-revalidate");
        header("Cache-Control: post-check=0, pre-check=0", false);
        header("Pragma: no-cache");
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        //ubah nama file saat diunduh
        header('Content-Disposition: attachment;filename=ExportData.xlsx');
        //unduh file
        $objWriter->save("php://output");
        
    }
    
    function datatablesStokFg()
    {
        $draw   = $_REQUEST['draw'];
        $length = $_REQUEST['length'];
        $start  = $_REQUEST['start'];
        $search = $_REQUEST['search']["value"];
        
        $total                  = $this->modelDataStok->totalProdukActive();
        $output                 = array();
        $output['draw']         = $draw;
        $output['recordsTotal'] = $output['recordsFiltered'] = $total;
        $output['data']         = array();
        
        if ($search != "") {
            $query                  = $this->modelDataStok->dataStokFg($length, $start, $search);
            $output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
        } else {
            $query = $this->modelDataStok->dataStokFg($length, $start, $search);
        }
        
        $nomor_urut = $start + 1;
        foreach ($query->result_array() as $dt) {
            $output['data'][] = array(
                $nomor_urut,
                $dt['id_produk'],
                $dt['nama_produk'],
                $dt['kategori'],
                number_format($dt['stok'], '0', ',', ''),
                number_format($dt['harga'], '0', ',', '.')
            );
            $nomor_urut++;
        }
        
        echo json_encode($output);
    }
    
    function datatablesStokFgFilter()
    {
        $idKategori     = $_POST['idKategori'];
        $stokSign       = $_POST['stokSign'];
        $stokValue      = $_POST['stokValue'];
        $priceSign      = $_POST['priceSign'];
        $priceSignValue = $_POST['priceSignValue'];
        
        $draw   = $_REQUEST['draw'];
        $length = $_REQUEST['length'];
        $start  = $_REQUEST['start'];
        $search = $_REQUEST['search']["value"];
        
        $total                  = $this->modelDataStok->totalProdukActivefilter($idKategori, $stokSign, $stokValue, $priceSign, $priceSignValue);
        $output                 = array();
        $output['draw']         = $draw;
        $output['recordsTotal'] = $output['recordsFiltered'] = $total;
        $output['data']         = array();
        
        if ($search != "") {
            $query                  = $this->modelDataStok->dataStokFgFilter($length, $start, $search, $idKategori, $stokSign, $stokValue, $priceSign, $priceSignValue);
            $output['recordsTotal'] = $output['recordsFiltered'] = $query->num_rows();
        } else {
            $query = $this->modelDataStok->dataStokFgFilter($length, $start, $search, $idKategori, $stokSign, $stokValue, $priceSign, $priceSignValue);
        }
        
        $nomor_urut = $start + 1;
        foreach ($query->result_array() as $dt) {
            $output['data'][] = array(
                $nomor_urut,
                $dt['id_produk'],
                $dt['nama_produk'],
                $dt['kategori'],
                number_format($dt['stok'], '0', ',', ''),
                number_format($dt['harga'], '0', ',', '.')
            );
            $nomor_urut++;
        }
        
        echo json_encode($output);
    }
    
    function dataStokFgFilter()
    {        
        $data['idKategori']     = $_POST['idKategori'];
        $data['stokSign']       = $_POST['stokSign'];
        $data['stokValue']      = $_POST['stokValue'];
        $data['priceSign']      = $_POST['priceSign'];
        $data['priceSignValue'] = $_POST['priceSignValue'];
        
        $this->load->view("data_stok/dataStokFgFilter", $data);
    }
    
    function buttonExportFg()
    {
        $data['idKategori']     = $_POST['idKategori'];
        $data['stokSign']       = $_POST['stokSign'];
        $data['stokValue']      = $_POST['stokValue'];
        $data['priceSign']      = $_POST['priceSign'];
        $data['priceSignValue'] = $_POST['priceSignValue'];
        $this->load->view("data_stok/buttonExportFg", $data);
    }
    
    function exportPdf()
    {
        $pdf = new FPDF('P', 'mm', 'A4');
        
        $pdf->AddPage();
        // setting jenis font yang akan digunakan
        $pdf->SetFont('Arial', 'B', 16);
        // mencetak string 
        $pdf->Cell(190, 7, 'LAPORAN DATA STOK', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(190, 7, 'GUDANG', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(190, 7, 'Periode ' . date('d M Y'), 0, 1, 'C');
        
        //add space
        $pdf->Cell(10, 7, '', 0, 1);
        $pdf->SetFont('Arial', 'B', 10);
        $pdf->Cell(10, 6, 'No', 1, 0);
        $pdf->Cell(30, 6, 'SKU', 1, 0);
        $pdf->Cell(60, 6, 'Nama Produk', 1, 0);
        $pdf->Cell(40, 6, 'Kategori', 1, 0);
        $pdf->Cell(20, 6, 'Last Stok', 1, 0);
        $pdf->Cell(30, 6, 'Harga Beli', 1, 1);
        $pdf->SetFont('Arial', '', 10);
        
        $dataStok = $this->modelDataStok->dataStokFgAll()->result();
        
        $i = 1;
        foreach ($dataStok as $row) {
            $pdf->Cell(10, 6, $i, 1, 0);
            $pdf->Cell(30, 6, $row->id_produk, 1, 0);
            $pdf->Cell(60, 6, $row->nama_produk, 1, 0);
            $pdf->Cell(40, 6, $row->kategori . '-' . $row->kategori_level_1 . '-' . $row->kategori_3, 1, 0);
            $pdf->Cell(20, 6, $row->stok, 1, 0);
            $pdf->Cell(30, 6, number_format($row->harga, '0', ',', '.'), 1, 1);
            $i++;
        }
        
        $pdf->Output();
    }
    
    function exportPdfFilter()
    {
        $pdf = new FPDF('P', 'mm', 'A4');
        
        $pdf->AddPage();
        // setting jenis font yang akan digunakan
        $pdf->SetFont('Arial', 'B', 16);
        // mencetak string 
        $pdf->Cell(190, 7, 'LAPORAN DATA STOK', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(190, 7, 'GUDANG', 0, 1, 'C');
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(190, 7, 'Periode ' . date('d M Y'), 0, 1, 'C');
        
        //add space
        $pdf->Cell(10, 7, '', 0, 1);
        $pdf->SetFont('Arial', 'B', 10);
        $pdf->Cell(10, 6, 'No', 1, 0);
        $pdf->Cell(30, 6, 'SKU', 1, 0);
        $pdf->Cell(60, 6, 'Nama Produk', 1, 0);
        $pdf->Cell(40, 6, 'Kategori', 1, 0);
        $pdf->Cell(20, 6, 'Last Stok', 1, 0);
        $pdf->Cell(30, 6, 'Harga Beli', 1, 1);
        $pdf->SetFont('Arial', '', 10);
        
        $idKategori     = $_GET['idKategori'];
        $subkategori    = $_GET['subkategori'];
        $subSubKategori = $_GET['subSubKategori'];
        $stokSign       = $_GET['stokSign'];
        $stokValue      = $_GET['stokValue'];
        $priceSign      = $_GET['priceSign'];
        $priceSignValue = $_GET['priceSignValue'];
        
        $dataStok = $this->modelDataStok->dataStokFgFilterExport($idKategori, $subkategori, $subSubKategori, $stokSign, $stokValue, $priceSign, $priceSignValue)->result();
        
        $i = 1;
        foreach ($dataStok as $row) {
            $pdf->Cell(10, 6, $i, 1, 0);
            $pdf->Cell(30, 6, $row->id_produk, 1, 0);
            $pdf->Cell(60, 6, $row->nama_produk, 1, 0);
            $pdf->Cell(40, 6, $row->kategori . '-' . $row->kategori_level_1 . '-' . $row->kategori_3, 1, 0);
            $pdf->Cell(20, 6, $row->stok, 1, 0);
            $pdf->Cell(30, 6, number_format($row->harga, '0', ',', '.'), 1, 1);
            $i++;
        }
        
        $pdf->Output();
    }
    
}
