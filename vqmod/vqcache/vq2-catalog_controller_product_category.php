<?php 
class ControllerProductCategory extends Controller {
	  
	public function index() { 
		
		$this->language->load('product/category');
		
		$this->load->model('catalog/category');
		
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
		$intCatId='';		
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
							
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
       		'separator' => false
   		);	
		$intCatId='';
		$categories = $this->model_catalog_category->getCategories(0,"","","");
		if(!(int)$intCatId)
		{
			$intCatId = $categories[0]['category_id'];
		}
		if (isset($this->request->get['path']) || ($intCatId > 0)) {
			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}	
			
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
									
			$path = '';
			if (isset($this->request->get['path']))
			{
			//	echo "sdfdf";exit;
			$parts = explode('_',(string)$this->request->get['path']);
			if(!(int)$parts[0] && $intCatId > 0)
				$this->data['mainCat']=$intCatId;
			else	
				$this->data['mainCat']=$parts[0];
			if(isset($parts[1]))
			{
				$this->data['subCat']=$parts[1];
			}
			else
			{
				$this->data['subCat']='';
			}
			$category_id = (int)array_pop($parts);
			
			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}
				// /echo $path_id;				
				$category_info = $this->model_catalog_category->getCategory($path_id);
				
				if ($category_info) {
	       			$this->data['breadcrumbs'][] = array(
   	    				'text'      => $category_info['name'],
						'href'      => $this->url->link('product/category', 'path=' . $path . $url),
        				'separator' => $this->language->get('text_separator')
        			);
				 }
				}
			}
			else
			{
				$category_id=$intCatId;
				$this->request->get['path'] = $intCatId;
				$this->data['mainCat']=$intCatId;
			    $this->data['subCat']='';	
			}
		
		} else {
			
			#$category_id = 0;
			$category_id = $intCatId;
			$this->data['product_path']=1;
			//$this->data['mainCat']='';
			//$this->data['subCat']='';
			
			
		
		}
		
		#$categories = $this->model_catalog_category->getCategories(0,"","","randomorder");
		foreach ($categories as $category) {
				if(!(int)$intCatId)
				{
					$intCatId = $category['category_id'];
				}
				$total = $this->model_catalog_product->getTotalProducts(array('filter_category_id' => $category['category_id']));

				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$product_total = $this->model_catalog_product->getTotalProducts($data);

					$total += $product_total;

					$children_data[] = array(
						'category_id' => $child['category_id'],
						'name'        => $child['name'],
						'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
					);		
				}

			if($this->data['mainCat'] ==$category['category_id'] )
			{
				$sortVar = 1;
			}
			else
			{
				$sortVar = 2;
			}
			$this->data['categories1'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'],
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' .$category['category_id']),
				'sortvar'      => $sortVar
			);
			//array_multisort($this->data['categories1'], SORT_ASC, $results); ;	
		}
		//$this->data['categories1'] = $this->aasort($this->data['categories1'],'sortvar');
		$this->document->setTitle('Categories');
		$this->document->setDescription('All Categories');
		$this->document->setKeywords('categories');	
		$category_info = $this->model_catalog_category->getCategory($category_id);
		
		if ($category_info) {
	  		$this->document->setTitle($category_info['name'].' | ');
			//$this->document->setDescription($category_info['meta_description']);
			//$this->document->setKeywords($category_info['meta_keyword']);
			$this->document->setDescription=$category_info['meta_description'];
			$this->document->setKeywords=$category_info['meta_keyword'];
			$this->document->addScript('catalog/view/javascript/jquery/jquery.total-storage.min.js');
			
			$this->data['heading_title'] = $category_info['name'];
			
			$this->data['text_refine'] = $this->language->get('text_refine');
			$this->data['text_empty'] = $this->language->get('text_empty');			
			$this->data['text_quantity'] = $this->language->get('text_quantity');
			$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$this->data['text_model'] = $this->language->get('text_model');
			$this->data['text_price'] = $this->language->get('text_price');
			$this->data['text_tax'] = $this->language->get('text_tax');
			$this->data['text_points'] = $this->language->get('text_points');
			$this->data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$this->data['text_display'] = $this->language->get('text_display');
			$this->data['text_list'] = $this->language->get('text_list');
			$this->data['text_grid'] = $this->language->get('text_grid');
$this->language->load('product/pds');
$this->data['pds_sku'] = $this->language->get('pds_sku');
$this->data['pds_upc'] = $this->language->get('pds_upc');
$this->data['pds_location'] = $this->language->get('pds_location');
$this->data['pds_model'] = $this->language->get('pds_model');
$this->data['pds_brand'] = $this->language->get('pds_brand');
$this->data['pds_stock'] = $this->language->get('pds_stock');
			$this->data['text_sort'] = $this->language->get('text_sort');
			$this->data['text_limit'] = $this->language->get('text_limit');
					
			$this->data['button_cart'] = $this->language->get('button_cart');
			$this->data['button_wishlist'] = $this->language->get('button_wishlist');
			$this->data['button_compare'] = $this->language->get('button_compare');
			$this->data['button_continue'] = $this->language->get('button_continue');
			
			// Set the last category breadcrumb		
			$url = '';
			
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
									
			$this->data['breadcrumbs'][] = array(
				'text'      => $category_info['name'],
				'href'      => $this->url->link('product/category', 'path=' . $this->request->get['path']),
				'separator' => $this->language->get('text_separator')
			);
								
			if ($category_info['image']) {
				$this->data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
			} else {
				$this->data['thumb'] = '';
			}
									
			$this->data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$this->data['compare'] = $this->url->link('product/compare');
			
			$url = '';
			
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}	
						
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}	
			
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
								
			$this->data['categories'] = array();
			
			$results = $this->model_catalog_category->getCategories($category_id);
			
			foreach ($results as $result) {
				$data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);
				
				$product_total = $this->model_catalog_product->getTotalProducts($data);				
				
				$this->data['categories'][] = array(
					'name'  => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url)
				);
			}
			
			$this->data['products'] = array();
			
			$data = array(
				'filter_category_id' => $category_id,
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
					$image = false;
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
				
if ($product_total != 0)  {
			if ($result['quantity'] <= 0) {
                $rstock = $result['stock_status'];
                } elseif ($this->config->get('config_stock_display')) {
                $rstock = $result['quantity'];
                } else {
                $rstock = $this->language->get('pds_instock');
                }}
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
								
				$this->data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
//produc display settings
					'sku'         => $result['sku'],
					'model'       => $result['model'],
					'brand'       => $result['manufacturer'],
					'location'    => $result['location'],
					'upc'         => $result['upc'],
					'stock'       => $rstock,
					'brand_url'   => $this->url->link('product/manufacturer/product', 'manufacturer_id=' . $result['manufacturer_id']),
					//end pds
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product','&product_id=' . $result['product_id'] . $url),
					'manufacturer' =>$result['manufacturer']
				);
			}
			
			$url = '';
			
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}
				
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
										
			$this->data['sorts'] = array();
			
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
			);
			
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)
			);

			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)
			);

			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			); 

			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			); 
			
