<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('manufacturer_model');
		$this->load->model('category_model');
	}

	public function index() {
		$data['page'] = 'product';
		$data['page_detail'] = '';
		$data['breadcrumb'] = array(
			array("url" => base_url(), "label" => "HOME"),
			array("url" => base_url('product'), "label" => "Product")
		);
		$data['type'] = '';
		$data['selected_type'] = '';
		
		$sort = $this->input->post('sort');
		if($sort)
			$this->session->set_userdata('sort', $sort);
		
		$data['sortby'] = $this->session->userdata('sort');
		$data['product_list'] 			= $this->product_model->getlist();
		$data['manufacturer_list'] 	= $this->manufacturer_model->getlist();
		$data['category_list'] 			= $this->category_model->getlist();
		$data['featured_list'] 			= array();
		
		foreach(array('sale', 'paket', 'promotion', 'clearance', 'new') AS $key => $val) {
			$feat = new stdClass();
			$feat->alias = $val;
			$feat->title = ucwords($val);
			$feat->id = '';
			array_push($data['featured_list'], $feat);
		}
		$this->load->view('products.php', $data);
	}
	
	public function search() {
		if(! $_POST)	
			redirect();
		
		$filter = $this->input->post('search-input');
		if(! $filter)
			redirect();
		
		$sort = $this->input->post('sort');
		if($sort)
			$this->session->set_userdata('sort', $sort);
		
		$data['sortby'] = $this->session->userdata('sort');
		$data['product_list'] = $this->product_model->listByFilter($filter, $data['sortby']);
		
		$data['page'] = 'product';
		$data['page_detail'] = '';
		$data['key'] = $filter;
		$data['breadcrumb'] = array(
			array("url" => base_url(), "label" => "HOME"),
			array("url" => base_url('product'), "label" => "Product"),
			array("url" => '', "label" => "Search")
		);
		$data['type'] = '';
		$data['selected_type'] = '';
		
		$this->load->view('search.php', $data);
	}

	public function page() {
		// mfc = manufacturer or featured or category
		$type = $this->uri->segment(2);
		$mfc 	= $this->uri->segment(3);
		$label = '';
		
		if(! in_array($type, array('manufacturer', 'category', 'featured'))) {
			redirect();
		}
		$sort = $this->input->post('sort');
		if($sort)
			$this->session->set_userdata('sort', $sort);
		
		//echo $sort; exit;
		$data['sortby'] = $this->session->userdata('sort');
		
		if ( $type == 'manufacturer') {
			if(! $mfc_detail = $this->manufacturer_model->view($mfc))
				redirect();
			else {
				$data['product_list'] = $this->product_model->listByManufacturer($mfc, $data['sortby']);
				$label = $mfc_detail->manuf_name;
				$data['url_con'] = 'manufacturer/'.$mfc.'/';
			}
		}
		
		if ( $type == 'category') {
			if(! $mfc_detail = $this->category_model->view($mfc))
				redirect();
			else {
				$data['product_list'] = $this->product_model->listByCategory($mfc, $data['sortby']);
				$label = $mfc_detail->name;
				$data['url_con'] = 'category/'.$mfc.'/';
			}
		}
		
		if ( $type == 'featured') {
			if(! in_array($mfc, array('sale', 'paket', 'promotion', 'clearance', 'new')))
				redirect();
			else {
				$mfc_detail = new stdClass();
				$mfc_detail->alias = $mfc;
				$mfc_detail->title = ucwords($mfc);
				$mfc_detail->id = '';
					
				$data['product_list'] = $this->product_model->listByFeatured(($mfc == 'sale' ? 'hotdeal':$mfc), $data['sortby']);
				$label = $mfc_detail->title;
				$data['url_con'] = 'featured/'.$mfc.'/';
			}
		}
		
		$data['page'] = 'product';
		$data['page_detail'] = $mfc_detail;
		$data['breadcrumb'] = array(
			array("url" => base_url(), "label" => "HOME"),
			array("url" => base_url('product'), "label" => "Product"),
			array("url" => base_url('product/'.$mfc), "label" => $label)
		);
		$data['type'] = $type;
		$data['selected_type'] = $mfc;
		
		$data['manufacturer_list'] 	= $this->manufacturer_model->getlist();
		$data['category_list'] 			= $this->category_model->getlist();
		$data['featured_list'] 			= array();
		
		foreach(array('sale', 'paket', 'promotion', 'clearance', 'new') AS $key => $val) {
			$feat = new stdClass();
			$feat->alias = $val;
			$feat->title = ucwords($val);
			$feat->id = '';
			array_push($data['featured_list'], $feat);
		}
		$this->load->view('products.php', $data);
	}

	public function page_detail()
	{
		$type = $this->uri->segment(2);
		$mfc 	= $this->uri->segment(3);
		$prod = $this->uri->segment(4);

		if ( $type == 'manufacturer')
			if(! $mfc_detail = $this->manufacturer_model->view($mfc))
				redirect();
		
		if ( $type == 'category')
			if(! $mfc_detail = $this->category_model->view($mfc))
				redirect();
		
		if ( $type == 'featured') {
			if(! in_array($mfc, array('sale', 'paket', 'promotion', 'clearance', 'new')))
				redirect();
		}
		
		if(! $product = $this->product_model->getDetail($prod))
			redirect();
		else {
			$data['page'] = 'product';
			$data['page_detail'] = '';
			$data['breadcrumb'] = array(
				array("url" => base_url(), "label" => "HOME"),
				array("url" => base_url('product'), "label" => "Product"),
				array("url" => base_url($type), "label" => ucwords($type)),
				array("url" => base_url($mfc), "label" => ucwords($mfc)),
				array("url" => base_url($product->alias), "label" => ucwords($product->name))
			);
			$data['product']	= $product;
			$data['product_thumb'] 	= $this->product_model->pic($product->id_product, 4);
			$data['related_product'] = $this->product_model->getRelated($product->id_cat, $product->id_product);
		}
		
		$this->load->view('product_detail.php', $data);
	}
}
