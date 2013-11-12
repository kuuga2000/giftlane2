<?php 
class ControllerAccountLogin extends Controller {
	private $error = array();
	
	public function index() {
		$this->load->model('account/customer');
		$this->load->model('localisation/country');
		$cokkiesUser=$_COOKIE['giftlane_user'];
		$cokkiesPassword=$_COOKIE['giftlane_pass'];
		if(!$this->customer->isLogged())
		{
			if($cokkiesUser)
			{
				$this->customer->login($cokkiesUser, $cokkiesPassword);
				unset($this->session->data['guest']);		
			}
		}
		// Login override for admin users
		if (!empty($this->request->get['token'])) {
			$this->customer->logout();
			$this->cart->clear();

			unset($this->session->data['wishlist']);
			unset($this->session->data['shipping_address_id']);
			unset($this->session->data['shipping_country_id']);
			unset($this->session->data['shipping_zone_id']);
			unset($this->session->data['shipping_postcode']);
			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_address_id']);
			unset($this->session->data['payment_country_id']);
			unset($this->session->data['payment_zone_id']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['comment']);
			unset($this->session->data['order_id']);
			unset($this->session->data['coupon']);
			unset($this->session->data['reward']);
			unset($this->session->data['voucher']);
			unset($this->session->data['vouchers']);
			
			$customer_info = $this->model_account_customer->getCustomerByToken($this->request->get['token']);
			$this->data['countries'] = $this->model_localisation_country->getCountries();
		 	if ($customer_info && $this->customer->login($customer_info['email'], '', true)) {
				// Default Addresses
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
									
				$this->redirect($this->url->link('common/home', '', 'SSL')); 
			}
		}		
		
		if ($this->customer->isLogged()) {  
      		$this->redirect($this->url->link('common/home', '', 'SSL'));
    	}
	
    	$this->language->load('account/login');

    	$this->document->setTitle($this->language->get('heading_title').' | ');
		$this->data['countries'] = $this->model_localisation_country->getCountries();						
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && isset($this->request->post['login']) && $this->validate()) {
			unset($this->session->data['guest']);
			
			// Default Shipping Address
			$this->load->model('account/address');
			
			$this->data['text_select'] = $this->language->get('text_select');
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
			if (isset($this->request->post['redirect']) && (strpos($this->request->post['redirect'], $this->config->get('config_url')) !== false || strpos($this->request->post['redirect'], $this->config->get('config_ssl')) !== false)) {
				$this->redirect(str_replace('&amp;', '&', $this->request->post['redirect']));
			} else {
				
				if(isset($this->request->post['rememberMe']) && $this->request->post['rememberMe'] ==1)
				{				
					#$time = time()+10000;				
					$time = time()+60*60*24*30;				
					setcookie('giftlane_user',$this->request->post['email'], $time);
					setcookie('giftlane_pass', $this->request->post['password'], $time);
					setcookie('giftlane_id', base64_decode($this->customer->getId()), $time);
				}		
				if($this->cart->hasProducts())
				{
					$this->redirect($this->url->link('checkout/cart', '', 'SSL')); 
				}
				else
				{
					$this->redirect($this->url->link('common/home', '', 'SSL')); 
				}
				
			}
    	}  
		
