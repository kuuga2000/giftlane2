<?php
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#auther: Gaurav patil
#data: 02 July 2013
*/

class ModelCatalogOptionPersonalize extends Model {
	
   /**
	* Function to get all personalise questions
	* param: null
	* return: questions array
	*/
	public function getOptionCategory($productId) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_options_new  WHERE product_id = ".(int)$productId." ");
		return $query->rows;
	}
	
	public function getOptionAllAns($strCatType= '',$strCount = '') {
		
		$strWhere  = " Where o.question_id IN ('1','2','3')";
		
		if($strCount != "")
		{
			$strQ = "SELECT count(*) FROM " . DB_PREFIX . "personalize_answer  o LEFT JOIN " . DB_PREFIX . "personalize_question od ON (o.question_id = od.question_id) $strWhere ";
		}
		else	
			$strQ = "SELECT * FROM " . DB_PREFIX . "personalize_answer o LEFT JOIN " . DB_PREFIX . "personalize_question od ON (o.question_id = od.question_id)   $strWhere ";
			
		$query = $this->db->query($strQ);
		return $query->rows;
	}
	public function getOptionAnsExists($strCatName,$strCatType,$intOptionId= '') 
	{
		$strWhere = "";
		if($intOptionId)
		{
			$strWhere = "AND answer_id != '$intOptionId'";		
		}
				
		if($strCatName && $strCatType)
		{
			$strQ = "SELECT count(*) as cnt FROM " . DB_PREFIX . "personalize_answer  WHERE question_id = '$strCatType' AND answer = '$strCatName'  $strWhere ";
			$query = $this->db->query($strQ);
			return $query->row['cnt'];
		}
		else
		{
			return false;
		}
		 
		

	}
	
	
	public function getTotalOptionsCategory($data) {
		if(is_array($data))
		{
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "oc_option_category  WHERE type = ".$strCatType." ");
		return $query->rows;
			
		}
	}
	public function addOptionAns($data) {
		$created= date('Y-m-d H:i:s');
		$this->db->query("INSERT INTO `" . DB_PREFIX . "personalize_answer` SET question_id  = '" . (int)$data['type'] . "', status = '" . $this->db->escape($data['status']) . "', answer = '" . $data['option_name'] . "', created = '".$created."'");
		
		$option_id = $this->db->getLastId();
	}
	
	public function editOptionAns($option_id, $data) {
		$this->db->query("UPDATE `" . DB_PREFIX . "personalize_answer` SET question_id = '" . (int)$data['type'] . "', status = '" . $this->db->escape($data['status']) . "', answer = '" . $data['option_name'] . "' WHERE answer_id = '" . (int)$option_id . "'");
		
	}
	
	public function deleteOptionAns($option_id) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "personalize_answer` WHERE answer_id = '" . (int)$option_id . "'");
	}
	
	public function getOptionAnsValue($option_id) {
		
		
		$option_value_data = array();
		$strQOption = "SELECT * FROM " . DB_PREFIX . "personalize_answer WHERE answer_id = '" . (int)$option_id . "'";
		$option_value_query = $this->db->query($strQOption);
		
		
		return $option_value_query->rows;
	}
	
	public function getQuestionesValue() {
		
		$strWhere  = " Where question_id IN ('1','2','3')";
		$option_value_data = array();
		$strQOption = "SELECT * FROM " . DB_PREFIX . "personalize_question" .$strWhere;
		$option_value_query = $this->db->query($strQOption);
		
		return $option_value_query->rows;
	}
}
?>