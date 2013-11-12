<?php
class ModelTotalCoupon extends Model {
	public function getTotal(&$total_data, &$total, &$taxes) {
		if (isset($this->session->data['coupon'])) {
			$this->language->load('total/coupon');
			
			$this->load->model('checkout/coupon');
			 
			$coupon_info = $this->model_checkout_coupon->getCoupon($this->session->data['coupon']);
			$actualDiscount = $coupon_info['discount'];
			if ($coupon_info) {
				$discount_total = 0;
				
				if (!$coupon_info['product']) {
					$sub_total = $this->cart->getSubTotal();
				} else {
					$sub_total = 0;
				
					foreach ($this->cart->getProducts() as $product) {
						if (in_array($product['product_id'], $coupon_info['product'])) {
							$sub_total += $product['total'];
						}
					}					
				}
				
				if ($coupon_info['type'] == 'F') {
					$coupon_info['discount'] = min($coupon_info['discount'], $sub_total);
				}
				
				foreach ($this->cart->getProducts() as $product) {
					$discount = 0;
					
					if (!$coupon_info['product']) {
						$status = true;
					} else {
						if (in_array($product['product_id'], $coupon_info['product'])) {
							$status = true;
						} else {
							$status = false;
						}
					}
					
					$productTotal = 0;
					$greetingPrice = 0;
					$wrappingPrice = 0;
					
					if(isset($this->session->data['greeting'][$product['product_id']]))
					{
						if($this->session->data['greeting'][$product['product_id']]['greetingType'] == 'std')
						{
							$greetingPrice = (int)$this->session->data['greeting'][$product['product_id']]['price'] * $product['quantity']; 
						}
						else
						{
							$greetingPrice = ((int)$this->session->data['greeting'][$product['product_id']]['price'] +(int)$this->config->get('greetingPremium')) * $product['quantity']; 
						}
					}
					
					if(isset($this->session->data['wrapping'][$product['product_id']]))
					{
						if($this->session->data['wrapping'][$product['product_id']]['wrappingType'] == 'std')
						{
							$wrappingPrice = (int)$this->session->data['wrapping'][$product['product_id']]['price'] * $product['quantity']; 
						}
						else
						{
							$wrappingPrice = ((int)$this->session->data['wrapping'][$product['product_id']]['price'] + (int)$this->config->get('wrappingPremium')) * $product['quantity']; 
						}
					}
					
					$productTotal = $product['total'] + $greetingPrice + $wrappingPrice;
					if ($status) {
						if ($coupon_info['type'] == 'F') {
							$discount = $coupon_info['discount'] * ($productTotal / $sub_total);
						} elseif ($coupon_info['type'] == 'P') {
							$discount = $productTotal/ 100 * $coupon_info['discount'];
						}
				
						if ($product['tax_class_id']) {
							$tax_rates = $this->tax->getRates($productTotal- ($productTotal - $discount), $product['tax_class_id']);
							
							foreach ($tax_rates as $tax_rate) {
								if ($tax_rate['type'] == 'P') {
									$taxes[$tax_rate['tax_rate_id']] -= $tax_rate['amount'];
								}
							}
						}
					}
					
					$discount_total += $discount;
				}
				
				/*echo $discount_total;
				echo '<pre>';
				print_r($this->session->data['shipping_method']);
				print_r($coupon_info);*/
				/*if ($coupon_info['shipping'] && isset($this->session->data['shipping_method'])) {
					if (!empty($this->session->data['shipping_method']['tax_class_id'])) {
						$tax_rates = $this->tax->getRates($this->session->data['shipping_method']['cost'], $this->session->data['shipping_method']['tax_class_id']);
						
						foreach ($tax_rates as $tax_rate) {
							if ($tax_rate['type'] == 'P') {
								$taxes[$tax_rate['tax_rate_id']] -= $tax_rate['amount'];
							}
						}
					}
					
					$discount_total += $this->session->data['shipping_method']['cost'];				
				}	*/			
      		
				if(isset($this->session->data['shipping_method']))
				{
					if ($coupon_info['type'] == 'F') {
						$discount_total += $this->session->data['shipping_method']['cost'];		
					}elseif ($coupon_info['type'] == 'P') {
						$discount_total += ($this->session->data['shipping_method']['cost'] * $coupon_info['discount']/100 );		
					}
				}
			
				if($coupon_info['type'] == 'F' && $discount_total > $actualDiscount )
				{
					$discount_total =  $actualDiscount ;
				}
				
				$total_data[] = array(
					'code'       => 'coupon',
        			'title'      => sprintf($this->language->get('text_coupon'), $this->session->data['coupon']),
	    			'text'       => $this->currency->format(-$discount_total),
        			'value'      => -$discount_total,
					'sort_order' => $this->config->get('coupon_sort_order')
      			);

				$total -= $discount_total;
			} 
		}
	}
	
	public function confirm($order_info, $order_total) {
		$code = '';
		
		$start = strpos($order_total['title'], '(') + 1;
		$end = strrpos($order_total['title'], ')');
		
		if ($start && $end) {  
			$code = substr($order_total['title'], $start, $end - $start);
		}	
		
		$this->load->model('checkout/coupon');
		
		$coupon_info = $this->model_checkout_coupon->getCoupon($code);
			
		if ($coupon_info) {
			$this->model_checkout_coupon->redeem($coupon_info['coupon_id'], $order_info['order_id'], $order_info['customer_id'], $order_total['value']);	
		}						
	}
}
?>