		//--------------- signup process
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && isset($this->request->post['signup']) && $this->validate_register())
		{
			/*echo '<pre>';
			print_r($this->request->post);*/
			$data['firstname'] = $this->request->post['firstname'];
			$data['lastname'] = $this->request->post['lastname'];
			$data['email'] = $this->request->post['email'];
			$data['password'] = $this->request->post['password'];
			if(isset($this->request->post['newsletter']) && $this->request->post['newsletter'] ==1)
			{
				$data['newsletter'] = $this->request->post['newsletter'];
			}
			else
			{
				$data['newsletter'] = '';
			}
			
			$data['telephone'] = $this->request->post['telephone'];
			$data['fax'] = '';
			$data['company'] = '';
			$data['company_id'] = '';
			$data['tax_id'] = '';
			$data['address_1'] = $this->request->post['address_1'];
			$data['address_2'] = '';
			$data['city'] = $this->request->post['city'];
			$data['country_id'] = $this->request->post['country_id'];
			$data['zone_id'] = $this->request->post['province_id'];
			$data['postcode'] = $this->request->post['postal_code'];
			
			$data['fb_user_id'] = $this->request->post['fb_user_id'];
			$data['fb_token'] = $this->request->post['fb_token'];
			$data['fb_expire_time'] = $this->request->post['fb_expire_time'];
	
			$this->model_account_customer->addCustomer($data);

			$this->customer->login($this->request->post['email'], $this->request->post['password']);
		    $this->redirect($this->url->link('common/home', '', 'SSL')); 
		}
	
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
        	'text'      => $this->language->get('text_login'),
			'href'      => $this->url->link('account/login', '', 'SSL'),      	
        	'separator' => $this->language->get('text_separator')
      	);
				
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_new_customer'] = $this->language->get('text_new_customer');
    	$this->data['text_register'] = $this->language->get('text_register');
    	$this->data['text_register_account'] = $this->language->get('text_register_account');
		$this->data['text_returning_customer'] = $this->language->get('text_returning_customer');
		$this->data['text_i_am_returning_customer'] = $this->language->get('text_i_am_returning_customer');
    	$this->data['text_forgotten'] = $this->language->get('text_forgotten');

    	$this->data['entry_email'] = $this->language->get('entry_email');
    	$this->data['entry_password'] = $this->language->get('entry_password');

    	$this->data['button_continue'] = $this->language->get('button_continue');
		$this->data['button_login'] = $this->language->get('button_login');

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
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
	
		if (isset($this->error['email'])) {
			$this->data['error_email'] = $this->error['email'];
		} else {
			$this->data['error_email'] = '';
		}
		
		if (isset($this->error['password'])) {
			$this->data['error_password'] = $this->error['password'];
		} else {
			$this->data['error_password'] = '';
		}
		
 		if (isset($this->error['confirm'])) {
			$this->data['error_confirm'] = $this->error['confirm'];
		} else {
			$this->data['error_confirm'] = '';
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
		if (isset($this->error['city'])) {
			$this->data['error_city'] = $this->error['city'];
		} else {
			$this->data['error_city'] = '';
		}
		
		
		$this->data['action'] = $this->url->link('account/login', '', 'SSL');
		$this->data['register'] = $this->url->link('account/register', '', 'SSL');
		$this->data['forgotten'] = $this->url->link('account/forgotten', '', 'SSL');

    	// Added strpos check to pass McAfee PCI compliance test (http://forum.opencart.com/viewtopic.php?f=10&t=12043&p=151494#p151295)
		if (isset($this->request->post['redirect']) && (strpos($this->request->post['redirect'], $this->config->get('config_url')) !== false || strpos($this->request->post['redirect'], $this->config->get('config_ssl')) !== false)) {
			$this->data['redirect'] = $this->request->post['redirect'];
		} elseif (isset($this->session->data['redirect'])) {
      		$this->data['redirect'] = $this->session->data['redirect'];
	  		
			unset($this->session->data['redirect']);		  	
    	} else {
			$this->data['redirect'] = '';
		}

		if (isset($this->session->data['success'])) {
    		$this->data['success'] = $this->session->data['success'];
    
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		
		if (isset($this->session->data['error'])) {
    		$this->data['warning'] = $this->session->data['error'];
    
			unset($this->session->data['error']);
		} else {
			$this->data['warning'] = '';
		}
		
		
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
		
		if (isset($this->request->post['firstname'])) {
    		$this->data['firstname'] = $this->request->post['firstname'];
		} else {
			$this->data['firstname'] = '';
		}

		if (isset($this->request->post['lastname'])) {
    		$this->data['lastname'] = $this->request->post['lastname'];
		} else {
			$this->data['lastname'] = '';
		}
		
		
		if (isset($this->request->post['fb_user_id'])) {
    		$this->data['fb_user_id'] = $this->request->post['fb_user_id'];
		} else {
			$this->data['fb_user_id'] = '';
		}
		
		if (isset($this->request->post['fb_token'])) {
    		$this->data['fb_token'] = $this->request->post['fb_token'];
		} else {
			$this->data['fb_token'] = '';
		}
		
		if (isset($this->request->post['fb_expire_time'])) {
    		$this->data['fb_expire_time'] = $this->request->post['fb_expire_time'];
		} else {
			$this->data['fb_expire_time'] = '';
		}
			
		//------------------------- FACEBOO LOGIN PAGE -----------------------------
		
		require_once('facebook.php');
		if(!isset($this->request->get['fbparams']))
		{
		   echo "<script type='text/javascript'>
		   var parts = location.href.split('#');
		   if(parts.length > 1)
		   {
			var params = parts[0].split('?');
			var mark = '?';
			if(params.length > 1)
			{
			 mark = '&';
			}
			//alert(parts[0] + mark + 'fbparams=1&' + parts[1]);
			location.href = parts[0] + mark + 'fbparams=1&' + parts[1];
		   }
		   </script>";
		   
		   #print $access_token  = trim($_REQUEST['access_token']);
		   #print $exipires_in  = trim($_REQUEST['expires_in']);
		   
		}
	    else
	    {
		   $access_token = $this->request->get['access_token'];
		   $exipires_in =  $this->request->get['expires_in'];
		   $appId = '493283537408697';
		   $secretKey = '1e81577db69e8f1aa1fc41f7f9c1efa4';
		   if($access_token != '')
			{
				$facebook = new Facebook(array(
					'appId'  =>  $appId, 
					'secret' => $secretKey,
					'fileUpload' => true
				   )); 
				$url_to_get_token = 'https://graph.facebook.com/oauth/access_token?grant_type=fb_exchange_token&client_id='.$appId.'&client_secret='.$secretKey.'&fb_exchange_token='.$access_token;
				$chi = curl_init($url_to_get_token);
				curl_setopt($chi,CURLOPT_CONNECTTIMEOUT,'20');
				curl_setopt($chi,CURLOPT_RETURNTRANSFER,true);
				curl_setopt($chi,CURLOPT_TIMEOUT, '60');
				curl_setopt($chi,CURLOPT_USERAGENT,'facebook-php-3.1');
				curl_setopt($chi,CURLOPT_USERAGENT,'facebook-php-3.1');
				$result = curl_exec($chi);
				curl_close($chi);
				
				$arr_result = explode('&',$result);
				$new_access_token = ltrim($arr_result[0],'access_token=');
				$expires_in_sec  = ltrim($arr_result[1],'expires=');
				
				## Get user fb_id
				$facebook->setAccessToken($new_access_token);
				 
				$user_profile = $facebook->api('/me');
				#echo "<pre>";print_r($user_profile);  exit;
				$fbUserId = $user_profile['id'];
				$fbUserFName = $user_profile['first_name'];
				$fbUserLName = $user_profile['last_name'];
				$fbUserName = $user_profile['username'];
				$fbUserGender = $user_profile['gender'];
				$fbUserEmail = $user_profile['email'];
				$fbUserBDay = $user_profile['birthday'];
				$dataStr = "fb_user_id=".$fbUserId."&fb_user_fname=".$fbUserFName."&fb_user_name=".$fbUserName."&fb_user_gender=".$fbUserGender."&fb_user_email=".$fbUserEmail."&fb_user_bday=".$fbUserBDay;
				// check for existing user if email exists then enter the fbuserid to db and login user other wise register for new user
				 
				$isExistingUser = $this->model_account_customer->getCustomerByEmail($fbUserEmail);
			/*	echo '<pre>';
				print_r($user_profile);exit;*/
				if($isExistingUser)
				{
					 if($isExistingUser['status']==0)
					 {
					 // $this->session->set_flashdata('succ_error',"Your account is inactive.Please contact administrator");
						$this->session->data['warning'] = "Your account is inactive.Please contact administrator";	  
					 }
					 else
					 {	
					 	unset($this->session->data['guest']);
							
							// Default Shipping Address
							$this->load->model('account/address');
								
							$this->customer->login($isExistingUser['email'],'',true);
								
							$address_info = $this->model_account_address->getAddress($isExistingUser['customer_id']);
													
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
							$this->redirect($this->url->link('account/account', '', 'SSL')); 
					 }
				}
				else
				{
				 // send to registeration page
					$this->data['firstname'] = $fbUserFName;
					$this->data['lastname'] = $fbUserLName;
					$this->data['email'] = $fbUserEmail;
					$this->data['fb_user_id'] = $fbUserId;
					$this->data['fb_token'] = $new_access_token;
					$this->data['fb_expire_time'] = $exipires_in;
					/*
					Array
					(
					    [id] => 100005764478798
					    [name] => Elufname Elulname
					    [first_name] => Elufname
					    [last_name] => Elulname
					    [link] => https://www.facebook.com/elufname.elulname
					    [username] => elufname.elulname
					    [birthday] => 03/02/1987
					    [gender] => male
					    [email] => eluminous_developer2@eluminoustechnologies.com
					    [timezone] => 5.5
					    [locale] => en_US
					    [verified] => 1
					    [updated_time] => 2013-06-21T07:22:21+0000
					)
					*/
					$data['password'] = "";					
					$data['newsletter'] = '';
					$data['telephone'] = "";
					$data['fax'] = '';
					$data['company'] = '';
					$data['company_id'] = '';
					$data['tax_id'] = '';
					$data['address_1'] = "";
					$data['address_2'] = '';
					$data['city'] = "";
					$data['country_id'] = "";
					$data['zone_id'] = "";
					$data['postcode'] = "";
					
					$data['firstname'] = $fbUserFName;
					
					if(strtotime($fbUserBDay)!='')
					{
						$birthYear =date('Y',strtotime($fbUserBDay));
						$birthMonth =date('m',strtotime($fbUserBDay));
						$birthDay =date('d',strtotime($fbUserBDay));
						$fbUserBirthDate = $birthDate=$birthYear.'/'.$birthMonth.'/'.$birthDay;
					}
					else
					{ 
						$fbUserBirthDate = "";
					}
					$data['birth_date'] = $fbUserBirthDate;
					$data['gender'] = $fbUserGender;
					$data['lastname'] = $fbUserLName;
					$data['email'] = $fbUserEmail;
					$data['fb_user_id'] = $fbUserId;
					$data['fb_token'] = $new_access_token;
					$data['fb_expire_time'] = $exipires_in;
					if($data['firstname'] !="" && $data['email'] && $data['fb_token'] !="" && $data['fb_user_id'] != "" )
					{
						$this->model_account_customer->addCustomer($data);	
					}
					$this->customer->login($fbUserEmail,'',true);
		    		$this->redirect($this->url->link('account/account', '', 'SSL')); 
				}
			 }  
	    }
		$this->data['signupAction'] = $this->url->link('account/login');	
		$this->data['loginAction'] = $this->url->link('account/login');	
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/login.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/login.tpl';
		} else {
			$this->template = 'default/template/account/login.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'	
		);
						
		$this->response->setOutput($this->render());
  	}
  
  	protected function validate() {
    	if (!$this->customer->login($this->request->post['email'], $this->request->post['password'])) {
      		$this->error['warning'] = $this->language->get('error_login');
    	}
	
		$customer_info = $this->model_account_customer->getCustomerByEmail($this->request->post['email']);
		
    	if ($customer_info && !$customer_info['approved']) {
      		$this->error['warning'] = $this->language->get('error_approved');
    	}		
		
    	if (!$this->error) {
      		return true;
    	} else {
      		return false;
    	}  	
  	}
	
		protected function validate_register() {
    	if ((utf8_strlen($this->request->post['firstname']) < 1) || (utf8_strlen($this->request->post['firstname']) > 32)) {
      		$this->error['firstname'] = $this->language->get('error_firstname');
    	}

    	if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32)) {
      		$this->error['lastname'] = $this->language->get('error_lastname');
    	}

    	if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
      		$this->error['email'] = $this->language->get('error_email');
    	}

    	if ($this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
      		$this->error['warning'] = $this->language->get('error_exists');
    	}

    	if ((utf8_strlen($this->request->post['password']) < 4) || (utf8_strlen($this->request->post['password']) > 20)) {
      		$this->error['password'] = $this->language->get('error_password');
    	}

    	if ($this->request->post['confirm'] != $this->request->post['password']) {
      		$this->error['confirm'] = $this->language->get('error_confirm');
    	}	
		 
		/*
		if ($this->request->post['country_id'] == '') {
      		$this->error['country_id'] = 'Please select Country.';
    	}*/
		/*
    	if ($this->request->post['province_id'] == '' || $this->request->post['province_id'] == "0") {
      		$this->error['province_id'] = 'Please select State.';
    	}*/
		/*
    	if ($this->request->post['city'] == "0" || $this->request->post['city'] == ''  ) {
      		$this->error['city'] = 'Please enter city';
    	}*/
    	
    	if (!$this->error) {
      		return true;
    	} else {
      		return false;
    	}
  	}
	
	function ajaxCheckEmail()
	{
		$this->load->model('account/customer');
		$email = $this->request->get['email'];
		if($this->model_account_customer->getTotalCustomersByEmail($email) == 0)
		{
			echo 'true';
		}
		else
		{
			echo 'false';
		}
	}
}
?>