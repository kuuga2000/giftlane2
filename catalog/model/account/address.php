<?php
class ModelAccountAddress extends Model {
	
	public function addAddress($data) {
		//echo $this->db->escape($data['telephone']);exit;
		$this->db->query("INSERT INTO " . DB_PREFIX . "address SET customer_id = '" . (int)$this->customer->getId() . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', add_title = '" . $this->db->escape($data['title']) . "', company_id = '" . $this->db->escape(isset($data['company_id']) ? $data['company_id'] : '') . "', tax_id = '" . $this->db->escape(isset($data['tax_id']) ? $data['tax_id'] : '') . "', address_1 = '" . $this->db->escape($data['address1']) . "', address_2 = '" . $this->db->escape($data['address2']) . "', postcode = '" . $this->db->escape($data['postal_code']) . "', city = '" . $this->db->escape($data['shipping_city']) . "', zone_id = '" . (int)$data['province_id'] . "', country_id = '" . (int)$data['country_id'] . "'");
		
		$address_id = $this->db->getLastId();
		
		if (!empty($data['default'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "customer SET address_id = '" . (int)$address_id . "' WHERE customer_id = '" . (int)$this->customer->getId() . "'");
		}
		
		return $address_id;
	}
	
	public function editbillingAddress($address_id, $data) {
		
		if($address_id=='')
		{
			$this->db->query("INSERT INTO " . DB_PREFIX . "address SET customer_id = '" . (int)$this->customer->getId() . "', firstname = '" . $this->db->escape($data['billing_firstname']) . "', lastname = '" . $this->db->escape($data['billing_lastname']) . "', telephone = '" . $this->db->escape($data['billing_email']) . "', add_title = '" . $this->db->escape($data['billing_title']) . "', company_id = '" . $this->db->escape(isset($data['company_id']) ? $data['company_id'] : '') . "', tax_id = '" . $this->db->escape(isset($data['tax_id']) ? $data['tax_id'] : '') . "', address_1 = '" . $this->db->escape($data['billing_address1']) . "', address_2 = '" . $this->db->escape($data['billing_address2']) . "', postcode = '" . $this->db->escape($data['billing_postal_code']) . "', city = '" . $this->db->escape($data['billing_city']) . "', zone_id = '" . (int)$data['billing_province_id'] . "', country_id = '" . (int)$data['billing_country_id'] . "', address_type ='billing'");	
		}
		else
		{
			$this->db->query("UPDATE " . DB_PREFIX . "address SET firstname = '" . $this->db->escape($data['billing_firstname']) . "', lastname = '" . $this->db->escape($data['billing_lastname']) . "', telephone = '" . $this->db->escape($data['billing_email']) . "', add_title = '" . $this->db->escape($data['billing_title']) . "', company_id = '" . $this->db->escape(isset($data['company_id']) ? $data['company_id'] : '') . "', tax_id = '" . $this->db->escape(isset($data['tax_id']) ? $data['tax_id'] : '') . "', address_1 = '" . $this->db->escape($data['billing_address1']) . "', address_2 = '" . $this->db->escape($data['billing_address2']) . "', postcode = '" . $this->db->escape($data['billing_postal_code']) . "', city = '" . $this->db->escape($data['billing_city']) . "', zone_id = '" . (int)$data['billing_province_id'] . "', country_id = '" . (int)$data['billing_country_id'] . "' WHERE address_id  = '" . (int)$address_id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
			}
		
	}
		
	public function editAddress($address_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "address SET firstname = '" . $this->db->escape($data['shipping_firstname']) . "', lastname = '" . $this->db->escape($data['shipping_lastname']) . "', telephone = '" . $this->db->escape($data['shipping_email']) . "', add_title = '" . $this->db->escape($data['shipping_title']) . "',company_id = '" . $this->db->escape(isset($data['company_id']) ? $data['company_id'] : '') . "', tax_id = '" . $this->db->escape(isset($data['tax_id']) ? $data['tax_id'] : '') . "', address_1 = '" . $this->db->escape($data['shipping_address1']) . "', address_2 = '" . $this->db->escape($data['shipping_address2']) . "', postcode = '" . $this->db->escape($data['shipping_postal_code']) . "', city = '" . $this->db->escape($data['shipping_city']) . "', zone_id = '" . (int)$data['shipping_province_id'] . "', country_id = '" . (int)$data['country_id'] . "' WHERE address_id  = '" . (int)$address_id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
	
		if (!empty($data['default'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "customer SET address_id = '" . (int)$address_id . "' WHERE customer_id = '" . (int)$this->customer->getId() . "'");
		}
	}
	
	public function editAddres($address_id, $data) {
		
		$this->db->query("UPDATE " . DB_PREFIX . "address SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', add_title = '" . $this->db->escape($data['title']) . "', company_id = '" . $this->db->escape(isset($data['company_id']) ? $data['company_id'] : '') . "', tax_id = '" . $this->db->escape(isset($data['tax_id']) ? $data['tax_id'] : '') . "', address_1 = '" . $this->db->escape($data['address1']) . "', address_2 = '" . $this->db->escape($data['address2']) . "', postcode = '" . $this->db->escape($data['postal_code']) . "', city = '" . $this->db->escape($data['shipping_city']) . "', zone_id = '" . (int)$data['province_id'] . "', country_id = '" . (int)$data['country_id'] . "' WHERE address_id  = '" . (int)$address_id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
	
		if (!empty($data['default'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "customer SET address_id = '" . (int)$address_id . "' WHERE customer_id = '" . (int)$this->customer->getId() . "'");
		}
	}
	
	public function deleteAddress($address_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "address WHERE address_id = '" . (int)$address_id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
	}	
	
	public function getAddress($address_id) {
		$address_query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "address WHERE address_id = '" . (int)$address_id . "' AND customer_id = '" . (int)$this->customer->getId() . "'");
		
		if ($address_query->num_rows) {
			$country_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "country` WHERE country_id = '" . (int)$address_query->row['country_id'] . "'");
			
			if ($country_query->num_rows) {
				$country = $country_query->row['name'];
				$iso_code_2 = $country_query->row['iso_code_2'];
				$iso_code_3 = $country_query->row['iso_code_3'];
				$address_format = $country_query->row['address_format'];
			} else {
				$country = '';
				$iso_code_2 = '';
				$iso_code_3 = '';	
				$address_format = '';
			}
			
			$zone_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "zone` WHERE zone_id = '" . (int)$address_query->row['zone_id'] . "'");
			
			if ($zone_query->num_rows) {
				$zone = $zone_query->row['name'];
				$zone_code = $zone_query->row['code'];
			} else {
				$zone = '';
				$zone_code = '';
			}		
			
			$address_data = array(
				//added by kuuga
				'address_id'	 => $address_query->row['address_id'],
				
				'firstname'      => $address_query->row['firstname'],
				'lastname'       => $address_query->row['lastname'],
				'telephone'    	 => $address_query->row['telephone'],
				'add_title'    	 => $address_query->row['add_title'],
				'customer_id'    => $address_query->row['customer_id'],
				'company'        => $address_query->row['company'],
				'email'        	 => $address_query->row['email'],
				'company_id'     => $address_query->row['company_id'],
				'tax_id'         => $address_query->row['tax_id'],
				'address_1'      => $address_query->row['address_1'],
				'address_2'      => $address_query->row['address_2'],
				'postcode'       => $address_query->row['postcode'],
				'city'           => $address_query->row['city'],
				'zone_id'        => $address_query->row['zone_id'],
				'zone'           => $zone,
				'zone_code'      => $zone_code,
				'country_id'     => $address_query->row['country_id'],
				'country'        => $country,	
				'iso_code_2'     => $iso_code_2,
				'iso_code_3'     => $iso_code_3,
				'address_format' => $address_format
			);
			
			return $address_data;
		} else {
			return false;	
		}
	}
		public function getbillingAddress() {
		$address_query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "address WHERE address_type = 'billing' AND customer_id = '" . (int)$this->customer->getId() . "'");
		
		if ($address_query->num_rows) {
			$country_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "country` WHERE country_id = '" . (int)$address_query->row['country_id'] . "'");
			
			if ($country_query->num_rows) {
				$country = $country_query->row['name'];
				$iso_code_2 = $country_query->row['iso_code_2'];
				$iso_code_3 = $country_query->row['iso_code_3'];
				$address_format = $country_query->row['address_format'];
			} else {
				$country = '';
				$iso_code_2 = '';
				$iso_code_3 = '';	
				$address_format = '';
			}
			
			$zone_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "zone` WHERE zone_id = '" . (int)$address_query->row['zone_id'] . "'");
			
			if ($zone_query->num_rows) {
				$zone = $zone_query->row['name'];
				$zone_code = $zone_query->row['code'];
			} else {
				$zone = '';
				$zone_code = '';
			}		
			
			$address_data = array(
				'address_id'     => $address_query->row['address_id'],
				'firstname'      => $address_query->row['firstname'],
				'lastname'       => $address_query->row['lastname'],
				'telephone'   	 => $address_query->row['telephone'],
				'add_title'    	 => $address_query->row['add_title'],
				'company'        => $address_query->row['company'],
				'email'        	 => $address_query->row['email'],
				'company_id'     => $address_query->row['company_id'],
				'tax_id'         => $address_query->row['tax_id'],
				'address_1'      => $address_query->row['address_1'],
				'address_2'      => $address_query->row['address_2'],
				'postcode'       => $address_query->row['postcode'],
				'city'           => $address_query->row['city'],
				'zone_id'        => $address_query->row['zone_id'],
				'zone'           => $zone,
				'zone_code'      => $zone_code,
				'country_id'     => $address_query->row['country_id'],
				'country'        => $country,	
				'iso_code_2'     => $iso_code_2,
				'iso_code_3'     => $iso_code_3,
				'address_format' => $address_format
			);
			
			return $address_data;
		} else {
			return false;	
		}
			
		}
	public function getAddresses() {
		$address_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "address WHERE customer_id = '" . (int)$this->customer->getId() . "'");
	
