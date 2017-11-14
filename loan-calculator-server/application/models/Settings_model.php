<?php

class Settings_model extends CI_Model
{
    //function Settings_model(){
     public function __construct() {
        parent::__construct();
    }

    function savePrepaid($post)
    {

        $prePaid = $this->getPrepaid();

        if ($prePaid) {
            $data = array(
                'monthsOfTax' => $post['monthsOfTax'],
                'monthsOfInsurance' => $post['monthsOfInsurance'],
                'daysOfInterest' => $post['daysOfInterest']
            );
            $this->db->where('userId', $this->session->userdata('userId'));
            $response = $this->db->update('prepaids', $data);

        } else {
            $data = array(
                'monthsOfTax' => $post['monthsOfTax'],
                'monthsOfInsurance' => $post['monthsOfInsurance'],
                'daysOfInterest' => $post['daysOfInterest'],
                'userId' => $this->session->userdata('userId')
            );
            $response = $this->db->insert('prepaids', $data);
        }

        return $response;
    }

    function getPrepaid()
    {
        $this->db->select('*');
        $this->db->from('prepaids');
        $this->db->where('userId', $this->session->userdata('userId'));
        $data = $this->db->get();
        return $data->row_array();
    }

    function saveCredit($post)
    {

        $credit = $this->getCredit();
        if ($credit) {
            $data = array(
                'credit1Name' => $post['credit1Name'],
                'credit1Amount' => $post['credit1Amount'],
                'credit2Name' => $post['credit2Name'],
                'credit2Amount' => $post['credit2Amount'],
                'credit3Name' => $post['credit3Name'],
                'credit3Amount' => $post['credit3Amount'],
                'credit4Name' => $post['credit4Name'],
                'credit4Amount' => $post['credit4Amount']
            );
            $this->db->where('userId', $this->session->userdata('userId'));
            $response = $this->db->update('credits', $data);
        } else {
            $data = array(
                'credit1Name' => $post['credit1Name'],
                'credit1Amount' => $post['credit1Amount'],
                'credit2Name' => $post['credit2Name'],
                'credit2Amount' => $post['credit2Amount'],
                'credit3Name' => $post['credit3Name'],
                'credit3Amount' => $post['credit3Amount'],
                'credit4Name' => $post['credit4Name'],
                'credit4Amount' => $post['credit4Amount'],
                'userId' => $this->session->userdata('userId')
            );
            $response = $this->db->insert('credits', $data);
        }

        return $response;
    }

    function getCredit()
    {
        $this->db->select('*');
        $this->db->from('credits');
        $this->db->where('userId', $this->session->userdata('userId'));
        $data = $this->db->get();
        return $data->row_array();
    }

    function saveClosingCosts($post)
    {

        $closingCosts = $this->getClosingCosts();

        if ($closingCosts) {
            $this->db->where('userId', $this->session->userdata('userId'));
            $this->db->delete('closing_costs');
        }

        $array = $post;
        foreach($array as $index => $row) {
            $data = array(
                'userId' => $this->session->userdata('userId'),
                'rowNo' => $row['rowNo'],
                'name' => $row['name'],
                'type' => $row['type'],
                'mode' => $row['mode'],
                'value' => $row['value'],
                'percentage' => $row['percentage'],
                'isApr'=> $row['isApr']
            );

            $response = $this->db->insert('closing_costs', $data);
            if($index == (count($array) - 1)) {
                return $response;
            }
        }
    }

    function getClosingCosts()
    {
        $this->db->select('*');
        $this->db->from('closing_costs');
        $this->db->where('userId', $this->session->userdata('userId'));
        $data = $this->db->get()->result_array();
        $subData = [];
        foreach( $data as $clsCost){
            $c=array(
                'id' => $clsCost['id'],
                'userId' => $clsCost['userId'],
                'rowNo' => $clsCost['rowNo'],
                'name' => $clsCost['name'],
                'type' => $clsCost['type'],
                'mode' => $clsCost['mode'],
                'value' => (Double)$clsCost['value'],
                'percentage' => (Double)$clsCost['percentage'],
                'isApr'=> (Boolean)$clsCost['isApr']
            );
            $subData[]=$c;
    }     
        return $subData;
    }

}

?>