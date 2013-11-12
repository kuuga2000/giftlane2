<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of myshortcart
 *
 * @nProklin (moh machfudh)
 */
class ControllerPaymentMyshortcart extends Controller {
    
    protected function index() {

		$this->language->load('payment/myshortcart');
		
		$this->data['button_confirm'] = $this->language->get('button_confirm');
		
//		$this->data['action'] = $this->url->link('payment/myshortcart/send');
               $this->data['action'] = 'https://apps.myshortcart.com/payment/request-payment/';

		$this->load->model('checkout/order');
		
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
		
		$this->data['ap_merchant'] = $this->config->get('myshortcart_merchant');

		$this->data['url_web'] = $this->url;
		$this->data['ap_security'] = $this->config->get('myshortcart_security');
		$this->data['ap_tokoweb'] = $this->config->get('myshortcart_tokoweb');
		$this->data['ap_inv_tokoweb'] = $this->config->get('myshortcart_inv_tokoweb');
		$this->data['ap_amount'] = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);
		$this->data['ap_currency'] = $order_info['currency_code'];
		$this->data['ap_purchasetype'] = 'Item';
		$this->data['ap_itemname'] = $this->config->get('config_name') . ' - #' . $this->session->data['order_id'];
		$this->data['ap_itemcode'] = $this->session->data['order_id'];
		
                $this->data['tranidmercant'] = $this->config->get('myshortcart_inv_tokoweb').$this->session->data['order_id'];;

                $StringProduk = '' ;
                foreach ($this->cart->getProducts() as $product) {
                        $StringProduk .= $product['name'].',';
                        $StringProduk .= $product['price'].',';
                        $StringProduk .= $product['quantity'].',';
                        $StringProduk .= $product['total'].',';
                }
                
                $this->data['data_product'] = $StringProduk ;
                
                $datainsert['tranidmercant'] = $this->data['tranidmercant'];
                $datainsert['amount'] = $this->data['ap_amount'];
                $datainsert['order_id'] = $this->session->data['order_id'];
                
                if ($this->customer->isLogged()) {
				$this->data['customer_id'] = $this->customer->getId();
				$this->data['customer_group_id'] = $this->customer->getCustomerGroupId();
				$this->data['firstname'] = $this->customer->getFirstName();
				$this->data['lastname'] = $this->customer->getLastName();
				$this->data['email'] = $this->customer->getEmail();
				$this->data['telephone'] = $this->customer->getTelephone();
				$this->data['fax'] = $this->customer->getFax();
			
				$this->load->model('account/address');
				
				$payment_address = $this->model_account_address->getAddress($this->session->data['payment_address_id']);
			} elseif (isset($this->session->data['guest'])) {
				$this->data['customer_id'] = 0;
				$this->data['customer_group_id'] = $this->session->data['guest']['customer_group_id'];
				$this->data['firstname'] = $this->session->data['guest']['firstname'];
				$this->data['lastname'] = $this->session->data['guest']['lastname'];
				$this->data['email'] = $this->session->data['guest']['email'];
				$this->data['telephone'] = $this->session->data['guest']['telephone'];
				$this->data['fax'] = $this->session->data['guest']['fax'];
				
				$payment_address = $this->session->data['guest']['payment'];
			}
                
