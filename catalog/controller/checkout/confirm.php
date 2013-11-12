<?php 
class ControllerCheckoutConfirm extends Controller { 
private $error = array();
	public function index() {
		$redirect = '';
		
		$this->load->model('account/address');
		
		if ($this->customer->isLogged() && isset($this->session->data['shipping_address_id']) && count($this->session->data['shipping_address_id']) == count($this->session->data['cart'])) {					
				$shipping_address = $this->model_account_address->getAddress($this->session->data['shipping_address_id']);		
			}
			else
			{
				$this->session->data['receipient_warning'] = 'Please add receipient for all products.';		
				$redirect = $this->url->link('checkout/cart', '', 'SSL');
			}
			
		
		// Validate if payment address has been set.

		$this->load->model('account/address');
			$this->load->model('catalog/manufacturer');
		if ($this->customer->isLogged() && isset($this->session->data['payment_address_id'])) {
			$payment_address = $this->model_account_address->getAddress($this->session->data['payment_address_id']);		
		} elseif (isset($this->session->data['guest'])) {
			$payment_address = $this->session->data['guest']['payment'];
		}	
		
		//---------- Coupon
		$this->data['coupon'] = '';
		$this->data['couponAction'] = $this->url->link('checkout/confirm');
		if (isset($this->request->post['coupon']) && $this->validateCoupon()) { 
			$this->session->data['coupon'] = $this->request->post['coupon'];
				$this->data['coupon'] = $this->request->post['coupon'];
			$this->session->data['success'] = 'Promo code appied successfully.';
			
			//$this->redirect($this->url->link('checkout/confirm'));
		}
		
		// Validate cart has products and has stock.	
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$redirect = $this->url->link('checkout/cart');				
		}	
		
		// Validate minimum quantity requirments.			
		$products = $this->cart->getProducts();
				
		foreach ($products as $product) {
			$product_total = 0;
				
			foreach ($products as $product_2) {
				if ($product_2['product_id'] == $product['product_id']) {
					$product_total += $product_2['quantity'];
				}
			}		
			
			if ($product['minimum'] > $product_total) {
				$redirect = $this->url->link('checkout/cart');
				
				break;
			}				
		}

