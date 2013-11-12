<?php
class ControllerCatalogOptionPersonalize extends Controller {
	private $error = array();  
 
	public function index() {
		$this->language->load('catalog/personalize');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/option_personalize');
		
		
		$this->getList();
	}

	public function insert() {
		$this->language->load('catalog/personalize');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/option_personalize');
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {

			$this->model_catalog_option_personalize->addOptionAns($this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');

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
			
			$this->redirect($this->url->link('catalog/optionpersonalize', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getCategoryForm();
	}
	
	
	public function update() {
		$this->language->load('catalog/option');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/option_personalize');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_option_personalize->editOptionAns($this->request->get['option_id'], $this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');

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
			
			$this->redirect($this->url->link('catalog/optionpersonalize', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}
		
		$this->getCategoryForm();
	}

	public function delete() {
		$this->language->load('catalog/option');

		$this->document->setTitle($this->language->get('heading_title'));
 		
		$this->load->model('catalog/option_personalize');
		
		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $option_id) {
				$this->model_catalog_option_personalize->deleteOptionAns($option_id);
			}
			
			$this->session->data['success'] = $this->language->get('text_success');
			
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
			
			$this->redirect($this->url->link('catalog/optionpersonalize', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}


	public function getCategoryForm()
	{
		$this->data['heading_title'] = $this->language->get('heading_title');


		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_option_value'] = $this->language->get('button_add_option_value');
		$this->data['button_remove'] = $this->language->get('button_remove');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
 		if (isset($this->error['name'])) {
			$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = array();
		}	
				
 		if (isset($this->error['option_value'])) {
			$this->data['error_option_value'] = $this->error['option_value'];
		} else {
			$this->data['error_option_value'] = array();
		}	
		$url = '';	
		//$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		$this->data['option'] = array();
		$this->data['question_values']=$question_values = $this->model_catalog_option_personalize->getQuestionesValue();
		if (isset($this->request->post['option_value'])) {
			$option_values = $this->request->post['option_value'];
			
			$this->data['option']['strOptionName']= $option_values[0]['name'];
			$this->data['option']['strOptionType']= $option_values[0]['type'];
			$this->data['option']['strOptionStatus']= $option_values[0]['status'];
		} elseif (isset($this->request->get['option_id'])) {
			
			$option_values = $this->model_catalog_option_personalize->getOptionAnsValue($this->request->get['option_id']);
			
			
			$this->data['option']['strOptionName']= $option_values[0]['answer'];
			$this->data['option']['strOptionType']= $option_values[0]['question_id'];
			$this->data['option']['strOptionStatus']= $option_values[0]['status'];
			
		} else {
			$option_values = array();
		}
		 
	
		
		
		$this->template = 'catalog/personalize_ans.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
		#
	}
	protected function getList() {
		
		/*if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'od.name';
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

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/option', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);
		*/
		$this->data['insert'] = $this->url->link('catalog/optionpersonalize/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$this->data['delete'] = $this->url->link('catalog/optionpersonalize/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');
		 
		$this->data['options'] = array();
		
		$data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_admin_limit'),
			'limit' => $this->config->get('config_admin_limit')
		);
		$option_total = $this->model_catalog_option_personalize->getOptionAllAns('','count');
		
		$results = $this->model_catalog_option_personalize->getOptionAllAns();
		//echo '<pre>';
		//print_r($results);
		foreach ($results as $result) 
		{
			
			$action = array();
			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('catalog/optionpersonalize/update', 'token=' . $this->session->data['token'] . '&option_id=' . $result['answer_id'] . $url, 'SSL')
			);

			$this->data['options_category'][] = array(
				'id'  => $result['answer_id'],
				'name'       => $result['answer'],
				'type'       => ucfirst($result['question']),
				'status' =>     ucfirst($result['status']),
				'action'     => $action
			);
		}
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_no_results'] = $this->language->get('text_no_results');
		
		$this->data['column_name'] = $this->language->get('column_name');
		$this->data['column_sort_order'] = $this->language->get('column_sort_order');
		$this->data['column_action'] = $this->language->get('column_action');	

		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');
 
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$this->data['sort_name'] = $this->url->link('catalog/option', 'token=' . $this->session->data['token'] . '&sort=od.name' . $url, 'SSL');
		$this->data['sort_sort_order'] = $this->url->link('catalog/option', 'token=' . $this->session->data['token'] . '&sort=o.sort_order' . $url, 'SSL');
		
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}
												
		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $option_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('catalog/optionpersonalize', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		
		#$this->data['pagination'] = $pagination->render();
		
		$this->data['sort'] = $sort;
		$this->data['order'] = $order;

		$this->template = 'catalog/option_ans_list.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'catalog/optioncategory')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (isset($this->request->post['option_name']) && trim($this->request->post['option_name']) != "" ) 
		{
			$this->load->model('catalog/option_personalize');
			
			if(isset($this->request->get['option_id']))
			{
				$intIsExists = $this->model_catalog_option_personalize->getOptionAnsExists($this->request->post['option_name'], $this->request->post['type'],$this->request->get['option_id']);
			}
			else
				{
					$intIsExists = $this->model_catalog_option_personalize->getOptionAnsExists($this->request->post['option_name'], $this->request->post['type']);
				}
				
				
			if((int)$intIsExists)
			{
				$this->error['warning'] = "Answer already exists";
			}
		}
		else
		{
			$this->error['warning'] = "Please enter Option Name";
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'catalog/option')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		$this->load->model('catalog/product');
		
		foreach ($this->request->post['selected'] as $option_id) {
			$product_total = $this->model_catalog_product->getTotalProductsByOptionId($option_id);

			if ($product_total) {
				$this->error['warning'] = sprintf($this->language->get('error_product'), $product_total);
			}
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}	
	
	public function autocomplete() {
		$json = array();
		
		if (isset($this->request->get['filter_name'])) {
			$this->language->load('catalog/option');
			
			$this->load->model('catalog/option');
			
			$this->load->model('tool/image');
			
			$data = array(
				'filter_name' => $this->request->get['filter_name'],
				'start'       => 0,
				'limit'       => 20
			);
			
			$options = $this->model_catalog_option->getOptions($data);
			
			foreach ($options as $option) {
				$option_value_data = array();
				
				if ($option['type'] == 'select' || $option['type'] == 'radio' || $option['type'] == 'checkbox' || $option['type'] == 'image') {
					$option_values = $this->model_catalog_option->getOptionValues($option['option_id']);
					
					foreach ($option_values as $option_value) {
						if ($option_value['image'] && file_exists(DIR_IMAGE . $option_value['image'])) {
							$image = $this->model_tool_image->resize($option_value['image'], 50, 50);
						} else {
							$image = '';
						}
													
						$option_value_data[] = array(
							'option_value_id' => $option_value['option_value_id'],
							'name'            => html_entity_decode($option_value['name'], ENT_QUOTES, 'UTF-8'),
							'image'           => $image					
						);
					}
					
					$sort_order = array();
				  
					foreach ($option_value_data as $key => $value) {
						$sort_order[$key] = $value['name'];
					}
			
					array_multisort($sort_order, SORT_ASC, $option_value_data);					
				}
				
				$type = '';
				
				if ($option['type'] == 'select' || $option['type'] == 'radio' || $option['type'] == 'checkbox' || $option['type'] == 'image') {
					$type = $this->language->get('text_choose');
				}
				
				if ($option['type'] == 'text' || $option['type'] == 'textarea') {
					$type = $this->language->get('text_input');
				}
				
				if ($option['type'] == 'file') {
					$type = $this->language->get('text_file');
				}
				
				if ($option['type'] == 'date' || $option['type'] == 'datetime' || $option['type'] == 'time') {
					$type = $this->language->get('text_date');
				}
												
				$json[] = array(
					'option_id'    => $option['option_id'],
					'name'         => strip_tags(html_entity_decode($option['name'], ENT_QUOTES, 'UTF-8')),
					'category'     => $type,
					'type'         => $option['type'],
					'option_value' => $option_value_data
				);
			}
		}

		$sort_order = array();
	  
		foreach ($json as $key => $value) {
			$sort_order[$key] = $value['name'];
		}

		array_multisort($sort_order, SORT_ASC, $json);
				
		$this->response->setOutput(json_encode($json));
	}
}
?>