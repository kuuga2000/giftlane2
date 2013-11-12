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
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "personalize_answer WHERE question_id = 1 AND status='active' ORDER BY answer");
		
		return $query->rows;
	}
	
	/**	
	* Function to get all receipient of personalize questions
	* param: null
	* return: receipient array
	*/
	public function getAllReceipient() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "personalize_answer WHERE question_id = 2 AND status='active' ORDER BY answer");
		
		return $query->rows;
	}
	
	/**
	* Function to get all persoanlity of personalize questions
	* param: null
	* return: persoanlity array
	*/
	public function getAllPersonality() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "personalize_answer WHERE question_id = 3 AND status='active' ORDER BY answer");
		
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
	
	/**
	* Function to get all products on the basis of search criteria
	* param: filter for event, receipient, personality, gender, age, interest, techSavvy, wardrobe color and creativity, start and limit for pgination
	* return: product id's array
	*/
	public function filterProducts($event = '', $receipient = '', $personality = '',$gender = '',$age = '',$interest = '', $techSavvy = '', $wardrobeColor = '', $creativity = '', $page = '', $limit = '')
	{
			$sql = "SELECT DISTINCT(ppg.product_id) AS product_id FROM ". DB_PREFIX ."product_personalize_gift ppg LEFT JOIN ". DB_PREFIX ."product_to_category pc2 ON ppg.product_id=pc2.product_id LEFT JOIN ". DB_PREFIX ."category sc ON sc.category_id=pc2.category_id LEFT JOIN ". DB_PREFIX ."product p ON p.product_id = ppg.product_id  WHERE sc.status='1' AND p.date_available <= NOW()";
			
			if($event != '')
			{
				$sql .= " AND FIND_IN_SET('".$event."',events) ";
			}
			
			if($receipient != '')
			{
				$sql .= " AND FIND_IN_SET('".$receipient."',receipients)";
			}
			
			if($personality != '')
			{
				$sql .= " AND FIND_IN_SET('".$personality."',personality) ";
			}
			
			if($gender != '')
			{
				$sql .= " AND FIND_IN_SET('".$gender."',gender)";
			}
			
			if($age != '')
			{
				$sql .= " AND min_age <= ".(int)$age." AND max_age >= ".(int)$age." ";
			}
		    
			if($interest != '')
			{
				//$sql .= " AND interests LIKE '%".$interest."%' ";
				$allInterests = explode(',',$interest); 
				if(count($allInterests) > 0)
				{
					$sql .= " AND (";
					$count = 1;
					foreach($allInterests AS $interest )
					{
						if($count > 1)
						{
							$sql .= " OR ";
						}
						$sql .= "  interests LIKE '%".$interest."%' ";
						$count++;
					}
					$sql .= ")";
				}
			}
			
			if($techSavvy != '')
			{
				$sql .= " AND min_tech_savvy <= ".(int)$techSavvy." AND max_tech_savvy >= ".(int)$techSavvy." ";
			}
			
			if($wardrobeColor != '')
			{
				$sql .= " AND min_warddrobe_color <= ".(int)$wardrobeColor." AND max_warddrobe_color >= ".(int)$wardrobeColor." ";
			}
			
			if($creativity != '')
			{
				$sql .= " AND min_creativity_level <= ".(int)$creativity." AND max_creativity_level >= ".(int)$creativity." ";
			}
			
			if($page != '' && $limit != '')
			{
				$start = ((int)$page-1) * (int)$limit;
				$sql .= " LIMIT ".(int)$start." , ".(int)$limit." ";
			}
		
		$query = $this->db->query($sql);	
		return $query->rows;	
	}
	
	/**
	* Function to get count of available products on the basis of search criteria
	* param: filter for event, receipient, personality, gender, age, interest, techSavvy, wardrobe color and creativity
	* return: product count
	*/
	public function filterProductCount($event = '', $receipient = '', $personality = '',$gender = '',$age = '',$interest = '', $techSavvy = '', $wardrobeColor = '', $creativity = '')
	{
			$sql = "SELECT COUNT(DISTINCT(ppg.product_id)) AS `total` FROM ". DB_PREFIX ."product_personalize_gift ppg LEFT JOIN ". DB_PREFIX ."product_to_category pc2 ON ppg.product_id=pc2.product_id LEFT JOIN ". DB_PREFIX ."category sc ON sc.category_id=pc2.category_id LEFT JOIN ". DB_PREFIX ."product p ON p.product_id = ppg.product_id WHERE sc.status='1' AND p.date_available <= NOW()";
			
			
			if($event != '')
			{
				$sql .= " AND FIND_IN_SET('".$event."',events) ";
			}
			
			if($receipient != '')
			{
				$sql .= " AND FIND_IN_SET('".$receipient."',receipients)";
			}
			
			if($personality != '')
			{
				$sql .= " AND FIND_IN_SET('".$personality."',personality) ";
			}
			
			if($gender != '')
			{
				$sql .= " AND FIND_IN_SET('".$gender."',gender)";
			}
			
			
			/*if($event != '')
			{
				$sql .= " AND events LIKE '%".$event."%' ";
			}
			
			if($receipient != '')
			{
				$sql .= " AND receipients LIKE '%".$receipient."%' ";
			}
			
			if($personality != '')
			{
				$sql .= " AND personality LIKE '%".$personality."%' ";
			}
			
			if($gender != '')
			{
				$sql .= " AND gender LIKE '%".$gender."%' ";
			}*/
			
			if($age != '')
			{
				$sql .= " AND min_age <= ".(int)$age." AND max_age >= ".(int)$age." ";
			}
		    
			if($interest != '')
			{
				$allInterests = explode(',',$interest); 
				if(count($allInterests) > 0)
				{
					$sql .= " AND (";
					$count = 1;
					foreach($allInterests AS $interest )
					{
						if($count > 1)
						{
							$sql .= " OR ";
						}
						$sql .= "  interests LIKE '%".$interest."%' ";
						$count++;
					}
					$sql .= ")";
				}
			}
			
			if($techSavvy != '')
			{
				$sql .= " AND min_tech_savvy <= ".(int)$techSavvy." AND max_tech_savvy >= ".(int)$techSavvy." ";
			}
			
			if($wardrobeColor != '')
			{
				$sql .= " AND min_warddrobe_color <= ".(int)$wardrobeColor." AND max_warddrobe_color >= ".(int)$wardrobeColor." ";
			}
			
			if($creativity != '')
			{
				$sql .= " AND min_creativity_level <= ".(int)$creativity." AND max_creativity_level >= ".(int)$creativity." ";
			}

		$query = $this->db->query($sql);	
		return $query->row['total'];	
	}
}
?>