if ($product_total != 0)  {
			if ($result['quantity'] <= 0) {
                $rstock = $result['stock_status'];
                } elseif ($this->config->get('config_stock_display')) {
                $rstock = $result['quantity'];
                } else {
                $rstock = $this->language->get('pds_instock');
                }}
			if ($this->config->get('config_review_status')) {
				$this->data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				); 
				
				$this->data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}
			
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)
			);

			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)
			);
			
			$url = '';
			
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}
				
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			$this->data['limits'] = array();
	
			$limits = array_unique(array($this->config->get('config_catalog_limit'), 25, 50, 75, 100));
			
			sort($limits);
		
			foreach($limits as $limits){
				$this->data['limits'][] = array(
					'text'  => $limits,
					'value' => $limits,
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $limits)
				);
			}
			
			$url = '';
			
			if (isset($this->request->get['filter'])) {
				$url .= '&filter=' . $this->request->get['filter'];
			}
				
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
	
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
					
			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->text = $this->language->get('text_pagination');
			$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');
		
			$this->data['pagination'] = $pagination->render();
		
			$this->data['sort'] = $sort;
			$this->data['order'] = $order;
			$this->data['limit'] = $limit;
		
											
    	} else {
			$url = '';
			
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
				
if ($product_total != 0)  {
			if ($result['quantity'] <= 0) {
                $rstock = $result['stock_status'];
                } elseif ($this->config->get('config_stock_display')) {
                $rstock = $result['quantity'];
                } else {
                $rstock = $this->language->get('pds_instock');
                }}
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
								
				$this->data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
//produc display settings
					'sku'         => $result['sku'],
					'model'       => $result['model'],
					'brand'       => $result['manufacturer'],
					'location'    => $result['location'],
					'upc'         => $result['upc'],
					'stock'       => $rstock,
					'brand_url'   => $this->url->link('product/manufacturer/product', 'manufacturer_id=' . $result['manufacturer_id']),
					//end pds
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product','&product_id=' . $result['product_id'] . $url),
					'manufacturer' =>$result['manufacturer']
				);
			}
			
			//$this->document->setTitle($this->language->get('text_error'));

      		$this->data['heading_title'] = $this->language->get('text_error');

      		$this->data['text_error'] = $this->language->get('text_error');

      		$this->data['button_continue'] = $this->language->get('button_continue');

			
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
				
				$this->data['path'] = '';
				if(isset($this->request->get['path']))
				{
					$this->data['path']  = $this->request->get['path'];
					
				}
					
				
		$this->data['continue'] = $this->url->link('common/home');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/product/category.tpl';
			} else {
				$this->template = 'default/template/product/category.tpl';
			}
			
			$this->children = array(
				//'common/column_left',
				//'common/column_right',
				//'common/content_top',
				//'common/content_bottom',
				'common/footer',
				'common/header'
			);
				
			$this->response->setOutput($this->render());		
  	}
	
	public function aasort (&$array, $key) {
	    $sorter=array();
	    $ret=array();
	    reset($array);
	    foreach ($array as $ii => $va) {
	        $sorter[$ii]=$va[$key];
	    }
	    asort($sorter);
	    foreach ($sorter as $ii => $va) {
	        $ret[$ii]=$array[$ii];
	    }
	    $array=$ret;
	 return $array;
}
	
	/**
* function
* @param
* @return
*/
	public function ajaxSearch()
	{
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		$this->load->model('catalog/category');
		$page = $this->request->get['page'];
		
		$limit = $this->request->get['limit'];
		
			if (isset($this->request->get['path'])) {
			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}	
			
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
									
			$path = '';
			
			$parts = explode('_', (string)$this->request->get['path']);
		
			$category_id = (int)array_pop($parts);
			
			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}
				
					
				$category_info = $this->model_catalog_category->getCategory($path_id);
				
				if ($category_info) {
	       			$this->data['breadcrumbs'][] = array(
   	    				'text'      => $category_info['name'],
						'href'      => $this->url->link('product/category', 'path=' . $path . $url),
        				'separator' => $this->language->get('text_separator')
        			);
				}
			}
		} else {
			$category_id = 0;
			$this->data['product_path']=1;
		}
		
		
		//$category_id  = '';
		$data = array(
				'filter_category_id' => $category_id,
				'filter_filter'      => '', 
				'sort'               => '',
				'order'              => '',
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
				);
		$results = $this->model_catalog_product->getProducts($data);	
		
		$product_total = $this->model_catalog_product->getTotalProducts($data); 
		$displayedProducts = ($page) * $limit;
		if($product_total > $displayedProducts)
		{
			$this->data['showViewmore'] = 1;
		}
		else
		{
			$this->data['showViewmore'] = 0;
		}
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
			
