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

class ModelCatalogOptionCategory extends Model {
	
   /**
	* Function to get all personalise questions
	* param: null
	* return: questions array
	*/
	public function getOptionCategory($productId) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_options_new  WHERE product_id = ".(int)$productId." ");
		return $query->rows;
	}
	
	public function getOptionAllCategory($strCatType= '',$strCount = '') {
		
		$strWhere  = "";
		if($strCatType !="")
		{
			$strWhere = " WHERE type = '$strCatType'";
		}
		if($strCount != "")
		{
			$strQ = "SELECT count(*) FROM " . DB_PREFIX . "option_category  $strWhere ";
		}
		else	
			$strQ = "SELECT * FROM " . DB_PREFIX . "option_category   $strWhere ";
			
		$query = $this->db->query($strQ);
		return $query->rows;
	}
	public function getOptionCategoryExists($strCatName,$strCatType,$intOptionId= '') 
	{
		$strWhere = "";
		if($intOptionId)
		{
			$strWhere = "AND id != '$intOptionId'";		
		}
		if($strCatName && $strCatType)
		{
			$strQ = "SELECT count(*) as cnt FROM " . DB_PREFIX . "option_category  WHERE type = '$strCatType' AND name = '$strCatName'  $strWhere ";
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
	public function addOptionCategory($data) {
		$this->db->query("INSERT INTO `" . DB_PREFIX . "option_category` SET type = '" . $this->db->escape($data['type']) . "', status = '" . $this->db->escape($data['status']) . "', value = '" .  strtolower($this->db->escape($data['option_name'])) . "', name = '" . $data['option_name'] . "'");
		
		$option_id = $this->db->getLastId();
	}
	
	public function editOptionCategory($option_id, $data) {
		$this->db->query("UPDATE `" . DB_PREFIX . "option_category` SET type = '" . $this->db->escape($data['type']) . "', status = '" . $this->db->escape($data['status']) . "', value = '" . strtolower($this->db->escape($data['option_name'])) . "', name = '" . $data['option_name'] . "' WHERE id = '" . (int)$option_id . "'");

		
	}
	
	public function deleteOptionCategory($option_id) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "option_category` WHERE id = '" . (int)$option_id . "'");
	}
	
	public function getOptionCategoriesValue($option_id) {
		
		
		$option_value_data = array();
		$strQOption = "SELECT * FROM " . DB_PREFIX . "option_category WHERE id = '" . (int)$option_id . "'";
		$option_value_query = $this->db->query($strQOption);
		
		
		return $option_value_query->rows;
	}
}
?>