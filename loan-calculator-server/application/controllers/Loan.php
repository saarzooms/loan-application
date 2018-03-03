<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Loan extends CI_Controller
{
	/* public function __construct() {
        parent::__construct();
		$this->load->model('Loan_model');
        $this->session->set_userdata('userId', 101);
    } */

	
   //function Loan(){
  public function __construct() {
        parent::__construct();
		header('Access-Control-Allow-Origin: *');
		header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        $this->load->model('Loan_model');
        $this->session->set_userdata('userId', 101);
    }

    public function newLoan()
    {
        $loanId = $this->Loan_model->newLoan();
       // $this->Loan_model->newLoanbackup($loanId);
        if ($loanId)
            $data = array('status' => 200, 'loanId' => $loanId);
        else
            $data = array('status' => 404, 'loanId' => null);

        echo json_encode($data);
    }

    public function getLoan($loanId)
    {
		$loanId=substr($loanId,40);
		$loanId=base64_decode($loanId);
        $loan = $this->Loan_model->getLoan($loanId);
        if ($loan)
            $data = array('status' => 200, 'data' => $loan);
        else
            $data = array('status' => 404, 'data' => null);

       echo json_encode($data);
    }

    public function saveLoan()
    {
        $post = json_decode(file_get_contents('php://input'), true);

        $response = $this->Loan_model->saveLoan($post);
        if ($response)
            $data = array('status' => 200, 'data' => $response);
        else
            $data = array('status' => 404, 'data' => null);

        echo json_encode($data);
    }
    public function shareLoan(){
        $post = json_decode(file_get_contents('php://input'), true);
        $to_email=$post['email'];
        $loanLink=$post['loanLink'];    
        $from_email = "ojithjo@gmail.com"; 
        //Load email library 
        $this->load->library('email');     
        $this->email->from($from_email, 'Loan Calculator'); 
        $this->email->to($to_email);
        $this->email->subject('Loan Calculator'); 
        $this->email->message('click the below link to goto your loan option '.$loanLink);    
        //Send mail 
        $response = $this->email->send();

        if ($response)
            $data = array('status' => 200, 'data' => $response);
        else
            $data = array('status' => 404, 'data' => null);

        echo json_encode($data);

    }
}