if ($product_total != 0)  {
			if ($result['quantity'] <= 0) {
                $rstock = $result['stock_status'];
                } elseif ($this->config->get('config_stock_display')) {
                $rstock = $result['quantity'];
                } else {
                $rstock = $this->language->get('pds_instock');
                }}
			if ($this->config->get('config_review_status')) {
				$rating = (int)$result['rating'];
			} else {
				$rating = false;
			}
							
			$this->data['products'][] = array(
				'product_id'  => $result['product_id'],
				'thumb'       => $image,
				'name'        => $result['name'],
//produc display settings
					'sku'         => $result['sku'],
					'model'       => $result['model'],
					'brand'       => $result['manufacturer'],
					'location'    => $result['location'],
					'upc'         => $result['upc'],
					'stock'       => $rstock,
					'brand_url'   => $this->url->link('product/manufacturer/product', 'manufacturer_id=' . $result['manufacturer_id']),
					//end pds
				'price'       => $price,
				'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'] . $url),
				'manufacturer' =>$result['manufacturer']
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/ajaxLoad.tpl')) {
						$this->template = $this->config->get('config_template') . '/template/product/ajaxLoad.tpl';
					} else {
						$this->template = 'default/template/product/ajaxLoad.tpl';
					}
					$this->response->setOutput($this->render());
	}
	
	
	public function allc(){
		
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		//$this->data['heading_title'] = $this->config->get('config_title');
		//$this->data['category'] = $this->url->link('product/category');
		//$this->data['justIn'] = $this->url->link('product/justin&type=all');
			$url = '';
			$this->language->load('product/category');
		
			$this->load->model('catalog/category');
			$this->load->model('catalog/product');
		
			$this->load->model('tool/image'); 
			$this->data['product_path']="";
			$this->data['personalize_link'] = $this->url->link('personalize/view');
			$this->data['allProduct']=$this->url->link('product/category');
			$this->data['allCategory']=$this->url->link('product/category/allc');
			
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
					
			$product_total = $this->model_catalog_product->getTotlaOldProducts($data); 
			
			$results = $this->model_catalog_product->getAllProducts($data,1);//($data,1)
		
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
				
if ($product_total != 0)  {
			if ($result['quantity'] <= 0) {
                $rstock = $result['stock_status'];
                } elseif ($this->config->get('config_stock_display')) {
                $rstock = $result['quantity'];
                } else {
                $rstock = $this->language->get('pds_instock');
                }}
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				$oldProducts[] = $result['product_id'];
				//if($this->costumwrap($result['product_id'])!="FALSE"){				
				$this->data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
//produc display settings
					'sku'         => $result['sku'],
					'model'       => $result['model'],
					'brand'       => $result['manufacturer'],
					'location'    => $result['location'],
					'upc'         => $result['upc'],
					'stock'       => $rstock,
					'brand_url'   => $this->url->link('product/manufacturer/product', 'manufacturer_id=' . $result['manufacturer_id']),
					//end pds
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product','&product_id=' . $result['product_id'] . $url),
					'manufacturer' => $result['manufacturer']
				);
				//}
				/*else{
					continue 1;
				}*/
				
			}
			
			$this->data['oldProducts'] =  implode(',',$oldProducts);
			
      		$this->data['heading_title'] = $this->language->get('text_error');

      		$this->data['text_error'] = $this->language->get('text_error');

      		$this->data['button_continue'] = $this->language->get('button_continue');
			$this->data['getStarted']=$this->url->link('personalize/view');
			
		$this->load->model('design/banner');
		$this->load->model('tool/image');
		$this->data['banners'] = array();
		
		$bannerIds = $this->model_design_banner->getHomeBannerId();
		if (isset($bannerIds[0]['banner_id'])) {
		$results = $this->model_design_banner->getBanner($bannerIds[0]['banner_id']);		
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


			//for category
			$categories1 = $this->model_catalog_category->getCategories(0,"","");
		//print_r($categories1);echo count($categories1);exit;
 			$this->data['searchCatUrl'] = $this->url->link('product/category/ajaxCategorySearch');
			foreach ($categories1 as $category) {
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				$children_data = array();
				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					
					$children_data[] = array(
						'category_id' => $child['category_id'],
						'name'        => $child['name'],
						'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
					);		
				}
				
				
				//echo $category['category_id'];
				$this->data['categories2'][] = array(
					'category_id' => $category['category_id'],
					'name'        => $category['name'],
					'children'    => $children_data,
					'href'        => $this->url->link('product/category', 'path=' .$category['category_id'])
				);	
		}
			//end for category
			
			$displayedProducts = ($page) * $limit;
			
			if($product_total > $displayedProducts)
			{
				$this->data['showViewmore'] = 1;
			}
			else
			{
				$this->data['showViewmore'] = 0;
			}
				$this->data['searchUrl'] = $this->url->link('product/justin/ajaxSearch/&all=yes');
				
				$this->data['path'] = '';
				if(isset($this->request->get['path']))
				{
					$this->data['path']  = $this->request->get['path'];
					
				}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/allCategory.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/product/allCategory.tpl';
		} else {
			$this->template = 'default/template/product/allCategory.tpl';
		}
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->data['categories'] = array();
							
		$this->children = array(
			//'common/column_left',
			//'common/column_right',
			//'common/content_top',
			//'common/content_bottom',
			'common/footer',
			'common/header',
			//'personalize/personalize'
		);
										
		$this->response->setOutput($this->render());
	}
	
	
	public function all()
	{
		//all product:
		/*
		$this->data['allproducts'] = $this->db->query("SELECT oc_product.image,oc_product.price,oc_product.product_id,oc_product_description.name FROM oc_product_description
													   LEFT JOIN oc_product
													   ON oc_product_description.product_id = oc_product.product_id
													   ORDER BY justin DESC
													   
													   ")->rows;*/
		
			
		
		$this->language->load('product/category');
		
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');  
		$this->data['path']="";
		
		$start= 0;
		$this->data['allProduct']=$this->url->link('product/category');
		$this->data['allCategory']=$this->url->link('product/category/all');
			if (isset($this->request->get['filter'])) {
				$filter = $this->request->get['filter'];
			} else {
				$filter = '';
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
				//$limit=3;
				//die;
			}
			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}	
			
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
									
			$path = '';
			
			if (isset($this->request->get['path'])) {
			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}	
			
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
									
				$this->data['path'] = '';
				if(isset($this->request->get['path']))
				{
					$this->data['path']  = $this->request->get['path'];
				}
			
			$parts = explode('_', (string)$this->request->get['path']);
		
			$category_id = (int)array_pop($parts);
			
			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}
				
					
				$category_info = $this->model_catalog_category->getCategory($path_id);
				
				if ($category_info) {
	       			$this->data['breadcrumbs'][] = array(
   	    				'text'      => $category_info['name'],
						'href'      => $this->url->link('product/category', 'path=' . $path . $url),
        				'separator' => $this->language->get('text_separator')
        			);
				}
			}
		} else {
			$category_id = 0;
			$this->data['product_path']=1;
			
			
		
		}
		
		
		$categories1 = $this->model_catalog_category->getCategories(0,"","");
		//print_r($categories1);echo count($categories1);exit;
 			$this->data['searchCatUrl'] = $this->url->link('product/category/ajaxCategorySearch');
			foreach ($categories1 as $category) {
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				$children_data = array();
				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					
					$children_data[] = array(
						'category_id' => $child['category_id'],
						'name'        => $child['name'],
						'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
					);		
				}
				
				
				//echo $category['category_id'];
				$this->data['categories2'][] = array(
					'category_id' => $category['category_id'],
					'name'        => $category['name'],
					'children'    => $children_data,
					'href'        => $this->url->link('product/category', 'path=' .$category['category_id'])
				);	
		}
			$this->document->setTitle('Categories');
			$this->document->setDescription('All Categories');
			$this->document->setKeywords('categories');	
			
			
			$categories = $this->model_catalog_category->getCategories($category_id,$start,$limit);
 			$this->data['searchCatUrl'] = $this->url->link('product/category/ajaxCategorySearch');
			foreach ($categories as $category) {
				
				if ($category['image']!='') {
						$image = $this->model_tool_image->resize($category['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
					} 
					else {
						
						$image = $this->model_tool_image->resize('no_image.jpg', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
						
					}
					//echo $image;
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				$children_data = array();
				foreach ($children as $child) {
					
						
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					
					$children_data[] = array(
						'category_id' => $child['category_id'],
						'name'        => $child['name'],
						'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
					);		
				}
				
				$this->data['categories1'][] = array(
					'category_id' => $category['category_id'],
					'name'        => $category['name'],
					'children'    => $children_data,
					'thumb'		  => $image,
					'href'        => $this->url->link('product/category', 'path=' .$category['category_id'])
				);	
				
				
		}
		$category_total = $this->model_catalog_category->getTotalCategoriesByCategoryId($category_id); 
		
		$displayedCategory = ($page) * $limit;
		if($category_total > $displayedCategory)
		{
				$this->data['showViewmore'] = 1;
			}
			else
			{
				$this->data['showViewmore'] = 0;
			}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/allCategory.tpl')) {
						$this->template = $this->config->get('config_template') . '/template/product/allCategory.tpl';
					} else {
						$this->template = 'default/template/product/allCategory.tpl';
					}
		$this->children = array(
				//'common/column_left',
				//'common/column_right',
				//'common/content_top',
				//'common/content_bottom',
				'common/footer',
				'common/header'
			);
				
			$this->response->setOutput($this->render());	
	}
	
	
		/**
* function
* @param
* @return
*/
	public function ajaxCategorySearch()
	{	
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		$this->load->model('catalog/category');
		$page = $this->request->get['page'];
		$limit = $this->request->get['limit'];
		$start             = ($page - 1) * $limit;	
			
			$url = '';
			
			$page = $this->request->get['page'];
		
		$limit = $this->request->get['limit'];
		
			if (isset($this->request->get['path'])) {
			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}	
			
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
									
			$path = '';
			
			$parts = explode('_', (string)$this->request->get['path']);
		
			$category_id = (int)array_pop($parts);
			
			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}
				
					
				$category_info = $this->model_catalog_category->getCategory($path_id);
				
				if ($category_info) {
	       			$this->data['breadcrumbs'][] = array(
   	    				'text'      => $category_info['name'],
						'href'      => $this->url->link('product/category', 'path=' . $path . $url),
        				'separator' => $this->language->get('text_separator')
        			);
				}
			}
		} else {
			$category_id = 0;
			$this->data['product_path']=1;
		}
			
			$categories = $this->model_catalog_category->getCategories($category_id,$start,$limit);
 
			foreach ($categories as $category) {
				if ($category['image']) {
				$image = $this->model_tool_image->resize($category['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			} else {
				$image = $this->model_tool_image->resize('no_image.jpg', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
			}
				
		$this->data['categories1'][] = array(
						'category_id' => $category['category_id'],
						'name'        => $category['name'],
						'children'    => '',
						'thumb'		  => $image,
						'href'        => $this->url->link('product/category', 'path=' .$category['category_id'])
					);	
					
				}	

				
				
			
		 $category_total = $this->model_catalog_category->getTotalCategoriesByCategoryId($category_id); 
		
		$displayedCategory = ($page) * $limit;
		if($category_total > $displayedCategory)
		{
			$this->data['showViewmore'] = 1;
		}
		else
		{
			$this->data['showViewmore'] = 0;
		}
		

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/ajaxCatLoad.tpl')) {
						$this->template = $this->config->get('config_template') . '/template/product/ajaxCatLoad.tpl';
					} else {
						$this->template = 'default/template/product/ajaxCatLoad.tpl';
					}
					$this->response->setOutput($this->render());
	}

	
	
	
}
?>