<?php

class Loan_model extends CI_Model
{
   // function Loan_model(){
    public function __construct() {
        parent::__construct();
    }

    function newLoan()
    {
        $data = array(
            'qualifyingCreditScore' => null,
            'createAt' => date('Y-m-d H:i:s')
        );
        $this->db->insert('loans', $data);
		//$this->newLoanbackup();
        return $this->db->insert_id();
    }
	/* function newLoanbackup($loanId)
    {
        $data = array(
            'id' => $loanId,
            'qualifyingCreditScore' => null,
            'createAt' => date('Y-m-d H:i:s')
        );
        $this->db->insert('loansbackup', $data);
       // return $this->db->insert_id();
    } */
    function getBorrowers($loanId){
        $this->db->select('*');
        $this->db->from('borrowers');
        $this->db->where('loanId', $loanId);
        $data = $this->db->get();
        return $data->result_array();
    }
    function getLoan($loanId)
    {
        $this->db->select('*');
        $this->db->from('loans');
        $this->db->where('id', $loanId);
        $loan = $this->db->get()->row_array();   
        if($loan){     
            $data = array(
                'loanId' => $loan['id'],
                'qualifyingCreditScore' => $loan['qualifyingCreditScore'],
                'preApprovalCode' => $loan['preApprovalCode'],
                'stateId' => $loan['stateId'],
                'totalIncome' => (Double)$loan['totalIncome'],
                'totalDebts' => (Double)$loan['totalDebts'],
                'updateAt' => $loan['updateAt']
            );
            // $data=$loan;
            $data['borrowers']=$this->getBorrowers($loanId);
            $data['incomes']=$this->getIncomes($loanId);
            $data['debts']=$this->getDebits($loanId);
            $data['loanOptions']=$this->getLoanOptions($loanId);

            return $data;
        }
        else{
            return array();
        }

    }
    function getLoanOptions($loanId){
        $this->db->select('*');
        $this->db->from('loan_options');
        $this->db->where('loanId', $loanId);
        $loanOptions = $this->db->get()->result_array();
        $data = array();
        foreach($loanOptions as $loanOption) {
            
                        $subData = array(
                            'loanId' => $loanOption['loanId'],
                            'optionNo' => (Int)$loanOption['optionNo'],
                            'salesPrice' =>(Double)$loanOption['salesPrice'],
                            'loanMode' => (Boolean)$loanOption['loanMode'],
                            'loanType' => (Int)$loanOption['loanType'],
                            'downPayment' => (Double)$loanOption['downPayment'],
                            'miType' => (Int)$loanOption['miType'],
                            'firstMortgage'=>array(
                                'rate'=>(Double)$loanOption['firstMortgageRate'],
                                'points'=>(Double)$loanOption['firstMortgagePoints'],
                                'term'=>$loanOption['firstMortgageTerm'],
                                'loanAmount'=>(Double)$loanOption['firstMortgageLoanAmount'],
                                'loanBaseAmount'=>(Double)$loanOption['firstMortgageLoanBaseAmount'],
                                'piti'=>(Double)$loanOption['firstMortgagePiti'],
                                'pAndI'=>(Double)$loanOption['firstMortgagePAndI'],
                            ),                           
                            'tax' => (Double)$loanOption['tax'],
                            'ins' => (Double)$loanOption['ins'],
                            'hoa' => (Double)$loanOption['hoa'],
                            'mi' => (Double)$loanOption['mi'],
                            'taxVerified' => (Boolean)$loanOption['taxVerified'],
                            'insVerified' => (Boolean)$loanOption['insVerified'],
                            'hoaVerified' => (Boolean)$loanOption['hoaVerified'],
                            'miVerified' => (Boolean)$loanOption['miVerified'],
                            'other' => (Double)$loanOption['other'],
                            'front' => (Double)$loanOption['front'],
                            'back' => (Double)$loanOption['back'],
                            'dti' => (Double)$loanOption['dti'],
                            'ltv' => (Double)$loanOption['ltv'],
                            'cltv' => (Double)$loanOption['cltv'],
                            'secondMortgage'=>array(
                                'rate'=>(Double)$loanOption['secondMortgageRate'],
                                'points'=>(Double)$loanOption['secondMortgagePoints'],
                                'term'=>(Double)$loanOption['secondMortgageTerm'],
                                'loanAmount'=>(Double)$loanOption['secondMortgageLoanAmount'],
                                'loanBaseAmount'=>(Double)$loanOption['secondMortgageLoanBaseAmount'],
                                'piti'=>(Double)$loanOption['secondMortgagePiti'],
                                'pAndI'=>(Double)$loanOption['secondMortgagePAndI'],
                            ),                            
                            'firstAndSecondPiti' => $loanOption['firstAndSecondPiti'],
                            'prePaids'=>array(
                                'monthsOfTax'=>$loanOption['monthsOfTax'],
                                'monthsOfTaxAmount'=>(Double)$loanOption['monthsOfTaxAmount'],
                                'monthsOfInsurance'=>$loanOption['monthsOfInsurance'],
                                'monthsOfInsuranceAmount'=>(Double)$loanOption['monthsOfInsuranceAmount'],
                                'daysOfInterest'=>$loanOption['daysOfInterest'],
                                'daysOfInterestAmount'=>(Double)$loanOption['daysOfInterestAmount'],
                                'totalPrePaids'=>(Double)$loanOption['totalPrePaids'],
                            ), 
                            'credits'=>array(
                                'credit1Name'=>$loanOption['credit1Name'],
                                'credit1Amount'=>(Double)$loanOption['credit1Amount'],
                                'credit2Name'=>$loanOption['credit2Name'],
                                'credit2Amount'=>(Double)$loanOption['credit2Amount'],
                                'credit3Name'=>$loanOption['credit3Name'],
                                'credit3Amount'=>(Double)$loanOption['credit3Amount'],
                                'credit4Name'=>$loanOption['credit4Name'],
                                'credit4Amount'=>(Double)$loanOption['credit4Amount'],
                                'totalCredits'=>$loanOption['totalCredits']
                                
                            ),           
                            'totalClosingCosts' => (Double)$loanOption['totalClosingCosts'],
                            'cashToClose' => (Double)$loanOption['cashToClose'],
                            'apr' => (Double)$loanOption['apr'],
                            'expiry' => $loanOption['expiry']
                        );
                        $this->db->select('*');
                        $this->db->from('rl_loan_option_closing_cost');
                        $this->db->where('loanId', $loanId);
                        $this->db->where('loanOptionId', $loanOption['optionNo']);                        
                        $closingCosts = $this->db->get()->result_array();
                        $subData['closingCosts'] = [];
                        foreach( $closingCosts as $clsCost){
                            $c=array(
                                'loanId' => $clsCost['loanId'],
                                'loanOptionId' => $clsCost['loanOptionId'],
                                'rowNo' => $clsCost['rowNo'],
                                'name' => $clsCost['name'],
                                'type' => $clsCost['type'],
                                'mode' => $clsCost['mode'],
                                'value' => (Double)$clsCost['value'],
                                'percentage' => (Double)$clsCost['percentage'],
                                'isApr'=> (Boolean)$clsCost['isApr'],
                                'isVisible'=> (Boolean)$clsCost['isVisible']
                            );
                            $subData['closingCosts'][]=$c;
                    }                                                
                       array_push($data,$subData);
                    }



        // foreach ($loanOptions as $loanOption) {
        //     $data = array(
        //         'loanId' => $post['loanId'],
        //         'loanOptionId' => $loanOption['optionNo'],
        //         'rowNo' => $closingCost['rowNo'],
        //         'name' => $closingCost['name'],
        //         'type' => $closingCost['type'],
        //         'mode' => $closingCost['mode'],
        //         'value' => $closingCost['value'],
        //         'percentage' => $closingCost['percentage']
        //     );
        //     $this->db->insert('rl_loan_option_closing_cost', $data);
        // }
        return  $data;
    }
    function getDebits($loanId){
        $this->db->select('*');
        $this->db->from('debits');
        $this->db->where('loanId', $loanId);
        $data = $this->db->get();
        return $data->result_array();
    }
    function getIncomes($loanId){
        $this->db->select('*');
        $this->db->from('incomes');
        $this->db->where('loanId', $loanId);
        $data = $this->db->get();
        return $data->result_array();
    }
   

