<?php
class paketevent extends CI_Controller
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
		$temp = $this->Model_basic->getData("paketstandard",Array("NAMAPAKETSTANDAR"=>"paket1"));
		$hasil = array();
		foreach($temp as $row)
		{
			$pieces = explode(",", $row->IDMENUSTANDAR);
			foreach($pieces as $piece)
			{
				Array_push($hasil,Array($piece,"10000"));
			}	
		}
		$hasil = json_encode($hasil);
		$data["hasil"] = $hasil;
		$this->load->view("Paket_Event",$data);
	}
	
	function showpaket()
	{
		$asd = $this->input->post("id");
		
		$hasil = array();
		$temp = $this->Model_basic->getData("paketstandard",Array("NAMAPAKETSTANDAR"=>$asd));
		foreach($temp as $row)
		{
			$pieces = explode(",", $row->IDMENUSTANDAR);
			foreach($pieces as $piece)
			{
				Array_push($hasil,Array($piece,"10000"));
			}	
		}
		$hasil = json_encode($hasil);
		
		echo $hasil;
	}
}
?>