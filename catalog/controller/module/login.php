<?php  
class ControllerModuleLogin extends Controller {
		private $error = array();
		protected function index($setting) {
		$this->language->load('module/welcome');
		
    	$this->data['heading_title'] = sprintf($this->language->get('heading_title'), $this->config->get('config_name'));
    	
		
		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		}else if(isset($_COOKIE['giftlane_user']))
		{
			$this->data['email'] = $_COOKIE['giftlane_user'];
		} else {
			$this->data['email'] = '';
		}
		if (isset($this->request->post['password'])) {
			$this->data['password'] = $this->request->post['password'];
		} else if(isset($_COOKIE['giftlane_pass']))
		{
			$this->data['password'] = $_COOKIE['giftlane_pass'];
		} else {
			$this->data['password'] = '';
		}

		$this->data['loginAction'] = $this->url->link('module/login');	
		$this->data['forgotPassword'] = $this->url->link('account/forgotten');	
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/login.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/login.tpl';
		} else {
			$this->template = 'default/template/module/login.tpl';
		}
		
		$this->render();
	}
	
		public function validateLogin() {
    	if (!$this->customer->login($this->request->get['email'], $this->request->get['password'])) {
      		$this->error['warning'] = $this->language->get('error_login');
    	}
		$this->load->model('account/customer');
		$customer_info = $this->model_account_customer->getCustomerByEmail($this->request->get['email']);
		
    	if ($customer_info && !$customer_info['approved']) {
      		$this->error['warning'] = $this->language->get('error_approved');
    	}		
		
    	if (!$this->error) {
			
			$this->load->model('account/address');
				
			$address_info = $this->model_account_address->getAddress($this->customer->getAddressId());
									
			if ($address_info) {
				if ($this->config->get('config_tax_customer') == 'shipping') {
					$this->session->data['shipping_country_id'] = $address_info['country_id'];
					$this->session->data['shipping_zone_id'] = $address_info['zone_id'];
					$this->session->data['shipping_postcode'] = $address_info['postcode'];	
				}
				
				if ($this->config->get('config_tax_customer') == 'payment') {
					$this->session->data['payment_country_id'] = $address_info['country_id'];
					$this->session->data['payment_zone_id'] = $address_info['zone_id'];
				}
			} else {
				unset($this->session->data['shipping_country_id']);	
				unset($this->session->data['shipping_zone_id']);	
				unset($this->session->data['shipping_postcode']);
				unset($this->session->data['payment_country_id']);	
				unset($this->session->data['payment_zone_id']);	
			}
							
			// Added strpos check to pass McAfee PCI compliance test (http://forum.opencart.com/viewtopic.php?f=10&t=12043&p=151494#p151295)
			if(isset($this->request->get['rememberMe']) && $this->request->get['rememberMe'] ==1)
			{
				$time = time()+10000;				
				setcookie('giftlane_user',$this->request->get['email'], $time);
				setcookie('giftlane_pass', $this->request->get['password'], $time);
			}		
			echo 1;
    	} else {
      		echo 0;
    	}  	
  	}
}
?>