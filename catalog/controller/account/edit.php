<?php
class ControllerAccountEdit extends Controller {
	private $error = array();

	public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/edit', '', 'SSL');

			$this->redirect($this->url->link('account/login', '', 'SSL'));
		}

		$this->language->load('account/edit');
		$this->load->model('account/customer');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$getId=$this->customer->getId();
		$customerDetails = $this->model_account_customer->getCustomer($getId);
		if ($customerDetails) {
			$this->data['firstname'] = $customerDetails['firstname'];
		} else {
			$this->data['firstname'] = '';
		}
		if ($customerDetails) {
			$this->data['lastname'] = $customerDetails['lastname'];
		} else {
			$this->data['lastname'] = '';
		}
		if ($customerDetails) {
			$this->data['email'] = $customerDetails['email'];
		} else {
			$this->data['email'] = '';
		}
		if ($customerDetails) {
			$this->data['gender'] = $customerDetails['gender'];
		} else {
			$this->data['gender'] = '';
		}
		if ($customerDetails) {			
			$date=$this->data['birth_date'] =$customerDetails['birth_date'];
			if(strtotime($date)=='')
			{
				$this->data['birth_year']= '';
				$this->data['birth_day']= '';
				$this->data['birth_month']='';
			}
			else
			{ 
				$this->data['birth_year']=date('Y',strtotime($date));
				$this->data['birth_month']=date('m',strtotime($date));
				$this->data['birth_day']=date('d',strtotime($date));
			}
			 
		} 
		else 
		{
			$this->data['birth_date']= '';
			$this->data['birth_year']='';
			$this->data['birth_month']='';
			$this->data['birth_day']='';
		}
		$this->load->model('account/customer');
		
			if (($this->request->server['REQUEST_METHOD'] == 'POST') )  				
			{
				  if(isset($this->request->post['updateDetails']) && $this->validate())
				  {
				  	
					$this->model_account_customer->editCustomer($this->request->post);
					
					$this->session->data['success'] = $this->language->get('text_success');

					$this->redirect($this->url->link('account/edit', '', 'SSL'));
				 }
				 if(isset($this->request->post['changepass'])) 
				 {
				 	$newPass=$this->request->post['newPass'];
			
					$this->model_account_customer->editPasswordById($getId,$newPass);
					
					$this->session->data['success'] = 'Password Updated Successfully';

					$this->redirect($this->url->link('account/edit', '', 'SSL'));
				}	
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
        	'text'      => $this->language->get('text_edit'),
			'href'      => $this->url->link('account/edit', '', 'SSL'),       	
        	'separator' => $this->language->get('text_separator')
      	);
		
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_your_details'] = $this->language->get('text_your_details');

		$this->data['entry_firstname'] = $this->language->get('entry_firstname');
		$this->data['entry_lastname'] = $this->language->get('entry_lastname');
		$this->data['entry_email'] = $this->language->get('entry_email');
		$this->data['entry_telephone'] = $this->language->get('entry_telephone');
		$this->data['entry_fax'] = $this->language->get('entry_fax');

		$this->data['button_continue'] = $this->language->get('button_continue');
		$this->data['button_back'] = $this->language->get('button_back');

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
			

		$this->data['action'] = $this->url->link('account/edit', '', 'SSL');

		if ($this->request->server['REQUEST_METHOD'] != 'POST') {
			$customer_info = $this->model_account_customer->getCustomer($this->customer->getId());
		}

		if (isset($this->request->post['firstname'])) {
			$this->data['firstname'] = $this->request->post['firstname'];
		} elseif (isset($customer_info)) {
			$this->data['firstname'] = $customer_info['firstname'];
		} else {
			$this->data['firstname'] = '';
		}

		if (isset($this->request->post['lastname'])) {
			$this->data['lastname'] = $this->request->post['lastname'];
		} elseif (isset($customer_info)) {
			$this->data['lastname'] = $customer_info['lastname'];
		} else {
			$this->data['lastname'] = '';
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} elseif (isset($customer_info)) {
			$this->data['email'] = $customer_info['email'];
		} else {
			$this->data['email'] = '';
		}
		if (isset($this->request->post['telephone'])) {
			$this->data['telephone'] = $this->request->post['telephone'];
		} elseif (isset($customer_info)) {
			$this->data['telephone'] = $customer_info['telephone'];
		} else {
			$this->data['telephone'] = '';
		}

		if (isset($this->request->post['fax'])) {
			$this->data['fax'] = $this->request->post['fax'];
		} elseif (isset($customer_info)) {
			$this->data['fax'] = $customer_info['fax'];
		} else {
			$this->data['fax'] = '';
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
		
		$this->data['back'] = $this->url->link('account/account', '', 'SSL');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/edit.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/edit.tpl';
		} else {
			$this->template = 'default/template/account/edit.tpl';
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

	protected function validate() {
		
		if ((utf8_strlen($this->request->post['firstname']) < 1) || (utf8_strlen($this->request->post['firstname']) > 32)) {
			$this->error['firstname'] = $this->language->get('error_firstname');
		}

		if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32)) {
			$this->error['lastname'] = $this->language->get('error_lastname');
		}

		if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
			$this->error['email'] = $this->language->get('error_email');
		}
		
		/*if (($this->customer->getEmail() != $this->request->post['email']) && $this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
			$this->error['warning'] = $this->language->get('error_exists');
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
		$getId=$this->customer->getId();
		$email = $this->request->get['email'];
		if($this->model_account_customer->getTotalCustomersByEmailId($getId,$email) == 0)
		{
			echo 'true';
		}
		else
		{
			echo 'false';
		}
	}
	
	function ajaxCheckPass()
	{
		$this->load->model('account/customer');
		$getId=$this->customer->getId();
		$currentPass = $this->request->get['currentPass'];
		if($this->model_account_customer->checkPassword($getId,$currentPass) > 0)
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