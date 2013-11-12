<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of myshortcart
 *
 * @nproject (moh machfudh)
 */
class ControllerPaymentMyshortcart extends Controller {
    private $error = array();
    
    public function index() {
		$this->load->language('payment/myshortcart');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
			
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('myshortcart', $this->request->post);				
			
			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_all_zones'] = $this->language->get('text_all_zones');
		
		$this->data['entry_merchant'] = $this->language->get('entry_merchant');
		$this->data['entry_security'] = $this->language->get('entry_security');
		$this->data['entry_tokoweb'] = $this->language->get('entry_tokoweb');
		$this->data['entry_invoice'] = $this->language->get('entry_invoice');
		$this->data['entry_callback'] = $this->language->get('entry_callback');
		$this->data['entry_total'] = $this->language->get('entry_total');	
		$this->data['entry_order_status'] = $this->language->get('entry_order_status');		
		$this->data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
                
		$this->data['url_title'] = $this->language->get('url_title');
		$this->data['url_verify'] = $this->language->get('url_verify');
		$this->data['url_notify'] = $this->language->get('url_notify');
		$this->data['url_redirect'] = $this->language->get('url_redirect');
		$this->data['url_cancel'] = $this->language->get('url_cancel');
		$this->data['url_failed'] = $this->language->get('url_failed');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');

  		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

 		if (isset($this->error['merchant'])) {
			$this->data['error_merchant'] = $this->error['merchant'];
		} else {
			$this->data['error_merchant'] = '';
		}

 		if (isset($this->error['security'])) {
			$this->data['error_security'] = $this->error['security'];
		} else {
			$this->data['error_security'] = '';
		}

 		if (isset($this->error['paypal'])) {
			$this->data['error_paypal'] = $this->error['paypal'];
		} else {
			$this->data['error_paypal'] = '';
		}

 		if (isset($this->error['inv_paypal'])) {
			$this->data['error_inv_paypal'] = $this->error['inv_paypal'];
		} else {
			$this->data['error_inv_paypal'] = '';
		}
		
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_payment'),
			'href'      => $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('payment/myshortcart', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
				
		$this->data['action'] = $this->url->link('payment/myshortcart', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL');
		
		if (isset($this->request->post['myshortcart_merchant'])) {
			$this->data['myshortcart_merchant'] = $this->request->post['myshortcart_merchant'];
		} else {
			$this->data['myshortcart_merchant'] = $this->config->get('myshortcart_merchant');
		}

		if (isset($this->request->post['myshortcart_security'])) {
			$this->data['myshortcart_security'] = $this->request->post['myshortcart_security'];
		} else {
			$this->data['myshortcart_security'] = $this->config->get('myshortcart_security');
		}

		if (isset($this->request->post['myshortcart_tokoweb'])) {
			$this->data['myshortcart_tokoweb'] = $this->request->post['myshortcart_tokoweb'];
		} else {
			$this->data['myshortcart_tokoweb'] = $this->config->get('myshortcart_tokoweb');
		}

		if (isset($this->request->post['myshortcart_inv_tokoweb'])) {
			$this->data['myshortcart_inv_tokoweb'] = $this->request->post['myshortcart_inv_tokoweb'];
		} else {
			$this->data['myshortcart_inv_tokoweb'] = $this->config->get('myshortcart_inv_tokoweb');
		}
		
		$this->data['callback'] = HTTP_CATALOG . 'index.php?route=payment/myshortcart/callback';
		
		/*if (isset($this->request->post['myshortcart_total'])) {
			$this->data['myshortcart_total'] = $this->request->post['myshortcart_total'];
		} else {
			$this->data['myshortcart_total'] = $this->config->get('myshortcart_total'); 
		} */
				
		if (isset($this->request->post['myshortcart_order_status_id'])) {
			$this->data['myshortcart_order_status_id'] = $this->request->post['myshortcart_order_status_id'];
		} else {
			$this->data['myshortcart_order_status_id'] = $this->config->get('myshortcart_order_status_id'); 
		} 
		
		$this->load->model('localisation/order_status');
		
		$this->data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();
		
		if (isset($this->request->post['myshortcart_geo_zone_id'])) {
			$this->data['myshortcart_geo_zone_id'] = $this->request->post['myshortcart_geo_zone_id'];
		} else {
			$this->data['myshortcart_geo_zone_id'] = $this->config->get('myshortcart_geo_zone_id'); 
		} 

		$this->load->model('localisation/geo_zone');
										
		$this->data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();
		
		if (isset($this->request->post['myshortcart_status'])) {
			$this->data['myshortcart_status'] = $this->request->post['myshortcart_status'];
		} else {
			$this->data['myshortcart_status'] = $this->config->get('myshortcart_status');
		}
		
		if (isset($this->request->post['myshortcart_sort_order'])) {
			$this->data['myshortcart_sort_order'] = $this->request->post['myshortcart_sort_order'];
		} else {
			$this->data['myshortcart_sort_order'] = $this->config->get('myshortcart_sort_order');
		}
              

		$this->template = 'payment/myshortcart.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'payment/myshortcart')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->request->post['myshortcart_merchant']) {
			$this->error['merchant'] = $this->language->get('error_merchant');
		}

		if (!$this->request->post['myshortcart_security']) {
			$this->error['security'] = $this->language->get('error_security');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}

?>