    function saveLoan($post)
    {

        $data = array(
            'qualifyingCreditScore' => $post['qualifyingCreditScore'],
            'preApprovalCode' => $post['preApprovalCode'],
            'stateId' => $post['stateId'],
            'totalIncome' => $post['totalIncome'],
            'totalDebts' => $post['totalDebts'],
            'updateAt' => date('Y-m-d H:i:s')
        );
        $this->db->where('id', $post['loanId']);
        $response = $this->db->update('loans', $data);
		
		
		$d = array(
			'loanId' => $post['loanId'],
            'qualifyingCreditScore' => $post['qualifyingCreditScore'],
            'preApprovalCode' => $post['preApprovalCode'],
            'stateId' => $post['stateId'],
            'totalIncome' => $post['totalIncome'],
            'totalDebts' => $post['totalDebts'],
            'createAt' => date('Y-m-d H:i:s'),
            'updateAt' => date('Y-m-d H:i:s')
			
        );
        $this->db->insert('loansbackup', $d);
		
		$this->db->select('id');
		$this->db->where('loanId', $post['loanId']);
		$q = $this->db->get('borrowers');
		// if id is unique, we want to return just one row
		$data = array_shift($q->result_array());

         $id=$data['id'];
		
        // if ($post['borrowers'] && empty($post['borrowers'])) {
            $this->db->where('loanId', $post['loanId']);
            $this->db->delete('borrowers');
        // }

        if ($post['borrowers']) {
            foreach ($post['borrowers'] as $borrower) {
                $data = array(
					'id' => $id,
                    'loanId' => $post['loanId'],
                    'borrowerId' => $borrower['borrowerId'],
                    'name' => $borrower['name'],
                    'email' => $borrower['email'],
                    'phone' => $borrower['phone'],
                    'creditScore' => $borrower['creditScore'],
                    'type' => $borrower['type'],
                    'isActive' => $borrower['isActive'],
                    'createdAt' => date('Y-m-d H:i:s')
                );
                $this->db->insert('borrowers', $data);
				//$id++;
            }
        }
		
		$this->db->select('id');
		$this->db->where('loanId', $post['loanId']);
		$q = $this->db->get('borrowers');
		// if id is unique, we want to return just one row
		$data = array_shift($q->result_array());

         $id=$data['id'];
		
		$this->db->where('loanId', $post['loanId']);
        $this->db->delete('borrowershistory');
		
		if ($post['borrowers']) {
            foreach ($post['borrowers'] as $borrower) {
                $data = array(
					'id' => $id,
                    'loanId' => $post['loanId'],
                    'borrowerId' => $borrower['borrowerId'],
                    'name' => $borrower['name'],
                    'email' => $borrower['email'],
                    'phone' => $borrower['phone'],
                    'creditScore' => $borrower['creditScore'],
                    'type' => $borrower['type'],
                    'isActive' => $borrower['isActive'],
                    'createdAt' => date('Y-m-d H:i:s')
                );
                $this->db->insert('borrowershistory', $data);
				//$id++;
            }
        }

        // if ($post['incomes'] && empty($post['incomes'])) {
            $this->db->where('loanId', $post['loanId']);
            $this->db->delete('incomes');
        // }

        if ($post['incomes']) {
            foreach ($post['incomes'] as $income) {
                $data = array(
                    'loanId' => $post['loanId'],
                    'borrowerId' => $income['borrowerId'],
                    'incomeSource' => $income['incomeSource'],
                    'frequency' => $income['frequency'],
                    'amount' => $income['amount'],
                    'isActive' => $income['isActive'],
                    'createdAt' => date('Y-m-d H:i:s')
                );
                $this->db->insert('incomes', $data);
            }
        }

        // if ($post['debts'] && empty($post['debts'])) {
            $this->db->where('loanId', $post['loanId']);
            $this->db->delete('debits');
        // }

        if ($post['debts']) {
            foreach ($post['debts'] as $debit) {
                $data = array(
                    'loanId' => $post['loanId'],
                    'borrowerId' => $debit['borrowerId'],
                    'description' => $debit['description'],
                    'frequency' => $debit['frequency'],
                    'amount' => $debit['amount'],
                    'isActive' => $debit['isActive'],
                    'createdAt' => date('Y-m-d H:i:s')
                );
                $this->db->insert('debits', $data);
            }
        }

        $currentLoanOption = $this->getCurrentLoanOption($post['loanId']);
        if ($currentLoanOption) {
            $this->db->where('loanId', $post['loanId']);
            $this->db->delete('loan_options');


            $this->db->where('loanId', $post['loanId']);
            $this->db->delete('rl_loan_option_closing_cost');
        }

        $loanOptions = $post['loanOptions'];

        foreach($loanOptions as $loanOption) {

            $data = array(
                'loanId' => $post['loanId'],
                'optionNo' => $loanOption['optionNo'],
                'salesPrice' => $loanOption['salesPrice'],
                'loanMode' => $loanOption['loanMode'],
                'loanType' => $loanOption['loanType'],
                'downPayment' => $loanOption['downPayment'],
                'miType' => $loanOption['miType'],
                'firstMortgageRate' => $loanOption['firstMortgage']['rate'],
                'firstMortgagePoints' => $loanOption['firstMortgage']['points'],
                'firstMortgageTerm' => $loanOption['firstMortgage']['term'],
                'firstMortgageLoanAmount' => $loanOption['firstMortgage']['loanAmount'],
                'firstMortgageLoanBaseAmount' => $loanOption['firstMortgage']['loanBaseAmount'],
                'firstMortgagePiti' => $loanOption['firstMortgage']['piti'],
                'firstMortgagePAndI' => $loanOption['firstMortgage']['pAndI'],
                'tax' => $loanOption['tax'],
                'ins' => $loanOption['ins'],
                'hoa' => $loanOption['hoa'],
                'mi' => $loanOption['mi'],
                'taxVerified' => $loanOption['taxVerified'],
                'insVerified' => $loanOption['insVerified'],
                'hoaVerified' => $loanOption['hoaVerified'],
                'miVerified' => $loanOption['miVerified'],
                'other' => $loanOption['other'],
                'front' => $loanOption['front'],
                'back' => $loanOption['back'],
                'dti' => $loanOption['dti'],
                'ltv' => $loanOption['ltv'],
                'cltv' => $loanOption['cltv'],
                'secondMortgageRate' => $loanOption['secondMortgage']['rate'],
                'secondMortgagePoints' => $loanOption['secondMortgage']['points'],
                'secondMortgageTerm' => $loanOption['secondMortgage']['term'],
                'secondMortgageLoanAmount' => $loanOption['secondMortgage']['loanAmount'],
                'secondMortgageLoanBaseAmount' => $loanOption['secondMortgage']['loanBaseAmount'],
                'secondMortgagePiti' => $loanOption['secondMortgage']['piti'],
                'secondMortgagePAndI' => $loanOption['secondMortgage']['pAndI'],
                'firstAndSecondPiti' => $loanOption['firstAndSecondPiti'],
                'monthsOfTax' => $loanOption['prePaids']['monthsOfTax'],
                'monthsOfTaxAmount' => $loanOption['prePaids']['monthsOfTaxAmount'],
                'monthsOfInsurance' => $loanOption['prePaids']['monthsOfInsurance'],
                'monthsOfInsuranceAmount' => $loanOption['prePaids']['monthsOfInsuranceAmount'],
                'daysOfInterest' => $loanOption['prePaids']['daysOfInterest'],
                'daysOfInterestAmount' => $loanOption['prePaids']['daysOfInterestAmount'],
                'totalPrePaids' => $loanOption['prePaids']['totalPrePaids'],
                'credit1Name' => $loanOption['credits']['credit1Name'],
                'credit1Amount' => $loanOption['credits']['credit1Amount'],
                'credit2Name' => $loanOption['credits']['credit2Name'],
                'credit2Amount' => $loanOption['credits']['credit2Amount'],
                'credit3Name' => $loanOption['credits']['credit3Name'],
                'credit3Amount' => $loanOption['credits']['credit3Amount'],
                'credit4Name' => $loanOption['credits']['credit4Name'],
                'credit4Amount' => $loanOption['credits']['credit4Amount'],
                'totalCredits' => $loanOption['credits']['totalCredits'],
                'totalClosingCosts' => $loanOption['totalClosingCosts'],
                'cashToClose' => $loanOption['cashToClose'],
                'apr' => $loanOption['apr'],
                'expiry' => $loanOption['expiry']
            );

            $this->db->insert('loan_options', $data);
            $this->db->insert('loan_options_history', $data);


            foreach ($loanOption['closingCosts'] as $closingCost) {
                $data = array(
                    'loanId' => $post['loanId'],
                    'loanOptionId' => $loanOption['optionNo'],
                    'rowNo' => $closingCost['rowNo'],
                    'name' => $closingCost['name'],
                    'type' => $closingCost['type'],
                    'mode' => $closingCost['mode'],
                    'value' => $closingCost['value'],
                    'percentage' => $closingCost['percentage'],
                    'isApr'=> $closingCost['isApr'],
                    'isVisible'=> $closingCost['isVisible']
                );
                $this->db->insert('rl_loan_option_closing_cost', $data);
                $this->db->insert('rl_loan_option_closing_cost_history', $data);
               // echo "<pre>";print_r($data);exit;
            }
        }

        return $response;
    }

    function getCurrentLoanOption($loanId)
    {
        $this->db->select('*');
        $this->db->from('loan_options');
        $this->db->where('loanId', $loanId);
        $data = $this->db->get();
        return $data->row_array();
    }
}



?>