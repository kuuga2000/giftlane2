<?php
class ControllerModuleFeatured extends Controller {
	protected function index($setting) {
		$this->language->load('module/featured'); 
$this->language->load('product/pds');
$this->data['pds_sku'] = $this->language->get('pds_sku');
$this->data['pds_upc'] = $this->language->get('pds_upc');
$this->data['pds_location'] = $this->language->get('pds_location');
$this->data['pds_model'] = $this->language->get('pds_model');
$this->data['pds_brand'] = $this->language->get('pds_brand');
$this->data['pds_stock'] = $this->language->get('pds_stock');

      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->load->model('catalog/product'); 
		
		$this->load->model('tool/image');

		$this->data['products'] = array();

		$products = explode(',', $this->config->get('featured_product'));		

		if (empty($setting['limit'])) {
			$setting['limit'] = 5;
		}
		
		$products = array_slice($products, 0, (int)$setting['limit']);
		
		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);
			
			if ($product_info) {
				if ($product_info['image']) {
					$image = $this->model_tool_image->resize($product_info['image'], $setting['image_width'], $setting['image_height']);
				} else {
					$image = false;
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
						
				if ((float)$product_info['special']) {
					$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
				
if ($product_info['quantity'] <= 0) {
                $rstock = $product_info['stock_status'];
                } elseif ($this->config->get('config_stock_display')) {
                $rstock = "Stock: " . $product_info['quantity'];
                } else {
                $rstock = $this->language->get('pds_instock');
                }
				if ($this->config->get('config_review_status')) {
					$rating = $product_info['rating'];
				} else {
					$rating = false;
				}
					
				$this->data['products'][] = array(
					'product_id' => $product_info['product_id'],
					'thumb'   	 => $image,
					'name'    	 => $product_info['name'],
//produc display settings
					'sku'         => $product_info['sku'],
					'model'       => $product_info['model'],
					'brand'       => $product_info['manufacturer'],
					'location'    => $product_info['location'],
					'upc'         => $product_info['upc'],
					'stock'        => $rstock,
					'brand_url'   => $this->url->link('product/manufacturer/product', 'manufacturer_id=' . $product_info['manufacturer_id']),
					//end pds
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
				);
			}
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/featured.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/featured.tpl';
		} else {
			$this->template = 'default/template/module/featured.tpl';
		}

		$this->render();
	}
}
?>