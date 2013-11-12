<?php  
class ControllerAccountColumnLeft extends Controller {
	protected function index() {
		
		$this->data['dashboard'] = $this->url->link('account/account');
		$this->data['profile'] = $this->url->link('account/edit');
		$this->data['billingAndShipping'] = $this->url->link('account/billandship');
		$this->data['addressbook'] = $this->url->link('account/address');
		$this->data['orders'] = $this->url->link('account/order');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/column_left.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/column_left.tpl';
		} else {
			$this->template = 'default/template/account/column_left.tpl';
		}
								
		$this->render();
	}
}
?>