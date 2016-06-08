<?php 
class vendor extends CI_Controller
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
		$HasilVendor=$this->Model_basic->getData("vendor",null);
		$data["hasilvendor"] = Array();
		$hasil=array();$temp = array();
		foreach($HasilVendor as $row)
		{
			$temp = Array($row->IDVENDORACARA,$row->NAMAVENDORACARA,$row->ALAMATVENDORACARA,$row->NOTELPONVENDORACARA,$row->EMAILVENDORACARA,$row->JenisVendor,$row->Costum);
			Array_push($hasil,$temp);
			$temp = Array();
		}
		$data["hasilvendor"] = json_encode($hasil);
		$this->load->view("BackEnd/vendor",$data);
	}
	function deleteData()
	{
		$id=$this->input->post("id");
		$this->Model_basic->deleteData("vendor",Array("IDVENDORACARA"=>$id));
	}
	function updateData()
	{
		$nama = $this->input->post("nama");
		$jenis = $this->input->post("jenis");
		$alamat = $this->input->post("alamat");
		$email = $this->input->post("email");
		$notelp = $this->input->post("notelp");
		$costum = $this->input->post("costum");
		$id = $this->input->post("id");
		
		$this->Model_basic->updateData("vendor",Array("NAMAVENDORACARA"=>$nama,"JenisVendor"=>$jenis,"ALAMATVENDORACARA"=>$alamat,"EMAILVENDORACARA"=>$email,"NOTELPONVENDORACARA"=>$notelp,"Costum"=>$costum),Array("IDVENDORACARA" => $id));
		
		$HasilVendor=$this->Model_basic->getData("vendor",null);
		$hasil=array();$temp=array();
		foreach($HasilVendor as $row)
		{
			$temp = Array($row->IDVENDORACARA,$row->NAMAVENDORACARA,$row->ALAMATVENDORACARA,$row->NOTELPONVENDORACARA,$row->EMAILVENDORACARA,$row->JenisVendor,$row->Costum);
			Array_push($hasil,$temp);
			$temp = Array();
		}
		$data["hasilvendor"] = json_encode($hasil);
		echo $data["hasilvendor"];
		
	}
	function insertData()
	{
		$nama = $this->input->post("nama");
		$jenis = $this->input->post("jenis");
		$alamat = $this->input->post("alamat");
		$email = $this->input->post("email");
		$notelp = $this->input->post("notelp");
		$costum = $this->input->post("costum");
		
		$this->Model_basic->insertData("vendor",Array("IDVENDORACARA"=>$this->AutoGen(),"NAMAVENDORACARA"=>$nama,"JenisVendor"=>$jenis,"ALAMATVENDORACARA"=>$alamat,"EMAILVENDORACARA"=>$email,"NOTELPONVENDORACARA"=>$notelp,"Costum"=>$costum));
		
		$HasilVendor=$this->Model_basic->getData("vendor",null);
		$hasil=array();$temp=array();
		foreach($HasilVendor as $row)
		{
			$temp = Array($row->IDVENDORACARA,$row->NAMAVENDORACARA,$row->ALAMATVENDORACARA,$row->NOTELPONVENDORACARA,$row->EMAILVENDORACARA,$row->JenisVendor,$row->Costum);
			Array_push($hasil,$temp);
			$temp = Array();
		}
		$data["hasilvendor"] = json_encode($hasil);
		echo $data["hasilvendor"];
	}
	
	function AutoGen()
	{
		$temp = $this->Model_basic->query("select max(IDVENDORACARA) as IDVENDORACARA from vendor");
		if(empty($temp))
		{		
			RETURN	"0001";
		}
		$temp =$temp[0]->IDVENDORACARA+1; 
		return sprintf("%'.04d\n",$temp);
	}
}
?>