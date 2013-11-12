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

class ControllerPersonalizePersonalize extends Controller {
	/**
	* Function for rendering view file for personalize section
	* @param undefined $setting
	* 
	*/
	protected function index() {
		
		$this->load->model('catalog/personalize_question');
		
		//-------------------- Getting personalize gift events ---------------------------
		$this->data['personalize_events'] = $this->model_catalog_personalize_question->getAllEvents();	
		$this->data['getStarted']=$this->url->link('personalize/view');
		//-------------------- Getting personalize gift receipients ---------------------------
		$this->data['personalize_receipients'] = $this->model_catalog_personalize_question->getAllReceipient();	
		
		//-------------------- Getting personalize gift personalities ---------------------------
		$this->data['personalize_personality'] = $this->model_catalog_personalize_question->getAllPersonality();
		
		//-------------------- Getting personalize gift interests ---------------------------
		$this->data['personalize_interest'] = $this->model_catalog_personalize_question->getAllInterest();	
	
		$this->data['searchUrl'] = $this->url->link('personalize/personalize/searchProducts');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/personalize/personalize.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/personalize/personalize.tpl';
		} else {
			$this->template = 'default/template/personalize/personalize.tpl';
		}
		
		
		
		$this->render();
	}
	
	/**
	* Function for getting list of product on the basis of search
	* @param undefined $setting
	* 
	*/
	public function searchProducts()
	{
		
		$event = '';
		$receipient = '';
		$personality = '';
		$gender = '';
		$age = '';
		$interest = '';
		$techSavvy = '';
		$wardrobeColor = '';
		$creativity = '';
		$page = 1;
		$limit = 6;
		
		//---------------- Getting all search params 
		if(isset($this->request->get['event']) && $this->request->get['event'] != '')
		{
			$event = $this->request->get['event'];
		}
		
		if(isset($this->request->get['receipient']) && $this->request->get['receipient'] != '')
		{
			$receipient = $this->request->get['receipient'];
		}
		
		if(isset($this->request->get['personality']) && $this->request->get['personality'] != '')
		{
			$personality = $this->request->get['personality'];
		}
		
		if(isset($this->request->get['gender']) && $this->request->get['gender'] != '')
		{
			$gender = $this->request->get['gender'];
		}
		
		if(isset($this->request->get['age']) && $this->request->get['age'] != '')
		{
			$age = $this->request->get['age'];
		}
		
		if(isset($this->request->get['interest']) && $this->request->get['interest'] != '')
		{
			$interest = $this->request->get['interest'];
		}
		
		if(isset($this->request->get['techSavvy']) && $this->request->get['techSavvy'] != '')
		{
			$techSavvy = $this->request->get['techSavvy'];
		}
		
		if(isset($this->request->get['wardrobeColor']) && $this->request->get['wardrobeColor'] != '')
		{
			$wardrobeColor = $this->request->get['wardrobeColor'];
		}
		
		if(isset($this->request->get['creativity']) && $this->request->get['creativity'] != '')
		{
			$creativity = $this->request->get['creativity'];
		}
		
		//-------------- getting new start and limit
		if(isset($this->request->get['page']) && $this->request->get['page'] != '')
		{
			$page = $this->request->get['page'];
		}
		
		if(isset($this->request->get['limit']) && $this->request->get['limit'] != '')
		{
			$limit = $this->request->get['limit'];
		}		
		$this->load->model('catalog/personalize_question');
		$this->load->model('tool/image');
		
	
		// ------------- getting count of all products on the basis of search criteria for pagination
		$filterProductCount  = $this->model_catalog_personalize_question->filterProductCount($event,$receipient,$personality,$gender,$age,$interest,$techSavvy,$wardrobeColor,$creativity);
		
			// ------------- getting list of all products on the basis of search criteria
		$this->data['productList'] = $this->model_catalog_personalize_question->filterProducts($event,$receipient,$personality,$gender,$age,$interest,$techSavvy,$wardrobeColor,$creativity, $page,$limit);	
		
		
		$showingResult = ($page)*$limit;
		
		//------------------- check if total products are displayed or not to display view more button
		if($filterProductCount > $showingResult)
		{
			$this->data['showViewMore'] = 1;
		}
		else
		{
			$this->data['showViewMore'] = 0;
		}
		
		$nextPage = $page + 1;
		
		$this->data['nextPage'] = $nextPage;
		$productsArray = array();
		if(count($this->data['productList']) > 0)
		{
			$this->load->model('catalog/product');
			foreach($this->data['productList'] AS $product )
			{
				//-------------- getting product details
				$product_info = $this->model_catalog_product->getProduct($product['product_id']);	
				
				
				if($product_info['image'] != '')
				{
					$image = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));
				}
				else
				{
						$image = $this->model_tool_image->resize('no_image.jpg', $this->config->get('config_image_popup_width'), $this->config->get('config_image_popup_height'));
				}
				$productsArray[] =  array(
				'name' => $product_info['name'],
				'manufacturer' => $product_info['manufacturer'],
				'price' => $this->currency->format($product_info['price'],'', $this->config->get('config_tax')),
				'image' => $image,
				'href'  => $this->url->link('product/product','product_id=' . $product_info['product_id'])
				);
			}
		}
		
		$this->data['products'] = 	$productsArray	;
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/personalize/searchList.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/personalize/searchList.tpl';
		} else {
			$this->template = 'default/template/personalize/searchList.tpl';
		}
		
		$this->response->setOutput($this->render());
	}
}
?>