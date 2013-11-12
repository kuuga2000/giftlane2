<?php 
class ControllerCheckoutCart extends Controller {
	private $error = array();
	public function index() {
		
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/edit', '', 'SSL');

			$this->redirect($this->url->link('account/login', '', 'SSL'));
		}
		
		$this->language->load('checkout/cart');
		$this->load->model('catalog/category');
			$this->load->model('catalog/product');
				$this->load->model('catalog/manufacturer');
		if (!isset($this->session->data['vouchers'])) {
			$this->session->data['vouchers'] = array();
		}
		if (!$this->customer->isLogged()) {
	  		
			$this->redirect($this->url->link('account/login', '', 'SSL')); 
    	}
		
		// Remove
		if (isset($this->request->get['remove'])) {
			
			#print_r($this->session->data['addOnPrice']);
			$productId = (int)$this->request->get['remove'];
			
			$this->cart->remove($this->request->get['remove']);
			
			//-------------- updating cart price after removing addon price of the product as well
			$this->session->data['totalAddOnPrice'] = (int)$this->session->data['totalAddOnPrice'] - (int)$this->session->data['addOnPrice'][$productId];
			
			unset($this->session->data['vouchers'][$this->request->get['remove']]);
			
			$this->session->data['success'] = $this->language->get('text_remove');
		
			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']); 
			unset($this->session->data['reward']);  
			unset($this->session->data['greeting'][$this->request->get['remove']]);
			unset($this->session->data['wrapping'][$this->request->get['remove']]);
			unset($this->session->data['shipping_address_id'][$this->request->get['remove']]);
			//unset($this->session->data['totalAddOnPrice']);
			unset($this->session->data['addOnPrice'][$this->request->get['remove']]);
			unset($this->session->data['color'][$this->request->get['remove']]);
			unset($this->session->data['size'][$this->request->get['remove']]);					
			$this->redirect($this->url->link('checkout/cart'));
		}
			
		// Coupon    
		if (isset($this->request->post['coupon']) && $this->validateCoupon()) { 
			$this->session->data['coupon'] = $this->request->post['coupon'];
				
			$this->session->data['success'] = $this->language->get('text_coupon');
			
			$this->redirect($this->url->link('checkout/cart'));
		}
		
		// Voucher
		if (isset($this->request->post['voucher']) && $this->validateVoucher()) { 
			$this->session->data['voucher'] = $this->request->post['voucher'];
				
			$this->session->data['success'] = $this->language->get('text_voucher');
				
			$this->redirect($this->url->link('checkout/cart'));
		}

		// Reward
		if (isset($this->request->post['reward']) && $this->validateReward()) { 
			$this->session->data['reward'] = abs($this->request->post['reward']);
				
			$this->session->data['success'] = $this->language->get('text_reward');
				
			$this->redirect($this->url->link('checkout/cart'));
		}
		
		// Shipping
		if (isset($this->request->post['shipping_method']) && $this->validateShipping()) {
			$shipping = explode('.', $this->request->post['shipping_method']);
			
			$this->session->data['shipping_method'] = $this->session->data['shipping_methods'][$shipping[0]]['quote'][$shipping[1]];
			
			$this->session->data['success'] = $this->language->get('text_shipping');
			
			$this->redirect($this->url->link('checkout/cart'));
		}
		
		$this->document->setTitle($this->language->get('heading_title'));
		$this->document->addScript('catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/colorbox/colorbox.css');
		
		$this->data['greetingPremium'] = $this->currency->format($this->config->get('greetingPremium'),'', $this->config->get('config_tax'));
		$this->data['wrappingPremium'] = $this->currency->format($this->config->get('wrappingPremium'), '', $this->config->get('config_tax'));
						
