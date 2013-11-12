<?php  	
class ControllerAccountBillandship extends Controller {
	private $error = array();
	public function index() {
		
		if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('account/address', '', 'SSL');

	  		$this->redirect($this->url->link('account/login', '', 'SSL')); 
    	}
		
		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		
		$this->load->model('account/customer');
		$this->load->model('account/address');
		$getId=$this->customer->getId();
		$customerDetails = $this->model_account_customer->getCustomer($getId);
		if ($customerDetails) {
			$addressId=$this->data['address_id'] = $customerDetails['address_id'];
		} else {
			$addressId=$this->data['address_id'] = '';
		}
		$this->load->model('localisation/country');
		
		$this->data['countries'] = $this->model_localisation_country->getCountries();
		$customerAddressDetails = $this->model_account_address->getAddress($addressId);
		$customerBillingAddressDetails = $this->model_account_address->getbillingAddress();
		
		if($customerBillingAddressDetails){
			$billaddressId=$this->data['billaddressId'] = $customerBillingAddressDetails['address_id'];
		} else {
			$billaddressId=$this->data['billaddressId'] = '';
		}
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) 		    {			
				$this->model_account_address->editAddress($addressId,$this->request->post);					
				$this->model_account_address->editbillingAddress($billaddressId,$this->request->post);
				$this->session->data['success'] = 'Address updated successfully';

				$this->redirect($this->url->link('account/billandship', '', 'SSL'));
		 }	
		//echo '<pre>';
		//print_r($customerAddressDetails);
		$this->data['text_select']="Select State";
		
		/// check error messages
		if (isset($this->error['shipping_firstname'])) {
			$this->data['error_shipping_firstname'] = $this->error['shipping_firstname'];
		} else {
			$this->data['error_shipping_firstname'] = '';
		}
		if (isset($this->error['shipping_title'])) {
			$this->data['error_shipping_title'] = $this->error['shipping_title'];
		} else {
			$this->data['error_shipping_title'] = '';
		}
		if (isset($this->error['shipping_lastname'])) {
			$this->data['error_shipping_lastname'] = $this->error['shipping_lastname'];
		} else {
			$this->data['error_shipping_lastname'] = '';
		}		
		if (isset($this->error['telephone'])) {
			$this->data['error_telephone'] = $this->error['telephone'];
		} else {
			$this->data['error_telephone'] = '';
		}		
		if (isset($this->error['shipping_address1'])) {
			$this->data['error_shipping_address1'] = $this->error['shipping_address1'];
		} else {
			$this->data['error_shipping_address1'] = '';
		}
		if (isset($this->error['country_id'])) {
			$this->data['error_country_id'] = $this->error['country_id'];
		} else {
			$this->data['error_country_id'] = '';
		}
		if (isset($this->error['province_id'])) {
			$this->data['error_province_id'] = $this->error['province_id'];
		} else {
			$this->data['error_province_id'] = '';
		}
		if (isset($this->error['shipping_city'])) {
			$this->data['error_city'] = $this->error['shipping_city'];
		} else {
			$this->data['error_city'] = '';
		}
		if (isset($this->error['country_id'])) {
			$this->data['error_country_id'] = $this->error['country_id'];
		} else {
			$this->data['error_country_id'] = '';
		}
		if (isset($this->error['province_id'])) {
			$this->data['error_province_id'] = $this->error['province_id'];
		} else {
			$this->data['error_province_id'] = '';
		}
		if (isset($this->error['shipping_city'])) {
			$this->data['error_city'] = $this->error['shipping_city'];
		} else {
			$this->data['error_city'] = '';
		}
		if (isset($this->error['billing_title'])) {
			$this->data['error_billing_title'] = $this->error['billing_title'];
		} else {
			$this->data['error_billing_title'] = '';
		}
		if (isset($this->error['billing_country_id'])) {
			$this->data['error_billing_country_id'] = $this->error['billing_country_id'];
		} else {
			$this->data['error_billing_country_id'] = '';
		}
		if (isset($this->error['billing_province_id'])) {
			$this->data['error_billing_province_id'] = $this->error['billing_province_id'];
		} else {
			$this->data['error_billing_province_id'] = '';
		}
		if (isset($this->error['billing_city'])) {
			$this->data['error_billing_city'] = $this->error['billing_city'];
		} else {
			$this->data['error_billing_city'] = '';
		}
		
		/// Fetch Details
		if ($customerAddressDetails) {
			$this->data['shipping_firstname'] = $customerAddressDetails['firstname'];
		} else {
			$this->data['shipping_firstname'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_lastname'] = $customerAddressDetails['lastname'];
		} else {
			$this->data['shipping_lastname'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_title'] = $customerAddressDetails['add_title'];
		} else {
			$this->data['shipping_title'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_address_1'] = $customerAddressDetails['address_1'];
		} else {
			$this->data['shipping_address_1'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_address_2'] = $customerAddressDetails['address_2'];
		} else {
			$this->data['shipping_address_2'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_city'] = $customerAddressDetails['city'];
		} else {
			$this->data['shipping_city'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_postcode'] = $customerAddressDetails['postcode'];
		} else {
			$this->data['shipping_postcode'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['country_id'] = $customerAddressDetails['country_id'];
		} else {
			$this->data['country_id'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_zone'] = $customerAddressDetails['zone_id'];
		} else {
			$this->data['shipping_zone'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_city'] = $customerAddressDetails['city'];
		} else {
			$this->data['shipping_city'] = '';
		}
		
		if ($customerAddressDetails) {
			$this->data['shipping_telephone'] = $customerAddressDetails['telephone'];
		} else {
			$this->data['shipping_telephone'] = '';
		}
		
	/// get billing address details	
		if ($customerBillingAddressDetails) {
			$this->data['billing_firstname'] = $customerBillingAddressDetails['firstname'];
		} else {
			$this->data['billing_firstname'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['billing_lastname'] = $customerBillingAddressDetails['lastname'];
		} else {
			$this->data['billing_lastname'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['billing_title'] = $customerBillingAddressDetails['add_title'];
		} else {
			$this->data['billing_title'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['billing_telephone'] = $customerBillingAddressDetails['telephone'];
		} else {
			$this->data['billing_telephone'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['billing_address_1'] = $customerBillingAddressDetails['address_1'];
		} else {
			$this->data['billing_address_1'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['billing_address_2'] = $customerBillingAddressDetails['address_2'];
		} else {
			$this->data['billing_address_2'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['billing_city'] = $customerBillingAddressDetails['city'];
		} else {
			$this->data['billing_city'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['billing_postcode'] = $customerBillingAddressDetails['postcode'];
		} else {
			$this->data['billing_postcode'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['billing_country'] = $customerBillingAddressDetails['country_id'];
			
		} else {
			$this->data['billing_country'] = '';
			
		}
		$this->data['billingactionAddress']=0;
		if($this->data['billing_country']=="")
		{
			$this->data['billingactionAddress']=1;
		}
		
		if ($customerBillingAddressDetails) {
			$this->data['billing_zone'] = $customerBillingAddressDetails['zone_id'];
		} else {
			$this->data['billing_zone'] = '';
		}
		if (isset($this->error['warning'])) {
    		$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
    		$this->data['success'] = $this->session->data['success'];
    
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		$this->load->model('localisation/zone');
		
    	$this->data['zones'] = $this->model_localisation_zone->getZonesByCountryId(100);
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/billandship.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/billandship.tpl';
		} else {
			$this->template = 'default/template/account/billandship.tpl';
		}
		
		$this->children = array(
			'account/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'	
		);
						
		$this->response->setOutput($this->render());
	}
	
	protected function validateForm() {
		
    	if ((utf8_strlen($this->request->post['shipping_firstname']) < 1) || (utf8_strlen($this->request->post['shipping_firstname']) > 32)) {
      		$this->error['shipping_firstname'] = $this->language->get('error_firstname');
    	}

    	if ((utf8_strlen($this->request->post['shipping_lastname']) < 1) || (utf8_strlen($this->request->post['shipping_lastname']) > 32)) {
      		$this->error['shipping_lastname'] = $this->language->get('error_lastname');
    	}
		
		if ((utf8_strlen($this->request->post['shipping_email']) < 1) || (utf8_strlen($this->request->post['shipping_email']) > 32)) {
      		$this->error['telephone'] = 'Please enter telephone.';
    	}

    	if ((utf8_strlen($this->request->post['shipping_address1']) < 3) || (utf8_strlen($this->request->post['shipping_address1']) > 128)) {
      		$this->error['shipping_address1'] = $this->language->get('error_address_1');
    	}
		
		if ($this->request->post['country_id'] == '') {
      		$this->error['country_id'] = 'Please select Country.';
    	}
		
    	if ($this->request->post['shipping_province_id'] == '' || $this->request->post['shipping_province_id'] == "0") {
      		$this->error['province_id'] = 'Please select State.';
    	}
		
    	if ($this->request->post['shipping_city'] == "0" || $this->request->post['shipping_city'] == ''  ) {
      		$this->error['shipping_city'] = 'Please enter city';
    	}
		
		
		if ($this->request->post['billing_country_id'] == '') {
      		$this->error['billing_country_id'] = 'Please select Country.';
    	}
		
    	if ($this->request->post['billing_province_id'] == '' || $this->request->post['billing_province_id'] == "0") {
      		$this->error['billing_province_id'] = 'Please select State.';
    	}
		
    	if ($this->request->post['billing_city'] == "0" || $this->request->post['billing_city'] == ''  ) {
      		$this->error['billing_city'] = 'Please enter city';
    	}
		
    	if (!$this->error) {
      		return true;
		} else {
      		return false;
    	}
  	}
	
	public function city() {
               $output = '<option value="">' . $this->language->get('text_select') . '</option>';

               $this->load->model('localisation/city');
               $results = $this->model_localisation_city->getCitiesByZoneId($this->request->get['zone_id']);
			   
               foreach ($results as $result) {
                       $output .= '<option value="' . $result['name'] . '"';

                       if (isset($this->request->get['city_name']) && (str_replace('_',' ',$this->request->get['city_name']) == $result['name']))                         {
                               $output .= ' selected="selected"';
                       }
					 /* if($this->request->get['city_name'] == $result['name'])
					   {
					   		   $output .= ' selected="selected"';
					   }
*/
                       $output .= '>' . $result['name'] . '</option>';
               }

               if (!$results) {
                       $output = '<option value="0">' . $this->language->get('text_none') . '</option>';
               } else {
               //        $output .= '<option value="0">' . $this->language->get('text_none') . '</option>';
               }

               $this->response->setOutput($output);
       }
	   
	   public function zone() {
               $output = '<option value="">SELECT STATE</option>';

               $this->load->model('localisation/zone');

              $country_info = $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']);
			print_r($country_info);
               foreach ($country_info as $result) {
                       $output .= '<option value="' . $result['zone_id'] . '"';						
                       if (isset($this->request->get['zone_id']) && ($this->request->get['zone_id'] == $result['zone_id']))                         {
                               $output .= ' selected="selected"';
                       }
					 /* if($this->request->get['city_name'] == $result['name'])
					   {
					   		   $output .= ' selected="selected"';
					   }
*/
                       $output .= '>' . $result['name'] . '</option>';
               }

               if (!$country_info) {
                       $output = '<option value="0">' . $this->language->get('text_none') . '</option>';
               } else {
               //        $output .= '<option value="0">' . $this->language->get('text_none') . '</option>';
               }

               $this->response->setOutput($output);
       }
	   
	   public function country() {
               $output = '<option value="">SELECT COUNTRY</option>';

              $this->load->model('localisation/country');
		
		     $results = $this->model_localisation_country->getCountries();

               foreach ($results as $result) {
                       $output .= '<option value="' . $result['country_id'] . '"';

                       if (isset($this->request->get['country_id']) && ($this->request->get['country_id'] == $result['country_id']))                         {
                               $output .= ' selected="selected"';
                       }
					
                       $output .= '>' . $result['name'] . '</option>';
               }

               if (!$results) {
                       $output = '<option value="0">' . $this->language->get('text_none') . '</option>';
               } else {
               //        $output .= '<option value="0">' . $this->language->get('text_none') . '</option>';
               }

               $this->response->setOutput($output);
       }
	   
	    public function countries() {
               $output = '<option value="">SELECT COUNTRY</option>';

              $this->load->model('localisation/country');
		
		     $results = $this->model_localisation_country->getCountries();
		
               foreach ($results as $result) {
                       $output .= '<option value="' . $result['country_id'] . '"';
		               $output .= '>' . $result['name'] . '</option>';
               }

               if (!$results) {
                       $output = '<option value="0">' . $this->language->get('text_none') . '</option>';
               } else {
               //        $output .= '<option value="0">' . $this->language->get('text_none') . '</option>';
               }
				//$output .='</select>';
               $this->response->setOutput($output);
       }
}
?>