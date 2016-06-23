<?php 
class adminevent extends CI_Controller
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
		$hasil = Array();
		$temp = $this->Model_basic->getData("requestAcara",null);
		foreach($temp as $row)
		{
			Array_push($hasil,Array($row->nama_acara,$row->namapaket,$row->namavendor,$row->start_date,$row->end_date,"<input id='okKlik' type='Button' value='OK'/>","<input type='Button' id='okCancel' value='Cancel' nomor=".$row->ID_requestAcara." />"));
		}
		$hasil = json_encode($hasil);
		$data["DataAcara"] = $hasil;
		
		$this->load->view("BackEnd/adminevent",$data);
	}
	function deleteData()
	{
		$id = $this->input->post("id");
		$this->Model_basic->deleteData("requestAcara",Array("ID_requestAcara"=>$id));
		
		$hasil = array();
		$temp = $this->Model_basic->getData("requestAcara",null);
		foreach($temp as $row)
		{
			Array_push($hasil,Array($row->nama_acara,$row->namapaket,$row->namavendor,$row->start_date,$row->end_date,"<input id='okKlik' type='Button' value='OK'/>","<input type='Button' id='okCancel' value='Cancel' nomor=".$row->ID_requestAcara." />"));
		}
		$hasil = json_encode($hasil);
		
		echo $hasil;
		
		
	}
	
}
?>