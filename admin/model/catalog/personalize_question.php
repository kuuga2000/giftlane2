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

class ModelCatalogPersonalizeQuestion extends Model {
	
   /**
	* Function to get all personalise questions
	* param: null
	* return: questions array
	*/
	public function getPersonalizeQuestions() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "personalize_question");
		
		return $query->rows;
	}
	
	/**
	* Function to get all events of personalize questions
	* param: null
	* return: event array
	*/
	public function getAllEvents() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "personalize_answer WHERE question_id = 1");
		
		return $query->rows;
	}
	
	/**
	* Function to get all receipient of personalize questions
	* param: null
	* return: receipient array
	*/
	public function getAllReceipient() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "personalize_answer WHERE question_id = 2");
		
		return $query->rows;
	}
	
	/**
	* Function to get all persoanlity of personalize questions
	* param: null
	* return: persoanlity array
	*/
	public function getAllPersonality() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "personalize_answer WHERE question_id = 3");
		
		return $query->rows;
	}
	
	/**
	* Function to get all interests of personalize questions
	* param: null
	* return: interests array
	*/
	public function getAllInterest() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "personalize_answer WHERE question_id = 6");
		
		return $query->rows;
	}
	/**
	* Function to get all answers of personalize questions for a product
	* param: product id
	* return: answers array
	*/
	public function getAnswers($productId)
	{
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_personalize_gift WHERE product_id = ".(int)$productId." ");
		
		return $query->rows;
	}
}
?>