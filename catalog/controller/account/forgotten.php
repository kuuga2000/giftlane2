<?php
class ControllerAccountForgotten extends Controller {
	private $error = array();

	public function index() {
		if ($this->customer->isLogged()) {
			$this->redirect($this->url->link('account/account', '', 'SSL'));
		}

		$this->language->load('account/forgotten');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('account/customer');
		$this->data['success'] = '';
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->language->load('mail/forgotten');
			
			$password = substr(sha1(uniqid(mt_rand(), true)), 0, 10);
			
			//$this->model_account_customer->editPassword($this->request->post['email'], $password);
			$this->model_account_customer->addForgotPasswordToken($this->request->post['email']);
		
			$this->data['success'] = 'Thanks! Please Check Your Email.';

			//$this->redirect($this->url->link('account/login', '', 'SSL'));
		}

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),        	
        	'separator' => false
      	); 

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_account'),
			'href'      => $this->url->link('account/account', '', 'SSL'),     	
        	'separator' => $this->language->get('text_separator')
      	);
		
      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_forgotten'),
			'href'      => $this->url->link('account/forgotten', '', 'SSL'),       	
        	'separator' => $this->language->get('text_separator')
      	);
		
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_your_email'] = $this->language->get('text_your_email');
		$this->data['text_email'] = $this->language->get('text_email');

		$this->data['entry_email'] = $this->language->get('entry_email');

		$this->data['button_continue'] = $this->language->get('button_continue');
		$this->data['button_back'] = $this->language->get('button_back');

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		$this->data['action'] = $this->url->link('account/forgotten', '', 'SSL');
 
		$this->data['back'] = $this->url->link('account/login', '', 'SSL');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/forgotten.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/forgotten.tpl';
		} else {
			$this->template = 'default/template/account/forgotten.tpl';
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

	public function validatePasswordToken()
	{
		$this->session->data['error'] = '';
		$this->session->data['success'] = '';
		if(isset($this->request->get['token']) && $this->request->get['token'] !='')
		{
			$this->load->model('account/customer');
			$password = substr(sha1(uniqid(mt_rand(), true)), 0, 10);
			$email = $this->model_account_customer->getEmailFromToken($this->request->get['token']);
			if($email != '')
			{
				$this->language->load('mail/forgotten');
				$this->model_account_customer->editPassword($email, $password);
			
				$subject = $this->config->get('config_name').'- YOU HAVE CHANGED YOUR PASSWORD ACCOUNT';
				
				$message  = "Dear User \n\n";
				$message .= "We would like to notify that your password for Giftlane Account has recently changed.\nIf you made this changes, please ignore this message.";
				$message .= "Your new password is:".$password;
				$message .= "\n\n";
				$message .= "If you didn't change your password, please report to Giftlane Co Team and we will send you a link to reset your password.";
				$message .= "\n\n";
				$message .= "For further information on our services or on how to use our website, please refer to the <a href='http://giftlane.co/howitworks'>giftlane.co/howitworks</a> on our website, or send an email to our Customer Service Team at hello@giftlane.co\n\n";
				$message .= "Warmest Regards,\n\nGiftlane Co";
				$mail = new Mail();
				$mail->protocol = $this->config->get('config_mail_protocol');
				$mail->parameter = $this->config->get('config_mail_parameter');
				$mail->hostname = $this->config->get('config_smtp_host');
				$mail->username = $this->config->get('config_smtp_username');
				$mail->password = $this->config->get('config_smtp_password');
				$mail->port = $this->config->get('config_smtp_port');
				$mail->timeout = $this->config->get('config_smtp_timeout');				
				$mail->setTo($email);
				$mail->setFrom($this->config->get('config_email'));
				$mail->setSender($this->config->get('config_name'));
				$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
				$mail->setHtml(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
				$mail->send();
				$this->session->data['success'] = 'Please check you email for new password.';
			}
			else
			{
				$this->session->data['error'] = 'You have already reset your password.';
			}
		}
		else
		{
			$this->session->data['error'] = 'Invalid Token.';
		}

		$this->redirect($this->url->link('account/login', '', 'SSL'));
		
		
	}
	protected function validate() {
		if (!isset($this->request->post['email'])) {
			$this->error['warning'] = 'Please enter email address';
		} elseif (!$this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
			$this->error['warning'] =  'Please enter a valid email address';
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}
?>