		if (!$redirect) {
			
			$this->language->load('checkout/checkout');
			
			$data = array();
			
			$data['invoice_prefix'] = $this->config->get('config_invoice_prefix');
			$data['store_id'] = $this->config->get('config_store_id');
			$data['store_name'] = $this->config->get('config_name');
			
			if ($data['store_id']) {
				$data['store_url'] = $this->config->get('config_url');		
			} else {
				$data['store_url'] = HTTP_SERVER;	
			}
			
			if ($this->customer->isLogged()) {
				$data['customer_id'] = $this->customer->getId();
				$data['customer_group_id'] = $this->customer->getCustomerGroupId();
				$data['firstname'] = $this->customer->getFirstName();
				$data['lastname'] = $this->customer->getLastName();
				$data['email'] = $this->customer->getEmail();
				$data['telephone'] = $this->customer->getTelephone();
				$data['fax'] = $this->customer->getFax();
				$data['birth_date'] = $this->customer->getBirthDate();
				
			
				$this->load->model('account/address');
				//$this->session->data['payment_address_id']= $this->customer->getDefaultAddressId(); 
				$billingAddress = $this->model_account_address->getbillingAddress();
			
				if(!$billingAddress)
				{
					$this->session->data['payment_address_id']= $this->customer->getDefaultAddressId(); 
				}
				else
				{
					$this->session->data['payment_address_id']= $billingAddress['address_id'];
				}
				
				$payment_address = $this->model_account_address->getAddress($this->session->data['payment_address_id']);
				//echo $payment_address['add_title'];exit;
				//print_r($payment_address);exit;
			} else{
				$this->redirect($this->url->link('account/login', '', 'SSL'));	
			}
			
			//echo $payment_address['address_id'];exit;
			//added by kuuga for billing 'address name'
			$data['payment_addtitle'] = $payment_address['add_title'];
			$data['payment_id'] = $payment_address['address_id'];//$payment_address['address_id'];
			
			$data['payment_firstname'] = $payment_address['firstname'];
			$data['payment_lastname'] = $payment_address['lastname'];	
			$data['telephone'] = $payment_address['telephone'];	
			
			$data['payment_company'] = $payment_address['company'];	
			$data['payment_company_id'] = $payment_address['company_id'];	
			$data['payment_tax_id'] = $payment_address['tax_id'];	
			$data['payment_address_1'] = $payment_address['address_1'];
			$data['payment_address_2'] = $payment_address['address_2'];
			$data['payment_city'] = $payment_address['city'];
			$data['payment_postcode'] = $payment_address['postcode'];
			$data['payment_zone'] = $payment_address['zone'];
			$data['payment_zone_id'] = $payment_address['zone_id'];
			$data['payment_country'] = $payment_address['country'];
			$data['payment_country_id'] = $payment_address['country_id'];
			$data['payment_address_format'] = $payment_address['address_format'];
			
			$product_data = array();
			$this->load->model('catalog/product');
			foreach ($this->cart->getProducts() as $product) {
				$option_data = array();
	
				foreach ($product['option'] as $option) {
					if ($option['type'] != 'file') {
						$value = $option['option_value'];	
					} else {
						$value = $this->encryption->decrypt($option['option_value']);
					}	
					
					$option_data[] = array(
						'product_option_id'       => $option['product_option_id'],
						'product_option_value_id' => $option['product_option_value_id'],
						'option_id'               => $option['option_id'],
						'option_value_id'         => $option['option_value_id'],								   
						'name'                    => $option['name'],
						'value'                   => $value,
						'type'                    => $option['type']
					);					
				}
	 
	 						
				$shippingAddressArr = $this->model_account_address->getAddress($this->session->data['shipping_address_id'][$product['product_id']]);
		
				$greetingId = '';
				$greeting = '';
				$greetingPrice = '';
				if(isset($this->session->data['greeting'][$product['product_id']]))
				{
					$greetingId = $this->session->data['greeting'][$product['product_id']]['greetingId'];
					$greetingName = $this->model_catalog_product->getProduct($greetingId);
					
					
						
					if($this->session->data['greeting'][$product['product_id']]['greetingType'] == 'std')
					{
						$greeting .= 'Standard ';
						$greetingPrice = (int)$greetingName['price'] * $product['quantity']; 
					}
					else
					{
						$greeting .= 'Premium ';
						$greetingPrice = ((int)$greetingName['price'] +(int)$this->config->get('greetingPremium')) * $product['quantity']; 
					}
					$greeting .= $greetingName['name'];
				}
				
				$wrappingId = '';
				$wrapping = '';
				$wrappingPrice = '';
				if(isset($this->session->data['wrapping'][$product['product_id']]))
				{
					$wrappingId = $this->session->data['wrapping'][$product['product_id']]['wrapId'];
					$wrappingName = $this->model_catalog_product->getProduct($wrappingId);
					
					if($this->session->data['wrapping'][$product['product_id']]['wrappingType'] == 'std')
					{
						$wrapping .= 'Standard ';
						$wrappingPrice = (int)$wrappingName['price'] * $product['quantity']; 
					}
					else
					{
						$wrapping .= 'Premium ';
						$wrappingPrice = ((int)$wrappingName['price'] + (int)$this->config->get('wrappingPremium')) * $product['quantity']; 
					}
					$wrapping .= $wrappingName['name'];
				}
	
				$manufaturer = $this->model_catalog_manufacturer->getManufacturer($product['manufacturer_id']);
				$manufaturerName = '';
				if(isset($manufaturer['name']))
				{
					$$manufaturerName = $manufaturer['name'];
				}
				
				$shippindUsername = $shippingAddressArr['firstname'].' '.$shippingAddressArr['lastname'];
				
				$productWeight = 1;
				if($product['weight'] > 1)
				{
					$productWeight = ceil($product['weight']);
				}
				$product_data[$this->session->data['shipping_address_id'][$product['product_id']]]['products'][] = array(
					'product_id' => $product['product_id'],
					'manufaturer' => $manufaturerName,
					'name'       => $product['name'],
					'model'      => $product['model'],
					'option'     => $option_data,
					'download'   => $product['download'],
					'quantity'   => $product['quantity'],
					'subtract'   => $product['subtract'],
					'price'      => $product['price'],
					'total'      => $product['total'],
					'weight'     => $productWeight,
					'tax'        => $this->tax->getTax($product['price'], $product['tax_class_id']),
					'reward'     => $product['reward'],
					'receipientName' => $shippindUsername,
					'greeting'   => $greeting,
					'greetingId' => $greetingId,
					'greetingPrice' => $greetingPrice,
					'wrapping'  => $wrapping,
					'wrappingId' => $wrappingId,
					'wrappingPrice' => $wrappingPrice
				); 
			}
			
			
			// Gift Voucher ------- we are not having this
			$voucher_data = array();
			$data['vouchers'] = $voucher_data;
			
			//$data['products'] = $product_data;
			//$data['totals'] = $total_data;
			
			if(isset($this->session->data['comment']))
			{
				$data['comment'] = $this->session->data['comment'];
			}
			$data['comment'] = '';
			
			//---------------------- affiliate tracking values setting to none
			$data['affiliate_id'] = 0;
			$data['commission'] = 0;
				
				
			$data['language_id'] = $this->config->get('config_language_id');
			$data['currency_id'] = $this->currency->getId();
			$data['currency_code'] = $this->currency->getCode();
			$data['currency_value'] = $this->currency->getValue($this->currency->getCode());
			$data['ip'] = $this->request->server['REMOTE_ADDR'];
			
			if (!empty($this->request->server['HTTP_X_FORWARDED_FOR'])) {
				$data['forwarded_ip'] = $this->request->server['HTTP_X_FORWARDED_FOR'];	
			} elseif(!empty($this->request->server['HTTP_CLIENT_IP'])) {
				$data['forwarded_ip'] = $this->request->server['HTTP_CLIENT_IP'];	
			} else {
				$data['forwarded_ip'] = '';
			}
			
			if (isset($this->request->server['HTTP_USER_AGENT'])) {
				$data['user_agent'] = $this->request->server['HTTP_USER_AGENT'];	
			} else {
				$data['user_agent'] = '';
			}
			
			if (isset($this->request->server['HTTP_ACCEPT_LANGUAGE'])) {
				$data['accept_language'] = $this->request->server['HTTP_ACCEPT_LANGUAGE'];	
			} else {
				$data['accept_language'] = '';
			}
			
			$this->data['column_name'] = $this->language->get('column_name');
			$this->data['column_model'] = $this->language->get('column_model');
			$this->data['column_quantity'] = $this->language->get('column_quantity');
			$this->data['column_price'] = $this->language->get('column_price');
			$this->data['column_total'] = $this->language->get('column_total');
	
			
			$productCount = 0;
			
			$totalShippingCost = 0;
			foreach($product_data AS $addressId=>$products)
			{
				$shippingAddress  = $this->model_account_address->getAddress($addressId);
				/*echo '<pre>';
				print_r($shippingAddress);*/
				if($shippingAddress['country_id'] == 100)
				{
					$shippingCost = $this->model_account_address->getShippingCost($shippingAddress['city']);
				}
				else
				{
					$shippingCost = $this->model_account_address->getShippingCostByCountry($shippingAddress['country_id']);
				}
				
				$totalWeight = 0;
				foreach($products['products'] AS $subProduct)
				{
					$totalWeight += $subProduct['weight'];
				}
				$product_data[$addressId]['shippingCost'] = $shippingCost * $totalWeight;
				$totalShippingCost += $product_data[$addressId]['shippingCost'];
			}
			$this->session->data['shipping_method']['code'] = 'shipping';
			$this->session->data['shipping_method']['cost'] = $totalShippingCost;
			$this->session->data['shipping_method']['title'] = 'Shipping';
			$this->session->data['shipping_method']['shipping_sort_order'] = 7;
		
			$this->data['intCartSubTotal'] = 0;
			$this->data['intCartTotal'] = 0;
			$this->data['intCartCoupon'] = 0;
			$this->data['intAddOnTotal'] = 0;
			
			$total_data = array();
			
			$total = 0;
			//$total += (int)$totalShippingCost;
			if(isset($this->session->data['totalAddOnPrice']))
			{
				$this->data['intAddOnTotal'] = (int)$this->session->data['totalAddOnPrice'];
				//$total += (int)$this->session->data['totalAddOnPrice'];
			}
			
			
			$taxes = $this->cart->getTaxes();
			 
			$this->load->model('setting/extension');
			
			$sort_order = array(); 
				
			$results = $this->model_setting_extension->getExtensions('total');
			
			foreach ($results as $key => $value) {
				$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
			}
			
			array_multisort($sort_order, SORT_ASC, $results);
			
			foreach ($results as $result) {
				if ($this->config->get($result['code'] . '_status')) {
					$this->load->model('total/' . $result['code']);
		
					$this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
				}
			}
			
			$sort_order = array(); 
		  
			foreach ($total_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}
	
			array_multisort($sort_order, SORT_ASC, $total_data);
		
			
			
			$this->data['intTotalShipping'] = $totalShippingCost;
			foreach ($total_data as $total) { 
			        if($total['code'] == 'sub_total')
				    {
				   		$this->data['intCartSubTotal'] = $total['value'] - $this->data['intAddOnTotal'];
				    }
				    if($total['code'] == 'total')
				    {
				   		$this->data['intCartTotal'] = $total['value'] ;
				    }
					if($total['code'] == 'coupon')
				    {
				   		$this->data['intCartCoupon'] = $total['value'];
						$this->session->data['coupenValue'] =  $this->data['intCartCoupon'];
				    }
		      }
			
			$data['total'] = $total;
			$this->data['products'] = $product_data;
			$this->data['totals'] = $total_data;
			$this->data['payment_methode'] = '';
			if(isset($this->request->post['payment_methode']))
			{
				$this->data['payment_methode'] = $this->request->post['payment_methode'];
			}
		
			if(isset($this->request->post['confirmOrder']) && $this->request->post['confirmOrder'] == 'confirm')
			{
				$data['address_id']			= $this->request->post['address_id'];
				$data['payment_addressname']= $this->request->post['payment_addressname'];
				$data['payment_firstname'] = $this->request->post['payment_firstname'];
				$data['payment_lastname'] = $this->request->post['payment_lastname'];
				$data['telephone'] = $this->request->post['telephone'];
				$data['payment_address_1'] = $this->request->post['payment_address_1'];
				$data['payment_address_2'] = $this->request->post['payment_address_2'];
				$data['payment_country_id'] = $this->request->post['country_id'];
				$data['payment_zone_id'] = $this->request->post['province_id'];
				$data['payment_city'] = $this->request->post['payment_city'];
				$data['payment_postcode'] = $this->request->post['payment_postcode'];
				
				//for checking billing address if exists update it else insert it
				$chek = $this->db->query("SELECT count(*) AS sumdata FROM oc_address WHERE customer_id='".trim($this->customer->getId())."' AND address_type='billing'");
				$chek->num_rows;
				if($chek->row['sumdata']>0 && $chek->row['sumdata']<=1){
					//
					$this->db->query("UPDATE ".DB_PREFIX . "address SET firstname='".trim($this->db->escape($data['payment_firstname']))."', lastname='".trim($this->db->escape($data['payment_lastname']))."',add_title='".trim($this->db->escape($data['payment_addressname']))."',address_1='".trim($this->db->escape($data['payment_address_1']))."',address_2='".trim($this->db->escape($data['payment_address_2']))."', country_id='".trim($this->db->escape($data['payment_country_id']))."', zone_id='".trim($this->db->escape($data['payment_zone_id']))."', city='".trim($this->db->escape($data['payment_city']))."',postcode='".trim($this->db->escape($data['payment_postcode']))."',telephone='".trim($this->db->escape($data['telephone']))."' WHERE address_id='".trim($this->db->escape($data['address_id']))."' AND customer_id='".trim($this->customer->getId())."'");
					//$this->customer->getId();
				}else{
					$this->db->query("INSERT INTO " . DB_PREFIX . "address SET address_type='billing', customer_id = '" . $this->customer->getId() . "', firstname = '" . $this->db->escape($data['payment_firstname']) . "', lastname = '" . $this->db->escape($data['payment_lastname']) . "', add_title = '" . $this->db->escape($data['payment_addressname']) . "', address_1 = '" . $this->db->escape($data['payment_address_1']) . "', address_2 = '" . $this->db->escape($data['payment_address_2']) . "', city = '" . $this->db->escape($data['payment_city']) . "', postcode = '" . $this->db->escape($data['payment_postcode']) . "', country_id = '" . (int)$data['payment_country_id'] . "', zone_id = '" . (int)$data['payment_zone_id'] . "',telephone='".trim($this->db->escape($data['telephone']))."'");
				}
				
				
				$paymentError = 0;
				if($data['payment_firstname'] == '' || $data['payment_lastname'] == '' || $data['telephone'] == '' || $data['payment_address_1'] == '' || $data['payment_country_id'] == '' || $data['payment_zone_id'] == '' || $data['payment_city'] = '' || $data['payment_postcode'] = '' )
				{
					$paymentError = 1;
				}
				if($paymentError == 0)
				{
					if(isset($this->request->post['payment_methode']) && $this->request->post['payment_methode'] == 'CIMB')
					{
						$data['payment_method'] = 'Transfer Bank CIMB Niaga';
					}
					else
					{
						$data['payment_method'] = 'Transfer Bank BCA';
					}
					
								
					$data['payment_code'] = 'bank_transfer';
					$data['comment'] = $this->request->post['commnents'];
				
					//print_r($product_data);
					//print_r($this->session->data['shipping_address_id']);
					$addressArray = array();
					
					//----------- saperating products on the basis of shipping address
					
					$orderCount = 0;
					$totalCoupen = -$this->data['intCartCoupon'];
					$dokuProcuts = '';
					$transaction_id = time();
					$this->load->model('payment/doku');
					foreach($product_data AS $addressId=>$newOrder)
					{
						
						$newData = $data; 
						$shippingAddressArr = $this->model_account_address->getAddress($addressId);
			
						//---------- params for shipping address
						$newData['shipping_firstname'] = $shippingAddressArr['firstname'];
	                    $newData['shipping_lastname'] = $shippingAddressArr['lastname'];
	                    $newData['shipping_company'] = $shippingAddressArr['company'];
	                    $newData['shipping_address_1'] = $shippingAddressArr['address_1'];
	                    $newData['shipping_address_2'] = $shippingAddressArr['address_2'];
	                    $newData['shipping_city'] = $shippingAddressArr['city'];
	                    $newData['shipping_postcode'] = $shippingAddressArr['postcode'];
	                    $newData['shipping_zone'] = $shippingAddressArr['zone'];
	                    $newData['shipping_zone_id'] = $shippingAddressArr['zone_id'];
	                    $newData['shipping_country'] = $shippingAddressArr['country'];
	                    $newData['shipping_country_id'] = $shippingAddressArr['country_id'];
	                    $newData['shipping_address_format'] = $shippingAddressArr['address_format'];
	                    $newData['shipping_method'] = 'Flat Shipping Rate';
						$newData['shipping_code'] = 'flat.flat';
						//print_r($newOrder);
						$subTotal = 0;
						$totalAddonPrice = 0;
						
						foreach($newOrder['products'] AS $newProduct)
						{
							$newData['products'][] = $newProduct;
							$subTotal += $newProduct['total'];
							if(isset($newProduct['greetingPrice']) && $newProduct['greetingPrice'] != '')
							{
								$totalAddonPrice += (int)$newProduct['greetingPrice'];
							}
								if(isset($newProduct['wrappingPrice']) && $newProduct['wrappingPrice'] != '')
							{
								$totalAddonPrice += (int)$newProduct['wrappingPrice'];
							}
							$dokuProcuts .= $newProduct['name'].','. number_format($newProduct['price'],2,'.','').','.$newProduct['quantity'].','.number_format($newProduct['total'],2,'.','').';';
						}
						$subTotalTxt = 'IDR '.$subTotal;
											
						$newTotal[0]= array(
						'code' => 'sub_total',
						'title' => 'Sub-Total',
						'text' => $subTotalTxt,
						'value'=> $subTotal,
						'sort_order'=>1
						) ;
						
						$newTotal[3]= array(
						'code' => 'addon',
						'title' => 'Add-Ons',
						'text' => 'IDR '.$totalAddonPrice,
						'value'=> $totalAddonPrice,
						'sort_order'=>2
						) ;
						
						$newTotal[2]= array(
						'code' => 'shipping',
						'title' => 'Shipping',
						'text' => 'IDR '.$newOrder['shippingCost'] ,
						'value'=> $newOrder['shippingCost'],
						'sort_order'=>2
						) ;
						
						$subTotal =  $subTotal + $totalAddonPrice + $newOrder['shippingCost'];
						if(isset($this->session->data['coupon']) && $this->session->data['coupon'] != '')
						{
							//$couponvalue = $this->data['intCartCoupon']/count($addressArray);
							if($totalCoupen >= $subTotal )
							{
								$couponvalue = -$subTotal;
								$totalCoupen = $totalCoupen + $couponvalue;
							}
							else
							{
								$couponvalue = -$totalCoupen;
								$totalCoupen = 0;
								
							}
							$couponText = 'IDR '.$couponvalue;
							$newTotal[4]= array(
							'code' => 'coupon',
							'title' => 'Coupon('.$this->session->data['coupon'].')',
							'text' => $couponText,
							'value'=> $couponvalue,
							'sort_order'=>3
							) ;
						}
						else
						{
							$couponvalue = 0;
						}
						
						$totalValue = $subTotal + $couponvalue;
						$totalText = 'IDR '.$totalValue;
						$newTotal[1]= array(
						'code' => 'total',
						'title' => 'Total',
						'text' => $totalText,
						'value'=> $totalValue,
						'sort_order'=>4
						) ;
						$newData['total'] = $totalValue;
						$newData['totals'] = $newTotal;
						$dokuTotal = $totalValue;
						$this->load->model('checkout/order');
			
						$orderId = $this->model_checkout_order->addOrder($newData);
						$this->session->data['ordersId'][$orderCount] = $orderId;
						
						$comment  = $this->language->get('text_instruction') . "\n\n";
						//---------confirming the  order
						$comment .= $this->config->get('bank_transfer_bank_' . $this->config->get('config_language_id')) . "\n\n";
						$comment .= $this->language->get('text_payment');
						
						//$this->model_checkout_order->confirm($orderId, $this->config->get('bank_transfer_order_status_id'), $comment, true);
						$this->model_checkout_order->confirm($orderId,'1', $comment, true);
						
						if(isset($this->request->post['payment_methode']) && $this->request->post['payment_methode'] == 'doku')
						{
							$this->model_payment_doku->addNewTransaction($transaction_id,$orderId);
						}
						$orderCount++;
					}
					if($this->data['intAddOnTotal'] > 0)
					{
						$dokuProcuts .= 'Add-ons,'.number_format($this->data['intAddOnTotal'],2,'.','').',1,'.number_format($this->data['intAddOnTotal'],2,'.','').';';
					}
					if($this->data['intTotalShipping'] > 0)
					{
						$dokuProcuts .= 'Shipping,'.number_format($this->data['intTotalShipping'],2,'.','').',1,'.number_format($this->data['intTotalShipping'],2,'.','').';';
					}
					if(-$this->data['intCartCoupon'] > 0 )
					{
						$dokuProcuts .= 'Promo code,'.number_format($this->data['intCartCoupon'],2,'.','').',1,'.number_format($this->data['intCartCoupon'],2,'.','');
					}
					$dokuProcuts = trim($dokuProcuts,';');
					//$dokuTotal .= '.00';
					$dokuTotal = number_format($this->data['intCartTotal'],2,'.','');
					
					
					if(isset($this->request->post['payment_methode']) && $this->request->post['payment_methode'] == 'doku')
					{
						#$hashKey = '3CSF2T5QX6VG';
						/*<input type="hidden" name="STOREID" value="00150349">*/
						$hashKey = 'V25MX6LRD7U8';
						$this->model_payment_doku->addNewTransactionToShortCart($transaction_id,$dokuTotal);
						$words = sha1(trim($dokuTotal).trim($hashKey).trim($transaction_id));
						$data['payment_method'] = 'Doku';
						$form = '<form NAME="order" id="order" METHOD="POST" action="https://apps.myshortcart.com/payment/request-payment/"  >
						<input type="hidden" name="BASKET" value="'.$dokuProcuts.'">
						<input type="hidden" name="STOREID" value="00221190">
						
						<input type="hidden" name="TRANSIDMERCHANT" value="'.$transaction_id.'">
						<input type="hidden" name="AMOUNT" value="'.$dokuTotal.'">
						<input type="hidden" name="URL" value="http://eluminousdev.com/giftlane/">
						<input type="hidden" name="WORDS" value= "'.$words.'">
						<input type="hidden" name="CNAME" value="'.$data['firstname'].' '.$data['lastname'].'">
						<input type="hidden" name="CEMAIL" value="'.$data['email'].'">
						<input type="hidden" name="CWPHONE" value="'.$data['telephone'].'">
						<input type="hidden" name="CHPHONE" value="'.$data['telephone'].'">
						<input type="hidden" name="CMPHONE" value="'.$data['telephone'].'">
						<input type="hidden" name="CCAPHONE" value="'.$data['telephone'].'">
						<input type="hidden" name="CADDRESS" value="'.$data['payment_address_1'].'">
						<input type="hidden" name="CZIPCODE" value="'.$data['payment_postcode'].'">
						<input type="hidden" name="BIRTHDATE" value="'.$data['birth_date'].'">
				</form>';
					echo $form;
					echo "<script type='text/javascript'>
						document.getElementById('order').submit();
					</script>";
					}
					else
					{
						$this->redirect($this->url->link('checkout/success', '', 'SSL'));	
					}
					
					
				}
				else
				{
					$this->error['warning'] = 'Invalid billing address';
				}
			}	
		} else {
			header('location:'.$redirect);
		}	

