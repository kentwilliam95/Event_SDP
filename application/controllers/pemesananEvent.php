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
		$this->load->view("Pemesanan_Event");
	}
	
	function popCustom()
	{
		
	}
}
?>