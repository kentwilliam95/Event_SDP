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
			Array_push($hasil,Array($row->nama_acara,$row->namapaket,$row->namavendor,$row->start_date,$row->end_date,"<input nomor=".$row->ID_requestAcara." id='okKlik' type='Button' value='OK'/>","<input type='Button' id='okCancel' value='Cancel' nomor=".$row->ID_requestAcara." />"));
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
	function Okeh()
	{
		$id = $this->input->post("id");
		$temp = $this->Model_basic->getData("requestAcara",Array("ID_requestAcara"=>$id));
		
		$namapaket = $temp[0]->namapaket;
		$paketStandard= $this->Model_basic->getData("paketstandard",Array("NAMAPAKETSTANDAR" => $namapaket));
		
		if(!empty($paketStandard))
		{
			$idStandard = $paketStandard[0]->IDPAKETSTANDAR;
			$idAcara = $this->Model_basic->query("select max(substr(IDACARA,3)) as maks from acara");
			$idAcara = $idAcara[0]->maks + 1;
			$hasil = "AD".sprintf("%'.03d\n", $idAcara);
			$this->Model_basic->insertData("acara",Array("IDACARA"=>$hasil,"IDPAKETSTANDAR"=>$idStandard,"IDCUSTOMPAKET"=>null,"NAMAACARA"=>$temp[0]->nama_acara,"JENISACARA"=>null,"KETACARA"=>null,"start_date"=>$temp[0]->start_date,"end_date"=>$temp[0]->end_date));
			$this->Model_basic->deleteData("requestAcara",Array("ID_requestAcara"=>$id));
		}
				
		$hasil = array();
		$temp = $this->Model_basic->getData("requestAcara",null);
		foreach($temp as $row)
		{
			Array_push($hasil,Array($row->nama_acara,$row->namapaket,$row->namavendor,$row->start_date,$row->end_date,"<input id='okKlik' type='Button' value='OK' nomor=".$row->ID_requestAcara." />","<input type='Button' id='okCancel' value='Cancel' nomor=".$row->ID_requestAcara." />"));
		}
		$hasil = json_encode($hasil);
		
		echo $hasil;
	}
	
}
?>