		foreach ($query->rows as $result) {
			$country_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "country` WHERE country_id = '" . (int)$result['country_id'] . "'");
			
			if ($country_query->num_rows) {
				$country = $country_query->row['name'];
				$iso_code_2 = $country_query->row['iso_code_2'];
				$iso_code_3 = $country_query->row['iso_code_3'];
				$address_format = $country_query->row['address_format'];
			} else {
				$country = '';
				$iso_code_2 = '';
				$iso_code_3 = '';	
				$address_format = '';
			}
			
			$zone_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "zone` WHERE zone_id = '" . (int)$result['zone_id'] . "'");
			
			if ($zone_query->num_rows) {
				$zone = $zone_query->row['name'];
				$zone_code = $zone_query->row['code'];
			} else {
				$zone = '';
				$zone_code = '';
			}		
		
			$address_data[$result['address_id']] = array(
				'address_id'     => $result['address_id'],
				'firstname'      => $result['firstname'],
				
				'add_title'      => $result['add_title'],
				
				'lastname'       => $result['lastname'],
				'company'        => $result['company'],
				'company_id'     => $result['company_id'],
				'tax_id'         => $result['tax_id'],				
				'address_1'      => $result['address_1'],
				'address_2'      => $result['address_2'],
				'postcode'       => $result['postcode'],
				'city'           => $result['city'],
				'zone_id'        => $result['zone_id'],
				'zone'           => $zone,
				'zone_code'      => $zone_code,
				'country_id'     => $result['country_id'],
				'country'        => $country,	
				'iso_code_2'     => $iso_code_2,
				'iso_code_3'     => $iso_code_3,
				'address_format' => $address_format
			);
		}		
		
		return $address_data;
	}	
	
	public function getAddressesbook($bookId) {
		$address_data = array();
		  if($bookId==1)
		  	{	
		  		$addressName=array("A","B","C","D","E","F","G","H");		  	
		  	}	
		  if($bookId==2)
		  	{	
		  		$addressName=array("I","J","K","L","M","N","O","P");		  	
		  	}	
		  if($bookId==3)
		  	{	
		  		$addressName=array("Q","R","S","T","U","V","W","X","Y","Z");		  	
		  	}	
		  for($i=0;$i<count($addressName);$i++)
		  {
		  	$query = $this->db->query("SELECT address_id,firstname,lastname,add_title FROM " . DB_PREFIX . "address WHERE customer_id = '" . (int)$this->customer->getId() . "' AND add_title LIKE '" . $this->db->escape($addressName[$i]) . "%'");
			if ($query->num_rows) {
			foreach ($query->rows as $result) {
				$address_data[$addressName[$i]][] = array(
				'address_id'     => $result['address_id'],
				'firstname'      => $result['firstname'],
				'title'          => $result['add_title'],
				'lastname'       => $result['lastname']		
			);
		}	
		}
		else
		{
			//$address_data[$addressName[$i]] = array();
		}	
		  }
		 /* echo '<pre>';
		  print_r($address_data);
		die;*/
	
			
		
		return $address_data;
	}
	
	public function getTotalAddresses() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "address WHERE customer_id = '" . (int)$this->customer->getId() . "'");
	
		return $query->row['total'];
	}
	
	/**
	* function to get shipping cost by city
	* @param city @name
	* @return shipping cost
	* 
	*/
	
	public function getShippingCost($cityName){
		
		$sql = "SELECT price FROM `" . DB_PREFIX . "city` WHERE name LIKE '".$this->db->escape($cityName)."'";
		$query = $this->db->query($sql);
		$city = $query->row;
		if(isset($city['price']))
		{
			return $city['price'];
		}
		else
		{
			return 0;
		}
	}
	
	public function getShippingCostByCountry($countryId)
	{
		if($countryId != 0 && $countryId != '')
		{
			$sql = "SELECT price FROM `" . DB_PREFIX . "country` WHERE country_id LIKE ".(int)$countryId."";
			$query = $this->db->query($sql);
			$city = $query->row;
			if(isset($city['price']))
			{
				return $city['price'];
			}
			else
			{
				return 0;
			}
		}
		else 
		{
			return 0;
		}
		
	}
}
?>