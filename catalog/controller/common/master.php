<?php  
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#auther: Gaurav patil
#data: 28 June 2013
*/

//------------ This is the landing page when there is no query string in URL
class ControllerCommonMaster extends Controller {
	public function index() {
		
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
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['personalize_link'] = $this->url->link('personalize/view');
		$this->data['heading_title'] = $this->config->get('config_title');
		$this->data['category'] = $this->url->link('product/category');
		$this->data['logged'] = $this->customer->isLogged();
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['shopping_cart'] = $this->url->link('checkout/cart');
		$this->data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
		$this->data['logout'] = $this->url->link('account/logout', '', 'SSL');
		$this->data['getStarted']=$this->url->link('personalize/view');
		$this->data['justIn'] = $this->url->link('product/justin&type=all');
			
			$this->load->model('design/banner');
			$this->load->model('tool/image');
			
			$url = '';
			$this->load->model('catalog/product');
		
			$this->load->model('tool/image'); 
			$this->data['product_path']="";
			$this->data['allProduct']=$this->url->link('product/category');
			$this->data['allCategory']=$this->url->link('product/category/all');
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
			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}
			
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}
												
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
				
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
						
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
						
			$this->data['products'] = array();
			
			$data = array(
				'filter_category_id' => 0,
				'filter_filter'      => $filter, 
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);
					
			$product_total = $this->model_catalog_product->getTotlaJustInProducts($data); 
			
			$results = $this->model_catalog_product->getJustinProducts($data,1);
			
		
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
								$oldProducts[] = $result['product_id'];	
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
					'manufacturer'=>$result['manufacturer']
				);
			}
			$this->data['oldProducts'] =  implode(',',$oldProducts);
			//$this->document->setTitle($this->language->get('text_error'));

      		$this->data['heading_title'] = $this->language->get('text_error');

      		$this->data['text_error'] = $this->language->get('text_error');

      		$this->data['button_continue'] = $this->language->get('button_continue');

			
			$this->data['banners'] = array();
			
			$bannerId = $this->model_design_banner->getHomeBannerId();
			if (isset($bannerId[0]['banner_id'])) {
			$results = $this->model_design_banner->getBanner($bannerId[0]['banner_id']);		
			foreach ($results as $result) {
				if (file_exists(DIR_IMAGE . $result['image'])) {
					$product_info = $this->model_catalog_product->getProduct($result['link']);
					
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false; 
				}
									
					$this->data['banners'][] = array(
						'title' => $result['title'],
						'link'  => $result['link'],
						//'href'  => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
						'baner_image' => $this->model_tool_image->resize($result['image'], '960px', '465px')
						//'product_image' => $this->model_tool_image->resize($product_info['image'], $setting['image_width'], $setting['image_height'])
					);
				}
			 }
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
				$this->data['searchUrl'] = $this->url->link('product/justin/ajaxSearch');
				
				$this->data['path'] = '';
				if(isset($this->request->get['path']))
				{
					$this->data['path']  = $this->request->get['path'];
					
				}
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/my_home1.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/my_home1.tpl';
		} else {
			$this->template = 'my_giftlane/template/common/my_home1.tpl';
		}
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->data['categories'] = array();
					
		$categories = $this->model_catalog_category->getCategories(0);
		
		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();
				
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				
				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);
					
					$product_total = $this->model_catalog_product->getTotalProducts($data);
									
					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);						
				}
				
				// Level 1
				$this->data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
		
			
		
		$this->children = array(
			'common/footer',
			'home/header',
			//'personalize/personalize'
		);
										
		$this->response->setOutput($this->render());
	}
	
	function searchquestion()
	{
		
		$this->language->load('account/register');
		
		$this->data['entry_firstname'] = $this->language->get('entry_firstname');
    	$this->data['entry_lastname'] = $this->language->get('entry_lastname');
    	$this->data['entry_email'] = $this->language->get('entry_email');
    	

		$this->data['button_continue'] = 'Submit';
		
			if (($this->request->post['submitId'] != 0) && $this->validate()) {
			$this->model_account_customer->addCustomer($this->request->post);

			$this->customer->login($this->request->post['email'], $this->request->post['password']);
			
			unset($this->session->data['guest']);
							  	  
	  		//$this->redirect($this->url->link('account/success'));
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
		
		$this->data['action'] = $this->url->link('common/home/searchquestion', '', 'SSL');
		
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
		
		if (isset($this->request->post['email'])) {
    		$this->data['email'] = $this->request->post['email'];
		} else {
			$this->data['email'] = '';
		}
		
	
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/search.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/search.tpl';
		} else {
			$this->template = 'my_giftlane/template/account/search.tpl';
		}
		
		
		$this->children = array(
			//'common/column_left',
			//'common/column_right',
			//'common/content_top',
			//'common/content_bottom',
			//'common/footer',
			//'common/header'
		);
				
		$this->response->setOutput($this->render());
	}
	
	/*protected function validate() {
		
		if ((utf8_strlen($this->request->post['firstname']) < 1) || (utf8_strlen($this->request->post['firstname']) > 32)) {
      		$this->error['firstname'] = $this->language->get('error_firstname');
    	}

    	if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32)) {
      		$this->error['lastname'] = $this->language->get('error_lastname');
    	}

    	if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
      		$this->error['email'] = $this->language->get('error_email');
    	}
		
		if (!$this->error) {
      		return true;
    	} else {
      		return false;
    	}  	
  	}*/
}
?>