    	if ($this->cart->hasProducts() || !empty($this->session->data['vouchers'])) {
			$points = $this->customer->getRewardPoints();
			
			$points_total = 0;
			
			foreach ($this->cart->getProducts() as $product) {
				if ($product['points']) {
					$points_total += $product['points'];
				}
			}		
				
      		$this->data['heading_title'] = $this->language->get('heading_title');
			
			$this->data['text_next'] = $this->language->get('text_next');
			$this->data['text_next_choice'] = $this->language->get('text_next_choice');
     		$this->data['text_use_coupon'] = $this->language->get('text_use_coupon');
			$this->data['text_use_voucher'] = $this->language->get('text_use_voucher');
			$this->data['text_use_reward'] = sprintf($this->language->get('text_use_reward'), $points);
			$this->data['text_shipping_estimate'] = $this->language->get('text_shipping_estimate');
			$this->data['text_shipping_detail'] = $this->language->get('text_shipping_detail');
			$this->data['text_shipping_method'] = $this->language->get('text_shipping_method');
			$this->data['text_select'] = $this->language->get('text_select');
			$this->data['text_none'] = $this->language->get('text_none');
						
			$this->data['column_image'] = $this->language->get('column_image');
      		$this->data['column_name'] = $this->language->get('column_name');
      		$this->data['column_model'] = $this->language->get('column_model');
      		$this->data['column_quantity'] = $this->language->get('column_quantity');
			$this->data['column_price'] = $this->language->get('column_price');
      		$this->data['column_total'] = $this->language->get('column_total');
			
			$this->data['entry_coupon'] = $this->language->get('entry_coupon');
			$this->data['entry_voucher'] = $this->language->get('entry_voucher');
			$this->data['entry_reward'] = sprintf($this->language->get('entry_reward'), $points_total);
			$this->data['entry_country'] = $this->language->get('entry_country');
			$this->data['entry_zone'] = $this->language->get('entry_zone');
			$this->data['entry_postcode'] = $this->language->get('entry_postcode');
						
			$this->data['button_update'] = $this->language->get('button_update');
			$this->data['button_remove'] = $this->language->get('button_remove');
			$this->data['button_coupon'] = $this->language->get('button_coupon');
			$this->data['button_voucher'] = $this->language->get('button_voucher');
			$this->data['button_reward'] = $this->language->get('button_reward');
			$this->data['button_quote'] = $this->language->get('button_quote');
			$this->data['button_shipping'] = $this->language->get('button_shipping');			
      		$this->data['button_shopping'] = $this->language->get('button_shopping');
      		$this->data['button_checkout'] = $this->language->get('button_checkout');
			
			if (isset($this->error['warning'])) {
				$this->data['error_warning'] = $this->error['warning'];
			} elseif (!$this->cart->hasStock() && (!$this->config->get('config_stock_checkout') || $this->config->get('config_stock_warning'))) {
      			$this->data['error_warning'] = $this->language->get('error_stock');		
			} elseif(isset($this->session->data['receipient_warning'])){
				$this->data['error_warning'] = $this->session->data['receipient_warning'];
				unset($this->session->data['receipient_warning']);
			}else {
				$this->data['error_warning'] = '';
			}
			
			if ($this->config->get('config_customer_price') && !$this->customer->isLogged()) {
				$this->data['attention'] = sprintf($this->language->get('text_login'), $this->url->link('account/login'), $this->url->link('account/register'));
			} else {
				$this->data['attention'] = '';
			}
						
			if (isset($this->session->data['success'])) {
				$this->data['success'] = $this->session->data['success'];
			
				unset($this->session->data['success']);
			} else {
				$this->data['success'] = '';
			}
			
			$this->data['action'] = $this->url->link('checkout/cart');   
						
			if ($this->config->get('config_cart_weight')) {
				$this->data['weight'] = $this->weight->format($this->cart->getWeight(), $this->config->get('config_weight_class_id'), $this->language->get('decimal_point'), $this->language->get('thousand_point'));
			} else {
				$this->data['weight'] = '';
			}
						 
			$this->load->model('tool/image');
			
      		$this->data['products'] = array();
			
			$products = $this->cart->getProducts();
			$totalAddOnPrice = 0;
		   

			//-------------- Code for getting receipients ----------------------------------
			
			$this->data['addresses'] = array();
		
			
			// --------------- End of code for getting receipient --------------------------		
			
      		foreach ($products as $product) {
				$product_total = 0;
					
				foreach ($products as $product_2) {
					if ($product_2['product_id'] == $product['product_id']) {
						$product_total += $product_2['quantity'];
					}
				}			
				
				if ($product['minimum'] > $product_total) {
					$this->data['error_warning'] = sprintf($this->language->get('error_minimum'), $product['name'], $product['minimum']);
				}				
					
				if ($product['image']) {
					$image = $this->model_tool_image->resize($product['image'], $this->config->get('config_image_cart_width'), $this->config->get('config_image_cart_height'));
				} else {
					$image = '';
				}

				$option_data = array();
				
        		foreach ($product['option'] as $option) {
					if ($option['type'] != 'file') {
						$value = $option['option_value'];	
					} else {
						$filename = $this->encryption->decrypt($option['option_value']);
						
						$value = utf8_substr($filename, 0, utf8_strrpos($filename, '.'));
					}
					
					$option_data[] = array(
						'name'  => $option['name'],
						'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
					);
        		}
				
				// Display prices
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
				
				// Display prices
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$total = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')) * $product['quantity']);
				} else {
					$total = false;
				}
				
				//------------ Getting greeting cart occasions ------------------------
			if(isset($this->session->data['greeting'][$product['product_id']]['greetingType']) && $this->session->data['greeting'][$product['product_id']]['greetingType'] == 'prm' ){
			$greetingOccasions = $this->model_catalog_category->getOccasions('prm');
			}
			else
			{
				$greetingOccasions = $this->model_catalog_category->getOccasions('std');
			}
			$this->data['greetingOccations'][$product['product_id']] = $greetingOccasions;
			$greetings = array();
			$greetingsArr = array();
            // -------------- End of getting occasions ---------------------------  
			
			//------------ Getting wrapping paper themes ------------------------
			if(isset($this->session->data['wrapping'][$product['product_id']]['wrappingType']) && $this->session->data['wrapping'][$product['product_id']]['wrappingType'] == 'prm'){
				$wrappingOccasions = $this->model_catalog_category->getWrappingThemes('pre');
			}
			else
			{
				$wrappingOccasions = $this->model_catalog_category->getWrappingThemes('std');
			}
			$this->data['wrappingThemes'][$product['product_id']] = $wrappingOccasions;
			$wrappings = array();
			$wrappingsArr = array();
			
			//------------- End of getting wrapping paper
			
				
				//------------ Getting greeting cart product as per default occasion ------------------------
				
				if(isset($this->session->data['greeting'][$product['product_id']]))
				{
					$defaultGreetingCat = 	$this->session->data['greeting'][$product['product_id']]['occasionId'];
				}
				elseif(count($greetingOccasions) > 0)
				{
					$defaultGreetingCat = $greetingOccasions[0]['category_id'];
				}
				else
				{
					$defaultGreetingCat = '';
				}
				$greetingsArr = array();
				if(count($greetingOccasions) > 0)
				{
					$data = array('filter_category_id'=>$defaultGreetingCat);
					$greetings = $this->model_catalog_product->getUpsellProducts($data);
					if(count($greetings) > 0)
					{
						foreach($greetings AS $greeting)
						{
						if ($greeting['image']) {
						$greetingImage = $this->model_tool_image->resize($greeting['image'], '60','50');
					} else {
						$greetingImage = $this->model_tool_image->resize('no_image.jpg', '60','50');
					}	
							$greetingsArr[] = array(
							'product_id' => $greeting['product_id'],
							'name' => $greeting['name'],
							'image' => $greetingImage
							 );
						}
					}
				}
				
				$this->data['greetings'][$product['product_id']] = $greetingsArr;
				
				//----------------- End of code for greeting cart occastions
			
				//------------ Getting wrapping paper themes ------------------------
			
				if(isset($this->session->data['wrapping'][$product['product_id']]))
				{
					$defaultwrappingCat = 	$this->session->data['wrapping'][$product['product_id']]['themeId'];
				}
				elseif(count($wrappingOccasions) > 0)
				{
					$defaultwrappingCat = $wrappingOccasions[0]['category_id'];
				}
				else
				{
					$defaultwrappingCat = '';
				}
				
				$wrappingsArr = array();
				if(count($wrappingOccasions) > 0)
				{
					$data = array('filter_category_id'=>$defaultwrappingCat);
					$wrappings = $this->model_catalog_product->getUpsellProducts($data);
					if(count($wrappings) > 0)
					{
						foreach($wrappings AS $wrapping)
						{
						if ($wrapping['image']) {
						$wrappingImage = $this->model_tool_image->resize($wrapping['image'], '60','50');
					} else {
						$wrappingImage = $this->model_tool_image->resize('no_image.jpg', '60','50');
					}	
							$wrappingsArr[] = array(
							'product_id' => $wrapping['product_id'],
							'name' => $wrapping['name'],
							'image' => $wrappingImage
							 );
						}
					}
				}
				
				$this->data['wrappings'][$product['product_id']] = $wrappingsArr;
				
				//----------------- End of code for wrapping paper themes
				
				//--------- Getting image of selected greeting card
				$greetingImage = 'no_image.jpg';
				if(isset($this->session->data['greeting'][$product['product_id']]))
				{
					$selectedGreeting = $this->model_catalog_product->getProduct($this->session->data['greeting'][$product['product_id']]['greetingId']);
					if ($selectedGreeting['image']) 
					{
						$greetingImage = $selectedGreeting['image'];
					} 
				}
				$greetingImage	 = $this->model_tool_image->resize($greetingImage, '460', '434');
				
				//--------- Getting image of selected wrapping paper
				$wrappingImage = 'no_image.jpg';
				if(isset($this->session->data['wrapping'][$product['product_id']]))
				{
					$selectedGreeting = $this->model_catalog_product->getProduct($this->session->data['wrapping'][$product['product_id']]['wrapId']);
					
					if ($selectedGreeting['image'] && $selectedGreeting['image'] !='') 
					{
						$wrappingImage = $selectedGreeting['image'];
					} 
				}

				$manufaturer = $this->model_catalog_manufacturer->getManufacturer($product['manufacturer_id']);
				$manufaturerName = '';
				if(isset($manufaturer['name']))
				{
					$manufaturerName = $manufaturer['name'];
				}
				$wrappingImage	 = $this->model_tool_image->resize($wrappingImage, '460', '434');
        		$this->data['products'][] = array(
					'product_id' => $product['product_id'] ,
					'manufaturer' => $manufaturerName,
          			'key'      => $product['key'],
          			'thumb'    => $image,
					'maxQty'	=>$product['maxQty'],
					'greetingImage' => $greetingImage,
					'wrappingImage' => $wrappingImage,
					'name'     => $product['name'],
          			'model'    => $product['model'],
          			'option'   => $option_data,
          			'quantity' => $product['quantity'],
          			'stock'    => $product['stock'] ? true : !(!$this->config->get('config_stock_checkout') || $this->config->get('config_stock_warning')),
					'reward'   => ($product['reward'] ? sprintf($this->language->get('text_points'), $product['reward']) : ''),
					'price'    => $price,
					'total'    => $total,
					'href'     => $this->url->link('product/product', 'product_id=' . $product['product_id']),
					'remove'   => $this->url->link('checkout/cart', 'remove=' . $product['key'])
				);
				if(isset($this->session->data['addOnPrice'][$product['product_id']]) && $this->session->data['addOnPrice'][$product['product_id']] > 0)
				{
					$this->data['addOnPrice'][$product['product_id']] = $this->currency->format($this->tax->calculate($this->session->data['addOnPrice'][$product['product_id']], $product['tax_class_id'], $this->config->get('config_tax')));
					//$totalAddOnPrice += $addOnPrice;
				}
      		}
			
