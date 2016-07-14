<?php
class pemesananEvent extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model("Model_basic");
		$this->load->helper(Array("url","form"));
		header('Access-Control-Allow-Origin: *');
	}
	function index()
	{
		$data["EO"] = $this->Model_basic->getData("vendor",array("JenisVendor"=>"EO"));
		$data["MC"] = $this->Model_basic->getData("vendor",array("JenisVendor"=>"MC"));
		$data["ENT"] = $this->Model_basic->getData("vendor",array("JenisVendor"=>"Entertainm"));
		$data["FNB"] = $this->Model_basic->getData("vendor",array("JenisVendor"=>"FNB"));
		$data["DECOR"] = $this->Model_basic->getData("vendor",array("JenisVendor"=>"Decor"));
		$this->load->view("Pemesanan_Event",$data);
	}
	
	function InsertRequestAcara()
	{
		$namaacara = $this->input->post("NamaAcara");
		$startDate = $this->input->post("start_date");
		$endDate = $this->input->post("end_date");
		$namavendor = $this->input->post("NamaVendor");
		$namapaket = $this->input->post("NamaPaket");
		$MenuMakanan = $this->input->post("MenuMakanan");
		//$this->Model_basic->insertData("requestacara",Array("nama_acara"=>$namaacara,"namapaket"=>$namapaket,"namavendor"=>$namavendor,"start_date"=>$startDate,"end_date"=>$endDate));
		
		echo $namaacara.",".$startDate.",".$endDate.",".$namavendor.",".$namapaket.",".$MenuMakanan;
		$idPaketStandar =  $this->generateIdPaket();
		
	}
	function generateIdPaket()
	{
		$result = $this->Model_basic->query("select count(substr(IDPAKETSTANDAR,2)) as last from paketstandard where substr(IDPAKETSTANDAR,1,1)='S'");
		$result = $result[0]->last +1;
		$result = sprintf("%'.03d\n",$result);
		return 'S'.$result;
	}
}
?>