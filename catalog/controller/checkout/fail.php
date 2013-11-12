<?php
class ControllerCheckoutFail extends Controller { 
	public function index() { 	
		$this->load->model('checkout/order');
		
		if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('checkout/success', '', 'SSL');
	  
	  		$this->redirect($this->url->link('account/login_register', '', 'SSL'));
    	}
		$this->load->model('checkout/order');
		$this->load->model('catalog/product');
		$this->load->model('tool/image'); 
		$orders = array();
		if(isset($this->session->data['ordersId']))
		{
			$orders = $this->session->data['ordersId'];
		}
		else
		{
			$this->redirect($this->url->link('common/home', '', 'SSL'));
		}
		
		$count = 0;
		foreach($orders AS $orderId)
		{
			$this->data['orders'][$count]['order_id'] = $orderId;
			
			$this->data['orders'][$count]['total'] = $this->model_checkout_order->getOrderTotal($orderId);
			$this->data['orders'][$count]['payment_method'] = $this->model_checkout_order->getPaymentMethod($orderId);
			
			if (isset($orderId)) {
				$this->cart->clear();
			}
			$count++;	
		}
		
		if (isset($this->request->get['filter'])) {
				$filter = $this->request->get['filter'];
			} else {
				$filter = '';
			}
			if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}	
							
		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_catalog_limit');
			//$limit=6;
			//die;
		}
		$url = '';
		$this->data['products'] = array();
			
			$data = array(
				'filter_category_id' => 0,
				'filter_filter'      => $filter, 
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);
					
			$product_total = $this->model_catalog_product->getTotalProducts($data); 
			
			$results = $this->model_catalog_product->getProducts($data);
			
		
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('no_image.jpg', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}
				
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
				
				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}	
				
				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}				
				
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
								
				$this->data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product','&product_id=' . $result['product_id'] . $url),
					'manufacturer' => $result['manufacturer']
				);
			}
		
		
		$displayedProducts = ($page) * $limit;
			
			if($product_total > $displayedProducts)
			{
				$this->data['showViewmore'] = 1;
			}
			else
			{
				$this->data['showViewmore'] = 0;
			}
				$this->data['searchUrl'] = $this->url->link('product/category/ajaxSearch');
				$this->data['gohome'] = $this->url->link('common/home');
				$this->data['confirmpayment'] = $this->url->link('account/order');
		$this->data['path'] = '';
				if(isset($this->request->get['path']))
				{
					$this->data['path']  = $this->request->get['path'];
					
				}		
		
		
		unset($this->session->data['shipping_method']);
		unset($this->session->data['shipping_methods']);
		unset($this->session->data['payment_method']);
		unset($this->session->data['payment_methods']);
		unset($this->session->data['guest']);
		unset($this->session->data['comment']);
		unset($this->session->data['orders']);	
		unset($this->session->data['ordersId']);	
		
		unset($this->session->data['coupon']);
		unset($this->session->data['reward']);
		unset($this->session->data['voucher']);
		unset($this->session->data['vouchers']);
		
		unset($this->session->data['greeting']);
		unset($this->session->data['wrapping']);

		unset($this->session->data['addOnPrice']);
		unset($this->session->data['totalAddOnPrice']);
		unset($this->session->data['shipping_address_id']);
		
								   
		$this->language->load('checkout/success');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		if ($this->customer->isLogged()) {
    		$this->data['text_message'] = sprintf($this->language->get('text_customer'), $this->url->link('account/account', '', 'SSL'), $this->url->link('account/order', '', 'SSL'), $this->url->link('account/download', '', 'SSL'), $this->url->link('information/contact'));
		} else {
    		$this->data['text_message'] = sprintf($this->language->get('text_guest'), $this->url->link('information/contact'));
		}
		
    	$this->data['button_continue'] = $this->language->get('button_continue');

    	$this->data['continue'] = $this->url->link('common/home');
		echo 'transaction fail';	
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success_payment.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/success_payment.tpl';
		} else {
			$this->template = 'default/template/common/success_payment.tpl';
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
?>