			//$this->session->data['totalAddOnPrice'] = $totalAddOnPrice;
			// Gift Voucher
			$this->data['vouchers'] = array();
			
			if (!empty($this->session->data['vouchers'])) {
				foreach ($this->session->data['vouchers'] as $key => $voucher) {
					$this->data['vouchers'][] = array(
						'key'         => $key,
						'description' => $voucher['description'],
						'amount'      => $this->currency->format($voucher['amount']),
						'remove'      => $this->url->link('checkout/cart', 'remove=' . $key)   
					);
				}
			}

			if (isset($this->request->post['next'])) {
				$this->data['next'] = $this->request->post['next'];
			} else {
				$this->data['next'] = '';
			}
						 
			$this->data['coupon_status'] = $this->config->get('coupon_status');
			
			if (isset($this->request->post['coupon'])) {
				$this->data['coupon'] = $this->request->post['coupon'];			
			} elseif (isset($this->session->data['coupon'])) {
				$this->data['coupon'] = $this->session->data['coupon'];
			} else {
				$this->data['coupon'] = '';
			}
			
			$this->data['voucher_status'] = $this->config->get('voucher_status');
			
			if (isset($this->request->post['voucher'])) {
				$this->data['voucher'] = $this->request->post['voucher'];				
			} elseif (isset($this->session->data['voucher'])) {
				$this->data['voucher'] = $this->session->data['voucher'];
			} else {
				$this->data['voucher'] = '';
			}
			
			$this->data['reward_status'] = ($points && $points_total && $this->config->get('reward_status'));
			
			if (isset($this->request->post['reward'])) {
				$this->data['reward'] = $this->request->post['reward'];				
			} elseif (isset($this->session->data['reward'])) {
				$this->data['reward'] = $this->session->data['reward'];
			} else {
				$this->data['reward'] = '';
			}

			$this->data['shipping_status'] = $this->config->get('shipping_status') && $this->config->get('shipping_estimator') && $this->cart->hasShipping();	
								
