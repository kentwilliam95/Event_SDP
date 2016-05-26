<?php 
class vendor extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model("Model_basic");
		$this->load->helper(Array("url","form"));
	}
	function index()
	{
		$this->load->view("BackEnd/vendor");
	}
}
?>