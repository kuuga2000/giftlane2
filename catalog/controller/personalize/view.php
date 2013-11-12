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
#date: 01 July 2013
*/

class ControllerPersonalizeView extends Controller {
	
	
	
	public function index()
	{
		$this->document->setTitle='Personalise'.' | ';
		$this->document->setDescription='Personalise';
		$this->document->setKeywords='Personalise';	
		
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
		$url='';
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
					
			
			$this->data['showViewmore'] = 0;
				$this->data['searchUrl'] = $this->url->link('product/category/ajaxSearch');
				
				$this->data['path'] = '';
				if(isset($this->request->get['path']))
				{
					$this->data['path']  = $this->request->get['path'];
					
				}
					
				
		$this->data['continue'] = $this->url->link('common/home');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/personalize/viewPersonalize.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/personalize/viewPersonalize.tpl';
		} else {
			$this->template = 'my_giftlane/template/personalize/viewPersonalize.tpl';
		}
		
		
		$this->children = array(
			'common/footer',
			'personalize/header',
			'personalize/personalize'
		);
										
		$this->response->setOutput($this->render());
	}
	
}