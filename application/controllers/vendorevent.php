<?php
class vendorevent extends CI_Controller
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
		$this->load->view("Vendor_Event");
	}
	
	function showpaket()
	{
		$asd = $this->input->post("id");
		
		$hasil = array();
		$temp = $this->Model_basic->getData("vendor",Array("JenisVendor"=>$asd));
		foreach($temp as $row)
		{
			Array_push($hasil,Array($row->NAMAVENDORACARA,$row->ALAMATVENDORACARA,$row->NOTELPONVENDORACARA,$row->EMAILVENDORACARA));
		}
		$hasil = json_encode($hasil);
		
		echo $hasil;
	}
}
?>