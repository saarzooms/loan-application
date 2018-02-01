<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lookups extends CI_Controller {

	//function Lookups(){
	public function __construct() {
		parent::__construct();
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
		$this->load->model('Lookups_model');
		$this->session->set_userdata('userId', 101);
	}

	public function getStateRates()
	{
		$premium = $this->Lookups_model->getStateRates();
		if($premium)
			$data = array('status' => 200, 'data' => $premium);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}

	public function getTitleInsurancePremium()
	{
		$premium = $this->Lookups_model->getTitleInsurancePremium();
		if($premium)
			$data = array('status' => 200, 'data' => $premium);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}

	public function getTitleInsuranceRange()
	{
		$range = $this->Lookups_model->getTitleInsuranceRange();
		if($range)
			$data = array('status' => 200, 'data' => $range);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}
	public function getBpmi()
	{
		$bpmi = $this->Lookups_model->getBpmi();
		if($bpmi)
			$data = array('status' => 200, 'data' => $bpmi);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}
	public function getBpmiAdjustments(){
		$bpmi = $this->Lookups_model->getBpmiAdjustments();
		if($bpmi)
			$data = array('status' => 200, 'data' => $bpmi);
		else
			$data = array('status' => 404, 'data' => null);

		echo json_encode($data);
	}

}
