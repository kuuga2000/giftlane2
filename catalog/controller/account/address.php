<?php 
class ControllerAccountAddress extends Controller {
	private $error = array();
	  
  	public function index() {
  		
    	if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('account/address', '', 'SSL');

	  		$this->redirect($this->url->link('account/login', '', 'SSL')); 
    	}
	
    	$this->language->load('account/address');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('account/address');
		
		$this->getList();
  	}

  	public function insert() {
    	if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('account/address', '', 'SSL');

	  		$this->redirect($this->url->link('account/login', '', 'SSL')); 
    	} 

    	$this->language->load('account/address');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('account/address');
		
			
    	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			
			$this->model_account_address->addAddress($this->request->post);
			
      		$this->session->data['success'] = $this->language->get('text_insert');

	  		$this->redirect($this->url->link('account/address', '', 'SSL'));
    	} 
		
		
		/*if (isset($this->error['shipping_city'])) {
			$this->data['error_city'] = $this->error['shipping_city'];
		} else {
			$this->data['error_city'] = '';
		}*/
		
	  	
		$this->getForm();
  	}

  	public function update() {
    	if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('account/address', '', 'SSL');

	  		$this->redirect($this->url->link('account/login', '', 'SSL')); 
    	} 
		
    	$this->language->load('account/address');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('account/address');
		
    	if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			if(isset($this->request->post['delete']))
			{
				$this->delete($this->request->get['address_id']);
			}
			else
			{
			
       		$this->model_account_address->editAddres($this->request->get['address_id'], $this->request->post);
	  		
			// Default Shipping Address
			if (isset($this->session->data['shipping_address_id']) && ($this->request->get['address_id'] == $this->session->data['shipping_address_id'])) {
				$this->session->data['shipping_country_id'] = $this->request->post['country_id'];
				$this->session->data['shipping_zone_id'] = $this->request->post['zone_id'];
				$this->session->data['shipping_postcode'] = $this->request->post['postcode'];
				
				unset($this->session->data['shipping_method']);	
				unset($this->session->data['shipping_methods']);
			}
			
			// Default Payment Address
			if (isset($this->session->data['payment_address_id']) && ($this->request->get['address_id'] == $this->session->data['payment_address_id'])) {
				$this->session->data['payment_country_id'] = $this->request->post['country_id'];
				$this->session->data['payment_zone_id'] = $this->request->post['zone_id'];
	  			
				unset($this->session->data['payment_method']);
				unset($this->session->data['payment_methods']);
			}
			
			$this->session->data['success'] = $this->language->get('text_update');
	  
	  		$this->redirect($this->url->link('account/address', '', 'SSL'));
			}
    	} 
	  	
		$this->getForm();
  	}

  	public function delete() {
    	if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('account/address', '', 'SSL');

	  		$this->redirect($this->url->link('account/login', '', 'SSL')); 
    	} 
			
    	$this->language->load('account/address');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('account/address');
		
    	if (isset($this->request->get['address_id']) && $this->validateDelete()) {
			$this->model_account_address->deleteAddress($this->request->get['address_id']);	
			
			// Default Shipping Address
			if (isset($this->session->data['shipping_address_id']) && ($this->request->get['address_id'] == $this->session->data['shipping_address_id'])) {
				unset($this->session->data['shipping_address_id']);
				unset($this->session->data['shipping_country_id']);
				unset($this->session->data['shipping_zone_id']);
				unset($this->session->data['shipping_postcode']);				
				unset($this->session->data['shipping_method']);
				unset($this->session->data['shipping_methods']);
			}
			
			// Default Payment Address
			if (isset($this->session->data['payment_address_id']) && ($this->request->get['address_id'] == $this->session->data['payment_address_id'])) {
				unset($this->session->data['payment_address_id']);
				unset($this->session->data['payment_country_id']);
				unset($this->session->data['payment_zone_id']);				
				unset($this->session->data['payment_method']);
				unset($this->session->data['payment_methods']);
			}
			
			$this->session->data['success'] = $this->language->get('text_delete');
	  
	  		$this->redirect($this->url->link('account/address', '', 'SSL'));
    	}
	
		$this->getList();	
  	}

  	protected function getList() {
      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	); 

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_account'),
			'href'      => $this->url->link('account/account', '', 'SSL'),
        	'separator' => $this->language->get('text_separator')
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('account/address', '', 'SSL'),
        	'separator' => $this->language->get('text_separator')
      	);
			
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_address_book'] = $this->language->get('text_address_book');
   
    	$this->data['button_new_address'] = $this->language->get('button_new_address');
    	$this->data['button_edit'] = $this->language->get('button_edit');
    	$this->data['button_delete'] = $this->language->get('button_delete');
		$this->data['button_back'] = $this->language->get('button_back');

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
		
    	$this->data['addresses'] = array();
		
		//$results = $this->model_account_address->getAddresses();
		
		$this->data['aToh']=$this->url->link('account/address','addressfrom=1', 'SSL');
		$this->data['iTop']=$this->url->link('account/address','addressfrom=2', 'SSL');
		$this->data['qToz']=$this->url->link('account/address','addressfrom=3', 'SSL');
		if(!isset($this->request->get['addressfrom']))
		{
			$results = $this->model_account_address->getAddressesbook(1);
		}
		else
		{
			$results = $this->model_account_address->getAddressesbook($this->request->get['addressfrom']);
		}
		
		//echo '<pre>';
		//print_r($results);
		$this->data['addresses']=$results;
		
    	$this->data['insert'] = $this->url->link('account/address/insert', '', 'SSL');
		$this->data['back'] = $this->url->link('account/account', '', 'SSL');
				
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/address_list.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/address_list.tpl';
		} else {
			$this->template = 'default/template/account/address_list.tpl';
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

  	protected function getForm() {
      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),       	
        	'separator' => false
      	); 

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_account'),
			'href'      => $this->url->link('account/account', '', 'SSL'),
        	'separator' => $this->language->get('text_separator')
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('account/address', '', 'SSL'),        	
        	'separator' => $this->language->get('text_separator')
      	);
		
		if (!isset($this->request->get['address_id'])) {
      		$this->data['breadcrumbs'][] = array(
        		'text'      => $this->language->get('text_edit_address'),
				'href'      => $this->url->link('account/address/insert', '', 'SSL'),       		
        		'separator' => $this->language->get('text_separator')
      		);
		} else {
      		$this->data['breadcrumbs'][] = array(
        		'text'      => $this->language->get('text_edit_address'),
				'href'      => $this->url->link('account/address/update', 'address_id=' . $this->request->get['address_id'], 'SSL'),       		
        		'separator' => $this->language->get('text_separator')
      		);
		}
						
    	$this->data['heading_title'] = $this->language->get('heading_title');
    	
		$this->data['text_edit_address'] = $this->language->get('text_edit_address');
    	$this->data['text_yes'] = $this->language->get('text_yes');
    	$this->data['text_no'] = $this->language->get('text_no');
		$this->data['text_select'] = $this->language->get('text_select');
		$this->data['text_none'] = $this->language->get('text_none');
		
    	$this->data['entry_firstname'] = $this->language->get('entry_firstname');
    	$this->data['entry_lastname'] = $this->language->get('entry_lastname');
    	$this->data['entry_company'] = $this->language->get('entry_company');
		$this->data['entry_company_id'] = $this->language->get('entry_company_id');
		$this->data['entry_tax_id'] = $this->language->get('entry_tax_id');		
    	$this->data['entry_address_1'] = $this->language->get('entry_address_1');
    	$this->data['entry_address_2'] = $this->language->get('entry_address_2');
    	$this->data['entry_postcode'] = $this->language->get('entry_postcode');
    	$this->data['entry_city'] = $this->language->get('entry_city');
    	$this->data['entry_country'] = $this->language->get('entry_country');
    	$this->data['entry_zone'] = $this->language->get('entry_zone');
    	$this->data['entry_default'] = $this->language->get('entry_default');

    	$this->data['button_continue'] = $this->language->get('button_continue');
    	$this->data['button_back'] = $this->language->get('button_back');
		$this->load->model('localisation/zone');
		
    	$this->data['zones'] = $this->model_localisation_zone->getZonesByCountryId(100);
		
		if (isset($this->error['firstname'])) {
			$this->data['error_firstname'] = $this->error['firstname'];
		} else {
			$this->data['error_firstname'] = '';
		}

		if (isset($this->error['lastname'])) {
			$this->data['error_lastname'] = $this->error['lastname'];
		} else {
			$this->data['error_lastname'] = '';
		}
		
		if (isset($this->error['telephone'])) {
			$this->data['error_telephone'] = $this->error['telephone'];
		} else {
			$this->data['error_telephone'] = '';
		}
		
		
		if (isset($this->error['title'])) {
			$this->data['error_title'] = $this->error['title'];
		} else {
			$this->data['error_title'] = '';
		}
		
		if (isset($this->error['address_1'])) {
			$this->data['error_address_1'] = $this->error['address_1'];
		} else {
			$this->data['error_address_1'] = '';
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
		if (isset($this->session->data['success'])) {
    		$this->data['success'] = $this->session->data['success'];
    
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		if (!isset($this->request->get['address_id'])) {
			$this->data['deleteUrl']='';
			$this->data['actionAddress']='1';
    		$this->data['action'] = $this->url->link('account/address/insert', '', 'SSL');
		} else {
			$this->data['deleteUrl']=$this->url->link('account/address/delete', 'address_id=' . $this->request->get['address_id'], 'SSL');
			$this->data['actionAddress']='0';
    		$this->data['action'] = $this->url->link('account/address/update', 'address_id=' . $this->request->get['address_id'], 'SSL');
		}
		
    	if (isset($this->request->get['address_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$address_info = $this->model_account_address->getAddress($this->request->get['address_id']);
			if($address_info['customer_id']!=$this->customer->getId())
			{
				$this->redirect($this->url->link('account/account', '', 'SSL')); 	
			}
		}
	
    	if (isset($this->request->post['firstname'])) {
      		$this->data['firstname'] = $this->request->post['firstname'];
    	} elseif (!empty($address_info)) {
      		$this->data['firstname'] = $address_info['firstname'];
    	} else {
			$this->data['firstname'] = '';
		}

    	if (isset($this->request->post['lastname'])) {
      		$this->data['lastname'] = $this->request->post['lastname'];
    	} elseif (!empty($address_info)) {
      		$this->data['lastname'] = $address_info['lastname'];
    	} else {
			$this->data['lastname'] = '';
		}

        if (isset($this->request->post['title'])) {
      		$this->data['title'] = $this->request->post['title'];
    	} elseif (!empty($address_info)) {
      		$this->data['title'] = $address_info['add_title'];
    	} else {
			$this->data['title'] = '';
		}
		
    	if (isset($this->request->post['telephone'])) {
      		$this->data['telephone'] = $this->request->post['telephone'];
    	} elseif (!empty($address_info)) {
			$this->data['telephone'] = $address_info['telephone'];
		} else {
      		$this->data['telephone'] = '';
    	}
		
		if (isset($this->request->post['address1'])) {
      		$this->data['address_1'] = $this->request->post['address1'];
    	} elseif (!empty($address_info)) {
			$this->data['address_1'] = $address_info['address_1'];
		} else {
      		$this->data['address_1'] = '';
    	}
		
		if (isset($this->request->post['address2'])) {
      		$this->data['address_2'] = $this->request->post['address2'];
    	} elseif (!empty($address_info)) {
			$this->data['address_2'] = $address_info['address_2'];
		} else {
      		$this->data['address_2'] = '';
    	}
		
		if (isset($this->request->post['postal_code'])) {
    		$this->data['postal_code'] = $this->request->post['postal_code'];
    	} elseif (!empty($address_info)) {
			$this->data['postal_code'] = $address_info['postcode'];			
		} else {
			$this->data['postal_code'] = '';
		}
		
		if (isset($this->request->post['country_id'])) {
      		$this->data['country_id'] = $this->request->post['country_id'];
    	} elseif (!empty($address_info)) {
      		$this->data['country_id'] = $address_info['country_id'];
    	} else {
			$this->data['country_id'] = '';
		}
		
		if (isset($this->request->post['province_id'])) {
    		$this->data['province_id'] = $this->request->post['province_id'];
    	} elseif (!empty($address_info)) {
			$this->data['province_id'] = $address_info['zone_id'];			
		} else {
			$this->data['province_id'] = '';
		}
		
		
		$this->load->model('account/customer_group');
		
		$customer_group_info = $this->model_account_customer_group->getCustomerGroup($this->customer->getCustomerGroupId());
		
    		
    	if (isset($this->request->post['shipping_city'])) {
      		$this->data['shipping_city'] = $this->request->post['shipping_city'];
    	} elseif (!empty($address_info)) {
			$this->data['shipping_city'] = $address_info['city'];
		} else {
      		$this->data['shipping_city'] = '';
    	}
		
    	if (isset($this->request->post['default'])) {
      		$this->data['default'] = $this->request->post['default'];
    	} elseif (isset($this->request->get['address_id'])) {
      		$this->data['default'] = $this->customer->getAddressId() == $this->request->get['address_id'];
    	} else {
			$this->data['default'] = false;
		}
		$this->load->model('localisation/country');
		
		$this->data['countries'] = $this->model_localisation_country->getCountries();
    	$this->data['back'] = $this->url->link('account/address', '', 'SSL');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/address_form.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/address_form.tpl';
		} else {
			$this->template = 'default/template/account/address_form.tpl';
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
    	if ((utf8_strlen($this->request->post['firstname']) < 1) || (utf8_strlen($this->request->post['firstname']) > 32)) {
      		$this->error['firstname'] = $this->language->get('error_firstname');
    	}

    	if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32)) {
      		$this->error['lastname'] = $this->language->get('error_lastname');
    	}
		
		if ((utf8_strlen($this->request->post['telephone']) < 1) || (utf8_strlen($this->request->post['telephone']) > 32)) {
      		$this->error['telephone'] = 'Please enter telephone.';
    	}
		
		if ((utf8_strlen($this->request->post['title']) < 1) || (utf8_strlen($this->request->post['title']) > 32)) {
      		$this->error['title'] = 'Please enter address title.';
    	}


    	if ((utf8_strlen($this->request->post['address1']) < 3) || (utf8_strlen($this->request->post['address1']) > 128)) {
      		$this->error['address_1'] = $this->language->get('error_address_1');
    	}
		
		if ($this->request->post['country_id'] == '') {
      		$this->error['country_id'] = 'Please select Country.';
    	}
		
    	if ($this->request->post['province_id'] == '') {
      		$this->error['province_id'] = 'Please select State.';
    	}
		
    	if ($this->request->post['shipping_city'] == "0" || $this->request->post['shipping_city'] == ''  ) {
      		$this->error['shipping_city'] = 'Please select city';
    	}
		
    	if (!$this->error) {
      		return true;
		} else {
      		return false;
    	}
  	}

  	protected function validateDelete() {
    	if ($this->model_account_address->getTotalAddresses() == 1) {
      		$this->error['warning'] = $this->language->get('error_delete');
    	}

    	if ($this->customer->getAddressId() == $this->request->get['address_id']) {
      		$this->error['warning'] = $this->language->get('error_default');
    	}

    	if (!$this->error) {
      		return true;
    	} else {
      		return false;
    	}
  	}
	
	public function country() {
		$json = array();
		
		$this->load->model('localisation/country');

    	$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);
		
		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']		
			);
		}
		
		$this->response->setOutput(json_encode($json));
	}
}
?>