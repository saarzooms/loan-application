<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Settings extends CI_Controller {

	//function Settings(){
		 public function __construct() {
		parent::__construct();
		$this->load->model('Settings_model');
		$this->session->set_userdata('userId', 101);
	}

	public function getPrepaid()
	{
		$response = $this->Settings_model->getPrepaid();
		if($response)
			$data = array('status' => 200, 'data' => $response);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}

	public function savePrepaid()
	{
		$post = json_decode(file_get_contents('php://input'), true);

		$data = $this->Settings_model->savePrepaid($post);
		if($data)
			$data = array('status' => 200, 'data' => $data);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}

	public function getCredit()
	{
		$response = $this->Settings_model->getCredit();
		if($response)
			$data = array('status' => 200, 'data' => $response);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}

	public function saveCredit()
	{

		$post = json_decode(file_get_contents('php://input'), true);

		$data = $this->Settings_model->saveCredit($post);
		if($data)
			$data = array('status' => 200, 'data' => $data);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}

	public function getClosingCosts()
	{
		$response = $this->Settings_model->getClosingCosts();
		if($response)
			$data = array('status' => 200, 'data' => $response);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}

	public function saveClosingCosts()
	{
		$post = json_decode(file_get_contents('php://input'), true);

		$data = $this->Settings_model->saveClosingCosts($post);
		if($data)
			$data = array('status' => 200, 'data' => $data);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}
}
