<?php
class pemesananEvent extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model("Model_basic");
		$this->load->helper(Array("url","form"));
		$this->load->dbforge();
		header('Access-Control-Allow-Origin: *');
	}
	function index()
	{
		$field = array(
			'id' => array(
				'type' => 'int',
				'constraint' => '5',
				'auto_increment' => TRUE
			),
			'nama' => array(
				'type' => 'VARCHAR',
				'constraint' => '20'
			),
		);
		
		$this->dbforge->add_key('id', TRUE);
		$this->dbforge->add_field($field);
		$this->dbforge->create_table('testest', TRUE);
		
		$this->load->view("Pemesanan_Event");
	}
}
?>