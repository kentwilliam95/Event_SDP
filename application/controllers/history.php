<?php 
class history extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model("Model_basic");
		$this->load->helper(Array("url","form"));
	}
	function index()
	{
		$HasilHistory=$this->Model_basic->getData("requestacara",null);
		$data["hasilhistory"] = Array();
		$hasil=array();
		$temp = array();
		$progress="";
		foreach($HasilHistory as $row)
		{
			if(date("Y-m-d") > $row->end_date)
			{
				$progress = "Finished";
			}
			else
			{
				$progress = "On Progress";
			}
			
			$temp = Array($row->nama_acara,$row->namapaket,$row->namavendor,$row->start_date,$row->end_date,$progress);
			Array_push($hasil,$temp);
			$temp = Array();
		}
		$data["hasilhistory"] = json_encode($hasil);
		$this->load->view("BackEnd/history", $data);
	}
}
?>