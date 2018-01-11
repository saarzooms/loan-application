<?php

class Lookups_model extends CI_Model
{
    //function Lookups_model(){
    public function __construct() {
        parent::__construct();
    }

    function getStateRates()
    {
        $this->db->select('*');
        $this->db->from('states');
        $data = $this->db->get();
        return $data->result_array();
    }

    function getTitleInsurancePremium()
    {
        $this->db->select('*');
        $this->db->from('title_insurance_basic_premium_rates');
        $data = $this->db->get();
        return $data->result_array();
    }

    function getTitleInsuranceRange()
    {
        $this->db->select('*');
        $this->db->from('title_insurance_range');
        $data = $this->db->get();
        return $data->result_array();
    }

    function getBpmi(){
        $this->db->select('*');
        $this->db->from('bpmi');
        $data = $this->db->get();
        return $data->result_array();
    }
    function getBpmiAdjustments(){
        $this->db->select('*');
        $this->db->from('bpmi_adjustments');
        $data = $this->db->get();
        return $data->result_array();
    }
}

?>