			//added by kuuga
			$this->data['payment_addtitle'] = $data['payment_addtitle'];
			$this->data['payment_addid'] = $data['payment_id'];
		    
		    $this->data['payment_firstname'] = $data['payment_firstname'];
			$this->data['payment_lastname'] = $data['payment_lastname'];
			$this->data['telephone'] = $data['telephone'];
			$this->data['payment_address_1'] = $data['payment_address_1'];
			$this->data['payment_address_2'] = $data['payment_address_2'];
			$this->data['payment_postcode'] = $data['payment_postcode'];
			$this->data['payment_city'] = $data['payment_city'];
			
			$this->data['payment_zone_id'] = $data['payment_zone_id'];
			$this->data['payment_country_id'] = $data['payment_country_id'];
			$this->load->model('localisation/country');
			
			$this->data['countries'] = $this->model_localisation_country->getCountries();
						
			//----- settingh payment method
		
		if (isset($this->session->data['success'])) {
				$this->data['success'] = $this->session->data['success'];
			
				unset($this->session->data['success']);
			} else {
				$this->data['success'] = '';
			}	
		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		} 
		
		//$this->data = $data;	
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/confirm.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/checkout/confirm.tpl';
		} else {
			$this->template = 'default/template/checkout/confirm.tpl';
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
	
	protected function validateCoupon() {
		$this->load->model('checkout/coupon');
				
		$coupon_info = $this->model_checkout_coupon->getCoupon($this->request->post['coupon']);			
		
		if (!$coupon_info) {			
			$this->error['warning'] = 'Invalid coupon';
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}		
	}
}
?>