			if (isset($this->request->post['country_id'])) {
				$this->data['country_id'] = $this->request->post['country_id'];				
			} elseif (isset($this->session->data['shipping_country_id'])) {
				$this->data['country_id'] = $this->session->data['shipping_country_id'];			  	
			} else {
				$this->data['country_id'] = $this->config->get('config_country_id');
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
		
						
			if (isset($this->request->post['zone_id'])) {
				$this->data['zone_id'] = $this->request->post['zone_id'];				
			} elseif (isset($this->session->data['shipping_zone_id'])) {
				$this->data['zone_id'] = $this->session->data['shipping_zone_id'];			
			} else {
				$this->data['zone_id'] = '';
			}
			
			if (isset($this->request->post['postcode'])) {
				$this->data['postcode'] = $this->request->post['postcode'];				
			} elseif (isset($this->session->data['shipping_postcode'])) {
				$this->data['postcode'] = $this->session->data['shipping_postcode'];					
			} else {
				$this->data['postcode'] = '';
			}
			
			if (isset($this->request->post['shipping_method'])) {
				$this->data['shipping_method'] = $this->request->post['shipping_method'];				
			} elseif (isset($this->session->data['shipping_method'])) {
				$this->data['shipping_method'] = $this->session->data['shipping_method']['code']; 
			} else {
				$this->data['shipping_method'] = '';
			}
						
			// Totals
			$this->load->model('setting/extension');
			
			$this->data['totals'] = $this->calculateTotal();
			
			$this->data['intCartSubTotal'] = $this->intCartSubTotal;
			if(isset($this->session->data['totalAddOnPrice']))
			{
				$this->data['intAddOnTotal'] = $this->session->data['totalAddOnPrice'];
			}
			else
			{
				$this->data['intAddOnTotal'] = '0';
			}
			$this->data['intCartTotal'] = $this->intCartTotal;
			
			
			$this->data['continue'] = $this->url->link('common/home');
						
			$this->data['checkout'] = $this->url->link('checkout/confirm', '', 'SSL');


			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/cart.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/checkout/cart.tpl';
			} else {
				$this->template = 'default/template/checkout/cart.tpl';
			}
			
			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_bottom',
				'common/content_top',
				'common/footer',
				'common/header'	
			);
						
			$this->response->setOutput($this->render());					
    	} else {
      		$this->data['heading_title'] = $this->language->get('heading_title');

      		$this->data['text_error'] = $this->language->get('text_empty');

      		$this->data['button_continue'] = $this->language->get('button_continue');
			
      		$this->data['continue'] = $this->url->link('common/home');

			unset($this->session->data['success']);

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/cart_empty.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/error/cart_empty.tpl';
			} else {
				$this->template = 'default/template/error/cart_empty.tpl';
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
  	}
	
	protected function validateCoupon() {
		$this->load->model('checkout/coupon');
				
		$coupon_info = $this->model_checkout_coupon->getCoupon($this->request->post['coupon']);			
		
		if (!$coupon_info) {			
			$this->error['warning'] = $this->language->get('error_coupon');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}		
	}
	
	protected function validateVoucher() {
		$this->load->model('checkout/voucher');
				
		$voucher_info = $this->model_checkout_voucher->getVoucher($this->request->post['voucher']);			
		
		if (!$voucher_info) {			
			$this->error['warning'] = $this->language->get('error_voucher');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}		
	}
	
	protected function validateReward() {
		$points = $this->customer->getRewardPoints();
		
		$points_total = 0;
		
		foreach ($this->cart->getProducts() as $product) {
			if ($product['points']) {
				$points_total += $product['points'];
			}
		}	
				
		if (empty($this->request->post['reward'])) {
			$this->error['warning'] = $this->language->get('error_reward');
		}
	
		if ($this->request->post['reward'] > $points) {
			$this->error['warning'] = sprintf($this->language->get('error_points'), $this->request->post['reward']);
		}
		
		if ($this->request->post['reward'] > $points_total) {
			$this->error['warning'] = sprintf($this->language->get('error_maximum'), $points_total);
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}		
	}
	
	protected function validateShipping() {
		if (!empty($this->request->post['shipping_method'])) {
			$shipping = explode('.', $this->request->post['shipping_method']);
					
			if (!isset($shipping[0]) || !isset($shipping[1]) || !isset($this->session->data['shipping_methods'][$shipping[0]]['quote'][$shipping[1]])) {			
				$this->error['warning'] = $this->language->get('error_shipping');
			}
		} else {
			$this->error['warning'] = $this->language->get('error_shipping');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}		
	}
								
	public function add() {
		$this->language->load('checkout/cart');
		
		$json = array();
		
		if (isset($this->request->post['product_id'])) {
			$product_id = $this->request->post['product_id'];
		} else {
			$product_id = 0;
		}
		
		$this->load->model('catalog/product');
						
		$product_info = $this->model_catalog_product->getProduct($product_id);
		if ($product_info) {			
			if (isset($this->request->post['quantity'])) {
				$quantity = $this->request->post['quantity'];
			} else {
				$quantity = 1;
			}
														
			if (isset($this->request->post['option'])) {
				$option = array_filter($this->request->post['option']);
			} else {
				$option = array();	
			}
			
			/*$product_options = $this->model_catalog_product->getProductOptions($this->request->post['product_id']);
			
			foreach ($product_options as $product_option) {
				if ($product_option['required'] && empty($option[$product_option['product_option_id']])) {
					$json['error']['option'][$product_option['product_option_id']] = sprintf($this->language->get('error_required'), $product_option['name']);
				}
			}*/
			
			//-------------- added by Gaurav on 5-july-13 to send error message if product is out of stock
			if(!$json && $quantity > $product_info['quantity'] )
			{
				$json['error']['stock'] = 'Product is out of stock';
			}
			
			if (!$json) {
				$this->cart->add($this->request->post['product_id'], $quantity, $option);
				if(isset($this->request->post['color']) && $this->request->post['color'] != '')
				{
					$this->session->data['color'][$this->request->post['product_id']] = $this->request->post['color'];
				}
				
				if(isset($this->request->post['size']) && $this->request->post['size'] != '')
				{
					$this->session->data['size'][$this->request->post['product_id']] = $this->request->post['size'];
				}
				
				$json['success'] = sprintf($this->language->get('text_success'), $this->url->link('product/product', 'product_id=' . $this->request->post['product_id']), $product_info['name'], $this->url->link('checkout/cart'));
				
				unset($this->session->data['shipping_method']);
				unset($this->session->data['shipping_methods']);
				unset($this->session->data['payment_method']);
				unset($this->session->data['payment_methods']);
				
				// Totals
				$this->load->model('setting/extension');
				
				$total_data = array();					
				$total = 0;
				$taxes = $this->cart->getTaxes();
				
				// Display prices
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
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
						
						$sort_order = array(); 
					  
						foreach ($total_data as $key => $value) {
							$sort_order[$key] = $value['sort_order'];
						}
			
						array_multisort($sort_order, SORT_ASC, $total_data);			
					}
				}
				
				$json['total'] = sprintf($this->language->get('text_items'), $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0), $this->currency->format($total));
			} else {
				$json['redirect'] = str_replace('&amp;', '&', $this->url->link('product/product', 'product_id=' . $this->request->post['product_id']));
			}
		}
		
		$this->response->setOutput(json_encode($json));		
	}
	
	public function quote() {
		$this->language->load('checkout/cart');
		
		$json = array();	
		
		if (!$this->cart->hasProducts()) {
			$json['error']['warning'] = $this->language->get('error_product');				
		}				

		if (!$this->cart->hasShipping()) {
			$json['error']['warning'] = sprintf($this->language->get('error_no_shipping'), $this->url->link('information/contact'));				
		}				
		
		if ($this->request->post['country_id'] == '') {
			$json['error']['country'] = $this->language->get('error_country');
		}
		
		if (!isset($this->request->post['zone_id']) || $this->request->post['zone_id'] == '') {
			$json['error']['zone'] = $this->language->get('error_zone');
		}
			
		$this->load->model('localisation/country');
		
		$country_info = $this->model_localisation_country->getCountry($this->request->post['country_id']);
		
		if ($country_info && $country_info['postcode_required'] && (utf8_strlen($this->request->post['postcode']) < 2) || (utf8_strlen($this->request->post['postcode']) > 10)) {
			$json['error']['postcode'] = $this->language->get('error_postcode');
		}
						
		if (!$json) {		
			$this->tax->setShippingAddress($this->request->post['country_id'], $this->request->post['zone_id']);
		
			// Default Shipping Address
			$this->session->data['shipping_country_id'] = $this->request->post['country_id'];
			$this->session->data['shipping_zone_id'] = $this->request->post['zone_id'];
			$this->session->data['shipping_postcode'] = $this->request->post['postcode'];
		
			if ($country_info) {
				$country = $country_info['name'];
				$iso_code_2 = $country_info['iso_code_2'];
				$iso_code_3 = $country_info['iso_code_3'];
				$address_format = $country_info['address_format'];
			} else {
				$country = '';
				$iso_code_2 = '';
				$iso_code_3 = '';	
				$address_format = '';
			}
			
			$this->load->model('localisation/zone');
		
			$zone_info = $this->model_localisation_zone->getZone($this->request->post['zone_id']);
			
			if ($zone_info) {
				$zone = $zone_info['name'];
				$zone_code = $zone_info['code'];
			} else {
				$zone = '';
				$zone_code = '';
			}	
		 
			$address_data = array(
				'firstname'      => '',
				'lastname'       => '',
				'company'        => '',
				'address_1'      => '',
				'address_2'      => '',
				'postcode'       => $this->request->post['postcode'],
				'city'           => '',
				'zone_id'        => $this->request->post['zone_id'],
				'zone'           => $zone,
				'zone_code'      => $zone_code,
				'country_id'     => $this->request->post['country_id'],
				'country'        => $country,	
				'iso_code_2'     => $iso_code_2,
				'iso_code_3'     => $iso_code_3,
				'address_format' => $address_format
			);
		
			$quote_data = array();
			
			$this->load->model('setting/extension');
			
			$results = $this->model_setting_extension->getExtensions('shipping');
			
			foreach ($results as $result) {
				if ($this->config->get($result['code'] . '_status')) {
					$this->load->model('shipping/' . $result['code']);
					
					$quote = $this->{'model_shipping_' . $result['code']}->getQuote($address_data); 
		
					if ($quote) {
						$quote_data[$result['code']] = array( 
							'title'      => $quote['title'],
							'quote'      => $quote['quote'], 
							'sort_order' => $quote['sort_order'],
							'error'      => $quote['error']
						);
					}
				}
			}
	
			$sort_order = array();
		  
			foreach ($quote_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}
	
			array_multisort($sort_order, SORT_ASC, $quote_data);
			
			$this->session->data['shipping_methods'] = $quote_data;
			
			if ($this->session->data['shipping_methods']) {
				$json['shipping_method'] = $this->session->data['shipping_methods']; 
			} else {
				$json['error']['warning'] = sprintf($this->language->get('error_no_shipping'), $this->url->link('information/contact'));
			}				
		}	
		
		$this->response->setOutput(json_encode($json));						
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

	/**
	* Function to update product quantity in cart
	* @param: quantity , product id and product key
	* @return: total, product count
	*/
	public function updateQuantity()
	{
		// Update
		$json=array();
		$this->load->model('catalog/product');
		//----------------- Getting product id of product and quantity whose quantity we need to update.
		
		$id=$this->request->post['id'];
		$key=$this->request->post['key'];
		$quantity=$this->request->post['quantity'];
		
		
		$product_info = $this->model_catalog_product->getProduct($id);
		
		if($product_info['quantity'] >= $quantity )
		{
			$this->cart->update($key, $quantity);
			//--------------- Getting total number of products in cart --------------
			$data=$this->cart->countProducts();
			
		
			//echo "<pre>"; print_r($product_info); die();
			$price=$product_info['price'];
			
			//--------------------- getting total price to display on cart page immediately.
			$total_price=$price*$quantity;
			
			$total_price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')) * $quantity);
			
			$addonPrice = $this->calculateProductAddon($id);		
			$this->calculateTotalAddon();
			$totalStr = $this->calculateTotal();	
			$addonPrice = $this->currency->format($this->tax->calculate($addonPrice, $product_info['tax_class_id'], $this->config->get('config_tax')));
			
			
			
			$json=array(
			'success' =>1,
			'cartCount'		=>	$data,
			'productTotal'		=> $total_price,
			'cartTotal' => $totalStr,
			'intCartSubTotal' => number_format($this->intCartSubTotal,0,',','.'),
			'intCartTotal' => number_format($this->intCartTotal,0,',','.'),
			'addOnPrice'=>$addonPrice,
			'intAddOnTotal' => number_format($this->session->data['totalAddOnPrice'],0,',','.')
			);
		}
		else
		{
			$json=array(
			'success' => 0,
			'error' => 'This product is not available in the desired quantity or not in stock'
			);
		}
		//---------------- updating quantity -------------------- 
		
		$this->response->setOutput(json_encode($json));
	}
	
	/**
	* Function to get all greetings according to selected occasion
	* @param: its ajax call with occasion Id in post
	* @return: return list of all greetings
	*/
	public function loadGreetings()
	{
		$occasionId = $this->request->get['occasion'];
		$productId = $this->request->get['productId'];
		$data = array('filter_category_id'=>$occasionId);
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		$greetings = $this->model_catalog_product->getUpsellProducts($data);
		$returStr = '';
		if(count($greetings) > 0)
		{
			foreach($greetings AS $greeting)
			{
				if ($greeting['image'] != '')
			    {
					$image = $this->model_tool_image->resize($greeting['image'], '60','50');
				} else {
					$image = $this->model_tool_image->resize('no_image.jpg', '60','50');
				}	
				
				$returStr .= '<li onclick="selectGreeting(\''.$productId.'\',\''.$greeting['product_id'].'\')" id="greeting_'.$productId.'_'.$greeting['product_id'].'"><img src="'.$image.'" alt="'.$greeting['name'].'"></li>';
			}
		}
		else
		{
			$returStr = '<li class="error" style="width:100%; background:none">No greetings available for this category.<br>Please select other category.</li>';
		}
		
		echo $returStr;
	}
	
	/**
	* Function to get all wrappings according to selected theme
	* @param: its ajax call with theme Id in post
	* @return: return list of all wrappings
	*/
	public function loadWrappings()
	{
		$themeId = $this->request->get['theme'];
		$productId = $this->request->get['productId'];
		$data = array('filter_category_id'=>$themeId);
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		$wrappings = $this->model_catalog_product->getUpsellProducts($data);
		$returStr = '';
		if(count($wrappings) > 0)
		{
			foreach($wrappings AS $wrapping)
			{
				if ($wrapping['image'])
			    {
					$image = $this->model_tool_image->resize($wrapping['image'], '60','50');
				} else {
					$image = $this->model_tool_image->resize('no_image.jpg', '60','50');
				}	
				
				$returStr .= '<li onclick="selectWrapping(\''.$productId.'\',\''.$wrapping['product_id'].'\')" id="wrapping_'.$productId.'_'.$wrapping['product_id'].'"><img src="'.$image.'" alt="'.$wrapping['name'].'"></li>';
			}
		}
		else
		{
			$returStr = '<li class="error" style="width:100%; background:none">No wrappings available for this category.<br>Please select other category.</li>';
		}
		
		echo $returStr;
	}
	
	/**
	* Function to add greeting to card under selected product
	* @param: its ajax call with occasion Id, greetingId, productid, greeting type in post
	* @return: return cart total after adding new greeting
	*/
	public function addGreetingToCart()
	{
		$productId = $this->request->post['id'];
		$selectedGreetingId = $this->request->post['selectedGreetingId'];
		$greetingMessage = $this->request->post['greetingMessage'];
		$occasionId = $this->request->post['occasionId'];
		$greetingType = $this->request->post['greetingType'];
		$this->load->model('catalog/product');
		$productInfo = $this->model_catalog_product->getProduct($selectedGreetingId);
		
		$greetingPrice = $productInfo['price'];
	
		if(isset($this->session->data['greeting'][$productId]) && $this->session->data['greeting'][$productId]['occasionId'] == $occasionId && $this->session->data['greeting'][$productId]['greetingId'] == $selectedGreetingId )
		{
			$addonPrice = $this->session->data['addOnPrice'][$productId];
		}
		else
		{
			$addonPrice = 0;
			$this->session->data['greeting'][$productId] = array(
				'occasionId'=>$occasionId,
				'greetingId' =>$selectedGreetingId,
				'price'=>$greetingPrice,
				'message'=>$greetingMessage);
		}
		
		$this->session->data['greeting'][$productId]['greetingType'] = $greetingType;
		
		$addonPrice = $this->calculateProductAddon($productId);
		$this->calculateTotalAddon();

		$json['addOnPrice'] = $this->currency->format($this->tax->calculate($addonPrice,$productInfo['tax_class_id'], $this->config->get('config_tax')));;
		$json['cartTotal'] = $this->calculateTotal();
		
		$json['intCartSubTotal'] = number_format($this->intCartSubTotal,0,',','.');		
		$json['intCartTotal'] = number_format($this->intCartTotal,0,',','.');
		$json['intAddOnTotal'] = number_format($this->session->data['totalAddOnPrice'],0,',','.');
		
		$this->response->setOutput(json_encode($json));
	}
	
	/**
	* Function to add wrapping to card under selected product
	* @param: its ajax call with theme Id, wrapping id, productid, wrapping type in post
	* @return: return cart total after adding new wrapping
	*/
	public function addWrappingToCart()
	{
		$productId = $this->request->post['id'];
		$selectedWrappingId = $this->request->post['selectedWrappingId'];
		$themeId = $this->request->post['themeId'];
		$wrappingType = $this->request->post['wrappingType'];
		$this->load->model('catalog/product');
		$productInfo = $this->model_catalog_product->getProduct($selectedWrappingId);
		
		$wrappingPrice = $productInfo['price'];
	
		if(isset($this->session->data['wrapping'][$productId]) && $this->session->data['wrapping'][$productId]['themeId'] == $themeId && $this->session->data['wrapping'][$productId]['wrapId'] == $selectedWrappingId )
		{
			$addonPrice = $this->session->data['addOnPrice'][$productId];
		}
		else
		{
			$addonPrice = 0;
			$this->session->data['wrapping'][$productId] = array('themeId'=>$themeId,'wrapId' =>$selectedWrappingId, 'price'=>$wrappingPrice);
		}
		$this->session->data['wrapping'][$productId]['wrappingType'] = $wrappingType;
		
		$addonPrice = $this->calculateProductAddon($productId);
		$this->calculateTotalAddon();
		
		$json['addOnPrice'] = $this->currency->format($this->tax->calculate($addonPrice, $productInfo['tax_class_id'], $this->config->get('config_tax')));;
		$json['cartTotal'] = $this->calculateTotal();
		
		$json['intCartSubTotal'] = number_format($this->intCartSubTotal,0,',','.');		
		$json['intCartTotal'] = number_format($this->intCartTotal,0,',','.');
		$json['intAddOnTotal'] = number_format($this->session->data['totalAddOnPrice'],0,',','.');
		
		
		$this->response->setOutput(json_encode($json));
	}
	
	/**
	* function to calculate total of all addons of one product product to display in addon total below product price
	* @param: null
	* @return: Null sets values in session
	*/
	private function calculateProductAddon($productId)
	{
		$addonPrice =0 ;
		$productQuantity = 1;
		if(isset($this->session->data['cart'][$productId]) && $this->session->data['cart'][$productId] != '' )
		{
			$productQuantity = $this->session->data['cart'][$productId];
		}
		
	/*	echo '<pre>';
		print_r($this->session->data['cart']);
		print_r($this->cart->getProducts());
		*/
		if(isset($this->session->data['greeting'][$productId]))
		{
			
			//-------------- adding 35 IDR if greeting type is premium
			if($this->session->data['greeting'][$productId]['greetingType'] == 'prm')
			{
				//$addonPrice += (int)$this->config->get('greetingPremium');
				$addonPrice += ((int)$productQuantity * ((int)$this->config->get('greetingPremium') + $this->session->data['greeting'][$productId]['price']));
			}
			else
			{
				$addonPrice += ((int)$productQuantity * $this->session->data['greeting'][$productId]['price']);
			}
		}	
		if(isset($this->session->data['wrapping'][$productId]))
		{
			
			//-------------- adding 35 IDR if wrapping type is premium
			if($this->session->data['wrapping'][$productId]['wrappingType'] == 'prm')
			{
				//$addonPrice += (int)$this->config->get('wrappingPremium');
				$addonPrice += ((int)$productQuantity * ((int)$this->config->get('wrappingPremium') + $this->session->data['wrapping'][$productId]['price']));
			}
			else
			{
				$addonPrice += ((int)$productQuantity * $this->session->data['wrapping'][$productId]['price']);
			}
		}	
		
		$this->session->data['addOnPrice'][$productId] = $addonPrice;
		return $addonPrice;
	}
	
	/**
	* function to calculate total of all addons of all product to display in complete total at the bottom of cart page
	* @param: null
	* @return: Null sets values in session
	*/
	private function calculateTotalAddon()
	{
		$cartProducts = $this->cart->getProducts();
		$totalAddon = 0;
		foreach($cartProducts AS $product)
		{
			$addonPrice =0 ;
			/*if(isset($this->session->data['wrapping'][$product['product_id']]))
			{
				$addonPrice += $this->session->data['wrapping'][$product['product_id']]['price'];
			}
			if(isset($this->session->data['greeting'][$product['product_id']]))
			{
				$addonPrice += $this->session->data['greeting'][$product['product_id']]['price'];
			}*/
			if(isset($this->session->data['addOnPrice'][$product['product_id']]))
			{
				$addonPrice += $this->session->data['addOnPrice'][$product['product_id']];
			}
			$totalAddon += $addonPrice;
		}
		$this->session->data['totalAddOnPrice'] = $totalAddon;
	}
		
	/**
	* function to calculate total and sub total of all products in cart
	* @param: null
	* @return: array of total and subtotal
	*/	
	private function calculateTotal()
	{
		// Totals
		$total_data = array();		
		
		$this->load->model('setting/extension');		
		$total = 0;
		/*if(isset($this->session->data['totalAddOnPrice']))
		{
			$total = $this->session->data['totalAddOnPrice'] ;
		}	*/
		$taxes = $this->cart->getTaxes();
		// Display prices
		if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
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
					
					$sort_order = array(); 
				  
					foreach ($total_data as $key => $value) {
						$sort_order[$key] = $value['sort_order'];
					}
		
					array_multisort($sort_order, SORT_ASC, $total_data);			
				}
			}
		$totalStr = '';

		foreach ($total_data as $total) { 
	       $totalStr .= '<tr><td class="right"><b>'.$total['title'].'</b></td><td class="right">'.$total['text'].'</td></tr>';
		   if($total['code'] == 'sub_total')
		   {
			   	if(isset($this->session->data['totalAddOnPrice']))
				{
		   			$this->intCartSubTotal = $total['value'] - $this->session->data['totalAddOnPrice'];
				}	
				else
				{
					$this->intCartSubTotal = $total['value'];
				}
		   }
		   if($total['code'] == 'total')
		   {
		   		if(isset($this->session->data['totalAddOnPrice']))
				{
					$this->intCartTotal = $this->intCartSubTotal + $this->session->data['totalAddOnPrice'] ;
				}
				else
				{
					$this->intCartTotal = $this->intCartSubTotal;
				}
				
		   		
		   }
	      }
		  	
		return $totalStr;
	}	
	
	/**
	* function to return image of selected greeting
	* $param: greeting id
	* @return: image of selected greeting
	*/
	public function getGreetingImage()
	{
		$productId = $this->request->post['id'];
		$this->load->model('catalog/product');
		$product = $this->model_catalog_product->getProduct($productId);
		$this->load->model('tool/image');
		if ($product['image']) {
					$image = $this->model_tool_image->resize($product['image'], '460', '434');
				} else {
					$image = '';
				}
		$json['image'] = $image;
		$this->response->setOutput(json_encode($json));	
	}
	
	/**
	* function to return image of selected wrapping
	* $param: wrapping id
	* @return: image of selected wrapping
	*/
	public function getWrappingImage()
	{
		$productId = $this->request->post['id'];
		$this->load->model('catalog/product');
		$product = $this->model_catalog_product->getProduct($productId);
		$this->load->model('tool/image');
		if ($product['image']) {
					$image = $this->model_tool_image->resize($product['image'], '460', '434');
				} else {
					$image = '';
				}
		$json['image'] = $image;
		$this->response->setOutput(json_encode($json));	
	}

	public function getAddressBook()
	{
		$this->data['addresses'] = array();
		$this->data['currentAddressId'] = '';
		$this->load->model('account/address');
		$productId = $this->request->get['productId'];
		//$results = $this->model_account_address->getAddresses();
		
			if(!isset($this->request->get['addressFormat']))
			{
				$addressFormat = 1;
			}
			else
			{				
				$addressFormat = $this->request->get['addressFormat'];
				if(isset($this->session->data['shipping_address_id'][$productId]) && $this->session->data['shipping_address_id'][$productId] != '' && $addressFormat == '')
				{
					$addressId = $this->session->data['shipping_address_id'][$productId];
					$newAddress = $this->model_account_address->getAddress($addressId);
				
					 	$strFirstChar = strtoupper(substr($newAddress['firstname'],0,1));
						
						
					  		$addressName1=array("A","B","C","D","E","F","G","H");		  	
					  		if(in_array($strFirstChar,$addressName1))
							{
								$addressFormat = 1;
							}
							
					  		$addressName2=array("I","J","K","L","M","N","O","P");	
							if(in_array($strFirstChar,$addressName2))
							{
								$addressFormat = 2;
							}	  	
					  
					  		$addressName3=array("Q","R","S","T","U","V","W","X","Y","Z");	
							if(in_array($strFirstChar,$addressName3))
							{
								$addressFormat = 3;
							}	
							  	
				}				
			}
			
			if($addressFormat == '')
			{
				$addressFormat = 1;
			}
			
			$results = $this->model_account_address->getAddressesbook($addressFormat);
			//echo '<pre>';
			//print_r($results);
			$this->data['addresses']=$results;
			$this->data['productId'] = $productId;
			if(isset($this->session->data['shipping_address_id'][$productId]) && $this->session->data['shipping_address_id'][$productId] != '')
			{
				$this->data['currentAddressId'] = $this->session->data['shipping_address_id'][$productId];
			}
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/addressbook.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/checkout/addressbook.tpl';
			} else {
				$this->template = 'default/template/checkout/addressbook.tpl';
			}
			$this->response->setOutput($this->render());	
	}
	
	public function updateShippingAddress()
	{
		$productId = $this->request->post['productId'];
		$addressId = $this->request->post['addressId'];
		
		$this->session->data['shipping_address_id'][$productId] = $addressId;
		$json['success'] = true;
		$this->response->setOutput(json_encode($json));
	}
	
	public function addAddressBook()
	{
		$data['add_title'] = $this->request->post['addressname'];
		$data['firstname'] = $this->request->post['firstname'];
		$data['lastname'] = $this->request->post['lastname'];
		$data['telephone'] = $this->request->post['telephone'];
		$data['company_id'] = '';
		$data['tax_id'] = '';
		$data['address1'] = $this->request->post['address1'];
		$data['address2'] = $this->request->post['address2'];
		$data['postal_code'] = $this->request->post['postal'];
		$data['shipping_city'] = $this->request->post['city'];
		$data['province_id'] = $this->request->post['zone'];
		$data['country_id'] = $this->request->post['country'];
		$this->load->model('account/address');
		
		$productId = $this->request->post['productId'];
		
		$this->session->data['shipping_address_id'][$productId] = $this->model_account_address->addAddress($data);
		$json['addressId'] = $this->session->data['shipping_address_id'][$productId];
		$this->response->setOutput(json_encode($json));
	}
  public function getGreetingEvents()
  {
  	$type = $this->request->get['type'];
	$productId = $this->request->get['productId'];
	$this->load->model('catalog/category');
	if($type == 'std')
	{
		$greetingOccasions = $this->model_catalog_category->getOccasions('std');
	}
	else
	{
		$greetingOccasions = $this->model_catalog_category->getOccasions('pre');
	}
	if(count($greetingOccasions) > 0)
	{
		$res = '<select id=occasions_'.$productId.'><option value=\'\'>Select</option>';
	  	foreach($greetingOccasions AS $greetingOccasion)
		{
			$res .= '<option value='.$greetingOccasion['category_id'].'>'.$greetingOccasion['name'].'</option>';
		}
		$res .= '</select>';
	}
	else
	{
		$res = "No Greetings found";
	}
  	
	echo $res;
  }	
  
  public function getWrappingTheme()
  {
  	$type = $this->request->get['type'];
	$productId = $this->request->get['productId'];
	$this->load->model('catalog/category');
	if($type == 'std')
	{
		$greetingOccasions = $this->model_catalog_category->getWrappingThemes('std');
	}
	else
	{
		$greetingOccasions = $this->model_catalog_category->getWrappingThemes('pre');
	}
	if(count($greetingOccasions)>0)
	{
		$res = '<select id=themes_'.$productId.'><option value=\'\'>Select</option>';
	  	foreach($greetingOccasions AS $greetingOccasion)
		{
			$res .= '<option value='.$greetingOccasion['category_id'].'>'.$greetingOccasion['name'].'</option>';
		}
		$res .= '</select>';
	}
	else
	{
		$res = "No Wrapping found";
	}
  	
	echo $res;
  }
}
?>
