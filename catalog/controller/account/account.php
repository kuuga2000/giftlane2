<?php 
class ControllerAccountAccount extends Controller { 
	public function index() {
		if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('account/account', '', 'SSL');
	  
	  		$this->redirect($this->url->link('account/login', '', 'SSL'));
    	} 
		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_catalog_limit');
			//$limit=6;
			//die;
		}
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}	
		$start =($page - 1) * $limit;
		
		
		$this->data['accountEdit'] = $this->url->link('account/edit', '', 'SSL');
		$this->data['addressEdit'] = $this->url->link('account/billandship', '', 'SSL');
		$this->data['confirmOrder'] = $this->url->link('account/confirmorder', '', 'SSL');
		$this->data['allOrder'] = $this->url->link('account/order', '', 'SSL');
		$this->load->model('account/customer');
		$this->load->model('account/address');
		$this->load->model('account/order');
		
		$getId=$this->customer->getId();
		
		$customerDetails = $this->model_account_customer->getCustomer($getId);
		if ($customerDetails) {
			$addressId=$this->data['address_id'] = $customerDetails['address_id'];
		} else {
			$addressId=$this->data['address_id'] = '';
		}
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
			$this->data['custtelephone'] = $customerDetails['telephone'];
		} else {
			$this->data['custtelephone'] = '';
		}
		if ($customerDetails) {
			$this->data['fax'] = $customerDetails['fax'];
		} else {
			$this->data['fax'] = '';
		}
		if ($customerDetails) {
			$this->data['newsletters'] = $customerDetails['newsletter'];
		} else {
			$this->data['newsletters'] = '';
		}
		if ($customerDetails) {
			$this->data['customer_group_id'] = $customerDetails['customer_group_id'];
		} else {
			$this->data['customer_group_id'] = '';
		}
		
		$customerAddressDetails = $this->model_account_address->getAddress($addressId);
		$customerBillingAddressDetails = $this->model_account_address->getbillingAddress();
		//echo '<pre>';
		//print_r($customerAddressDetails);
		///Get billing address information
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
			$this->data['telephone'] = $customerBillingAddressDetails['telephone'];
		} else {
			$this->data['telephone'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['address_1'] = $customerBillingAddressDetails['address_1'];
		} else {
			$this->data['address_1'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['address_2'] = $customerBillingAddressDetails['address_2'];
		} else {
			$this->data['address_2'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['city'] = $customerBillingAddressDetails['city'];
		} else {
			$this->data['city'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['postcode'] = $customerBillingAddressDetails['postcode'];
		} else {
			$this->data['postcode'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['country'] = $customerBillingAddressDetails['country'];
		} else {
			$this->data['country'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['zone'] = $customerBillingAddressDetails['zone'];
		} else {
			$this->data['zone'] = '';
		}
		
		///Get shipping address information
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
			$this->data['shipping_telephone'] = $customerAddressDetails['telephone'];
		} else {
			$this->data['shipping_telephone'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_address_1'] = $customerAddressDetails['address_1'];
		} else {
			$this->data['shipping_address_1'] = '';
		}
		if ($customerBillingAddressDetails) {
			$this->data['shipping_address_2'] = $customerBillingAddressDetails['address_2'];
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
			$this->data['shipping_country'] = $customerAddressDetails['country'];
		} else {
			$this->data['shipping_country'] = '';
		}
		if ($customerAddressDetails) {
			$this->data['shipping_zone'] = $customerAddressDetails['zone'];
		} else {
			$this->data['zone'] = '';
		}
		
		$this->data['customerOrderDetails']=array();
		$this->data['customerOrderDetails']= $customerOrderDetails = $this->model_account_order->getOrdersDetails($start,$limit);
		
		//die;
		$this->language->load('account/account');
		
		
		$this->document->setTitle($this->language->get('heading_title'));

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
		
		if (isset($this->session->data['success'])) {
    		$this->data['success'] = $this->session->data['success'];
			
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_my_account'] = $this->language->get('text_my_account');
		$this->data['text_my_orders'] = $this->language->get('text_my_orders');
		$this->data['text_my_newsletter'] = $this->language->get('text_my_newsletter');
    	$this->data['text_edit'] = $this->language->get('text_edit');
    	$this->data['text_password'] = $this->language->get('text_password');
    	$this->data['text_address'] = $this->language->get('text_address');
		$this->data['text_wishlist'] = $this->language->get('text_wishlist');
    	$this->data['text_order'] = $this->language->get('text_order');
    	$this->data['text_download'] = $this->language->get('text_download');
		$this->data['text_reward'] = $this->language->get('text_reward');
		$this->data['text_return'] = $this->language->get('text_return');
		$this->data['text_transaction'] = $this->language->get('text_transaction');
		$this->data['text_newsletter'] = $this->language->get('text_newsletter');

    	$this->data['edit'] = $this->url->link('account/edit', '', 'SSL');
    	$this->data['password'] = $this->url->link('account/password', '', 'SSL');
		$this->data['address'] = $this->url->link('account/address', '', 'SSL');
		$this->data['wishlist'] = $this->url->link('account/wishlist');
    	$this->data['order'] = $this->url->link('account/order', '', 'SSL');
    	$this->data['download'] = $this->url->link('account/download', '', 'SSL');
		$this->data['return'] = $this->url->link('account/return', '', 'SSL');
		$this->data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
		$this->data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');
		
		if ($this->config->get('reward_status')) {
			$this->data['reward'] = $this->url->link('account/reward', '', 'SSL');
		} else {
			$this->data['reward'] = '';
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/account.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/account.tpl';
		} else {
			$this->template = 'default/template/account/account.tpl';
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

    function newssubscribe()
	{
		
		$this->load->model('account/customer');

    	$this->model_account_customer->updatenewsletter($this->request->get['subscribe']);
		if($this->request->get['subscribe']==1)
		{
			echo 'Newletter subcribed successfully.';
		}
		else
		{
			echo 'Newsletter unsubcribed successfully.';
		}
		
	}	
	 function newssubscribeEmail()
	{
		
		$this->load->model('account/customer');
    	$this->model_account_customer->subscribenewsletter($this->request->get['subscribeEmail']);
		
		
		echo 'Newsletter subcribed successfully.';
		
		
	}
		
	function ajaxCheckEmail()
	{
		$this->load->model('account/customer');
		$email = $this->request->get['subscribe'];
		if($this->model_account_customer->checkSubscribeEmail($email) == 0)
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