			$this->data['words'] = sha1(trim($this->data['ap_amount']).trim($this->data['ap_security']).trim($this->data['tranidmercant']));
			$this->data['allname'] = $this->data['firstname'] .' '.$this->data['lastname'] ;
			$this->data['payment_firstname'] = $payment_address['firstname'];
			$this->data['payment_lastname'] = $payment_address['lastname'];	
			$this->data['payment_company'] = $payment_address['company'];	
			$this->data['payment_company_id'] = $payment_address['company_id'];	
			$this->data['payment_tax_id'] = $payment_address['tax_id'];	
			$this->data['payment_address_1'] = $payment_address['address_1'].' ';
			$this->data['payment_address_2'] = $payment_address['address_2'];
			$this->data['payment_city'] = $payment_address['city'];
			$this->data['payment_postcode'] = $payment_address['postcode'];
			$this->data['payment_zone'] = $payment_address['zone'];
			$this->data['payment_zone_id'] = $payment_address['zone_id'];
			$this->data['payment_country'] = $payment_address['country'];
			$this->data['payment_country_id'] = $payment_address['country_id'];
			$this->data['payment_address_format'] = $payment_address['address_format'];
			
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/myshortcart.tpl')) {
	                        $this->addMyshortcart($datainsert);
				$this->template = $this->config->get('config_template') . '/template/payment/myshortcart.tpl';
			} else {
	                        $this->addMyshortcart($datainsert);
				$this->template = 'default/template/payment/myshortcart.tpl';
			}		
		
		$this->render();
	}	 
	
	private function simpleXor($string, $password) {
		$data = array();

		for ($i = 0; $i < strlen($password); $i++) {
			$data[$i] = ord(substr($password, $i, 1));
		}

		$output = '';

		for ($i = 0; $i < strlen($string); $i++) {
    		$output .= chr(ord(substr($string, $i, 1)) ^ ($data[$i % strlen($password)]));
		}

		return $output;		
	}

	public function send() {
		$this->load->model('checkout/order');
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

		$this->data['ap_merchant'] = $this->config->get('myshortcart_merchant');

		$this->data['url_web'] = $this->url->link('common/home');
		$this->data['ap_security'] = $this->config->get('myshortcart_security');
		$this->data['ap_paypal'] = $this->config->get('myshortcart_paypal');
		$this->data['ap_inv_paypal'] = $this->config->get('myshortcart_inv_paypal');
		$this->data['ap_amount'] = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);
		$this->data['ap_currency'] = $order_info['currency_code'];
		$this->data['ap_purchasetype'] = 'Item';
		$this->data['ap_itemname'] = $this->config->get('config_name') . ' - #' . $this->session->data['order_id'];
		$this->data['ap_itemcode'] = $this->session->data['order_id'];

		$security_code = $this->data['ap_security'].$this->session->data['order_id'];
		
		$data = array();
		$data['orderid'] = $this->session->data['order_id'];
		$data['jumlah'] = $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false);

           
		$crypt_data = array();
   		
		foreach($data as $key => $value){
   			$crypt_data[] = $key . '=' . $value;
		}

		$this->data['crypt'] = base64_encode($this->simpleXor(utf8_decode(implode('&', $crypt_data)), $security_code));

		$this->data['ap_returnurl'] = str_replace('&amp;', '&', $this->url->link('payment/myshortcart/success', 'order_id=' . $this->session->data['order_id'].'&crypt='.$this->data['crypt']));
		$this->data['ap_notifyurl'] = str_replace('&amp;', '&', $this->url->link('checkout/checkout'));

		$this->data['ap_cancelurl'] = $this->url->link('checkout/checkout', '', 'SSL');
		
		$_SESSION['crypt'] = $this->data['crypt'];

	}
        
        public function myverify(){
                $this->load->model('checkout/order');
//		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
                
                $this->data['mytransidmerchant'] = $this->request->post['TRANSIDMERCHANT']; 
                $this->data['myamount'] = $this->request->post['AMOUNT'];
                $this->data['mystoreid'] = $this->request->post['STOREID'];
                
                $dataverifikasi = array();
                $dataverifikasi['tranidmercant'] =  $this->data['mytransidmerchant'];
                $dataverifikasi['amount'] = $this->data['myamount'];
                
                if($this->request->server['REMOTE_ADDR'] == '103.10.128.11') {
                    
                        $hasilverifikasi = $this->getVerifikasi($dataverifikasi);
                        if ($hasilverifikasi){
                            $this->addVerifikasi($this->data['mytransidmerchant'], TRUE);
                            echo "Continue";
                        }else{
                            $this->addVerifikasi($this->data['mytransidmerchant'], FALSE);
                            echo "Stop";
                        }
                }
            
        }
        
         public function mynotify(){
                $this->load->model('checkout/order');
//		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
                
                $this->data['mytransidmerchant'] = $this->request->post['TRANSIDMERCHANT']; 
                $this->data['myamount'] = $this->request->post['AMOUNT'];
                $this->data['myresult'] = $this->request->post['RESULT'];
      
                $dataverifikasi = array();
                $dataverifikasi['tranidmercant'] =  $this->data['mytransidmerchant'];
                $dataverifikasi['amount'] = $this->data['myamount'];
                $dataverifikasi['result'] = $this->data['myresult'];
                
                if($this->request->server['REMOTE_ADDR'] == '103.10.128.11') {
                    
                        if ( strtoupper($this->data['myresult']) == "SUCCESS"){
                            $isTrue = TRUE;
                        }else{
                            $isTrue = FALSE; 
                        }                   
                        $hasilverifikasi = $this->getNotify($dataverifikasi);
                        if ($hasilverifikasi){
                            $this->addNotify($dataverifikasi, TRUE);
                            echo "Continue";
                        }else{
                            $this->addNotify($dataverifikasi, FALSE);
                            echo "Stop";
                        }
                }
            
        }
        
        public function myredirect(){
                $this->load->model('checkout/order');
//		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
                
                $this->data['mytransidmerchant'] = $this->request->post['TRANSIDMERCHANT']; 
                $this->data['mystatuscode'] = $this->request->post['STATUSCODE'];
                $this->data['mytransdate'] = $this->request->post['TRANSDATE'];
                $this->data['myptype'] = $this->request->post['PTYPE'];
                $this->data['myamount'] = $this->request->post['AMOUNT'];
                $this->data['myresult'] = $this->request->post['RESULT'];
                $this->data['myxtrainfo'] = $this->request->post['EXTRAINFO'];
      
                $dataverifikasi = array();
                $dataverifikasi['tranidmercant'] =  $this->data['mytransidmerchant'];
                $dataverifikasi['statuscode'] = $this->data['mystatuscode'];
                $dataverifikasi['transdate'] = $this->data['mytransdate'];
                $dataverifikasi['ptype'] = $this->data['myptype'];
                $dataverifikasi['amount'] = $this->data['myamount'];
                $dataverifikasi['result'] = $this->data['myresult'];
                $dataverifikasi['xtrainfo'] = $this->data['myxtrainfo'];
                
//                if($this->request->server['REMOTE_ADDR'] == '103.10.128.11') {
                     $this->addRedirect($dataverifikasi);
                     if($dataverifikasi['statuscode'] === "00"){
                     $this->success();
                     }else{
                     $this->mycancel();    
                     }
//                }
            
        }
        
        public function mycancel(){
           $this->load->model('checkout/order');
           $this->redirect($this->url->link('checkout/mycancel'));
            
        }

        public function success() {
            $this->load->model('checkout/order');
            $this->model_checkout_order->confirm($this->session->data['order_id'], $this->config->get('myshortcart_order_status_id'));
            $this->redirect($this->url->link('checkout/success'));
	}
        
     private function getMyshortcart($order_id){
         $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "myshortcart WHERE msc_order_id = '" . $order_id . "'");
		
		return $query->row;
         
     }
     
     private function getVerifikasi($data){
         $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "myshortcart WHERE transidmerchant = '" . $data['tranidmercant'] . "' and amount = '". $data['amount'] . "' and result_trx = 'Requested". "'" );
		
		return $query->row;
         
     }
        
     private function addMyshortcart($data) {
         
         if (isset($data['order_id'])){
             $order_id = $this->getMyshortcart($data['order_id']);
             if ($order_id){
                 $this->db->query("UPDATE " . DB_PREFIX . "myshortcart SET transdate = NOW() WHERE msc_order_id = '" . $order_id . "'");
             }else{
                 $this->db->query("INSERT INTO " . DB_PREFIX . "myshortcart SET transidmerchant = '" .$data['tranidmercant'] . "', amount = '" . $data['amount'] . "', msc_order_id = '" . $data['order_id'] ."', result_trx = 'Requested". "', transdate = NOW()");
             }
         }
     }
     
     private function addVerifikasi($transidmerchent,$isTrue) {
         
         if($isTrue){
            $this->db->query("UPDATE " . DB_PREFIX . "myshortcart SET start_time = NOW() , result_trx = 'Verified'  WHERE transidmerchant = '" . $transidmerchent . "'");
         }else{
            $this->db->query("UPDATE " . DB_PREFIX . "myshortcart SET start_time = NOW() , result_trx = 'FAILED - INJECTION DETECTED'  WHERE transidmerchant = '" . $transidmerchent . "'"); 
         }    
     }
     
     private function getNotify($data){
         $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "myshortcart WHERE transidmerchant = '" . $data['tranidmercant'] . "' and amount = '". $data['amount'] . "' and result_trx = 'Verified". "'" );
		
		return $query->row;
         
     }
     
      private function addNotify($data,$isTrue) {
         
         if($isTrue){
            $this->db->query("UPDATE " . DB_PREFIX . "myshortcart SET start_time = NOW() , result_trx = '". $data['result'] ."'  WHERE transidmerchant = '" . $data['tranidmercant'] . "'");
         }else{
            $this->db->query("UPDATE " . DB_PREFIX . "myshortcart SET start_time = NOW() , result_trx = 'FAILED - INJECTION DETECTED'  WHERE transidmerchant = '" . $data['tranidmercant'] . "'"); 
         }    
     }
     
      private function addRedirect($data) {

         $this->db->query("UPDATE " . DB_PREFIX . "myshortcart SET finish_time = NOW() , status_code = '". $data['statuscode'] ."', result_trx = '". $data['result'] ."', transdate = '". $data['transdate'] ."', ptype = '". $data['ptype'] ."', amount = '". $data['amount'] ."', extrainfo = '". $data['xtrainfo'] ."'  WHERE transidmerchant = '" . $data['tranidmercant'] . "'");
     }
}

?>
