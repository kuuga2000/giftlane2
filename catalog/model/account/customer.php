<?php
class ModelAccountCustomer extends Model {
	public function addCustomer($data) {
		if (isset($data['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($data['customer_group_id'], $this->config->get('config_customer_group_display'))) {
			$customer_group_id = $data['customer_group_id'];
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}
		$fbUserId = '';
		$fbToken = '';
		$fbExpireTime = '';
		$fbUserBirthDate = '';
		if(isset($data['fb_user_id']))
		{
			$fbUserId = $data['fb_user_id'];
		}
		if(isset($data['birth_date']))
		{
			$fbUserBirthDate = $data['birth_date'];
			//$fbUserBirthDate = date("Y-m-d", mktime(0,0,0,$data['month'],$data['day'],$data['year']));
		}
		
		if(isset($data['fb_token']))
		{
			$fbToken = $data['fb_token'];
		}
		
		if(isset($data['fb_expire_time']))
		{
			$fbExpireTime = $data['fb_expire_time'];
		}
		
		$this->load->model('account/customer_group');
		
		$customer_group_info = $this->model_account_customer_group->getCustomerGroup($customer_group_id);
		
      	$this->db->query("INSERT INTO " . DB_PREFIX . "customer SET store_id = '" . (int)$this->config->get('config_store_id') . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', fax = '" . $this->db->escape($data['fax']) . "', salt = '" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . "', password = '" . $this->db->escape(sha1($salt . sha1($salt . sha1($data['password'])))) . "', newsletter = '" . (isset($data['newsletter']) ? (int)$data['newsletter'] : 0) . "', customer_group_id = '" . (int)$customer_group_id . "', ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "', status = '1', fb_user_id = '".$this->db->escape($fbUserId)."', fb_token = '".$this->db->escape($fbToken)."', fb_expire_time = '".$this->db->escape($fbExpireTime)."', approved = '" . (int)!$customer_group_info['approval'] . "',birth_date = '" . $fbUserBirthDate . "', date_added = NOW()");
      	
		$customer_id = $this->db->getLastId();
			
      	$this->db->query("INSERT INTO " . DB_PREFIX . "address SET customer_id = '" . (int)$customer_id . "', /*firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "',*/ company = '" . $this->db->escape($data['company']) . "', company_id = '" . $this->db->escape($data['company_id']) . "', tax_id = '" . $this->db->escape($data['tax_id']) . "', address_1 = '" . $this->db->escape($data['address_1']) . "', address_2 = '" . $this->db->escape($data['address_2']) . "', city = '" . $this->db->escape($data['city']) . "', postcode = '" . $this->db->escape($data['postcode']) . "', country_id = '" . (int)$data['country_id'] . "', zone_id = '" . (int)$data['zone_id'] . "'");
		//$this->db->query("INSERT INTO " . DB_PREFIX . "address SET address_type='billing', customer_id = '" . (int)$customer_id . "', /*firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "',*/ company = '" . $this->db->escape($data['company']) . "', company_id = '" . $this->db->escape($data['company_id']) . "', tax_id = '" . $this->db->escape($data['tax_id']) . "', address_1 = '" . $this->db->escape($data['address_1']) . "', address_2 = '" . $this->db->escape($data['address_2']) . "', city = '" . $this->db->escape($data['city']) . "', postcode = '" . $this->db->escape($data['postcode']) . "', country_id = '" . (int)$data['country_id'] . "', zone_id = '" . (int)$data['zone_id'] . "'");
				
		$address_id = $this->db->getLastId();

      	$this->db->query("UPDATE " . DB_PREFIX . "customer SET address_id = '" . (int)$address_id . "' WHERE customer_id = '" . (int)$customer_id . "'");
		
		$this->language->load('mail/customer');
		
		$subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));
		
		$message = sprintf($this->language->get('text_welcome'), $this->config->get('config_name')) . "\n\n";
		
		if (!$customer_group_info['approval']) {
			$message .= $this->language->get('text_login') . "\n";
		} else {
			$message .= $this->language->get('text_approval') . "\n";
		}
		
		$message .= $this->url->link('account/login', '', 'SSL') . "\n\n";
		$message .= $this->language->get('text_services') . "\n\n";
		$message .= $this->language->get('text_thanks') . "\n";
		$message .= $this->config->get('config_name');
		
		$mail = new Mail();
		$mail->protocol = $this->config->get('config_mail_protocol');
		$mail->parameter = $this->config->get('config_mail_parameter');
		$mail->hostname = $this->config->get('config_smtp_host');
		$mail->username = $this->config->get('config_smtp_username');
		$mail->password = $this->config->get('config_smtp_password');
		$mail->port = $this->config->get('config_smtp_port');
		$mail->timeout = $this->config->get('config_smtp_timeout');				
		$mail->setTo($data['email']);
		#$mail->setTo('eluminous_sse22@eluminoustechnologies.com');
		$mail->setFrom($this->config->get('config_email'));
		$mail->setSender($this->config->get('config_name'));
		$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
		$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
		$mail->send();
		
		// Send to main admin email if new account email is enabled
		if ($this->config->get('config_account_mail')) {
			$message  = $this->language->get('text_signup') . "\n\n";
			$message .= $this->language->get('text_website') . ' ' . $this->config->get('config_name') . "\n";
			$message .= $this->language->get('text_firstname') . ' ' . $data['firstname'] . "\n";
			$message .= $this->language->get('text_lastname') . ' ' . $data['lastname'] . "\n";
			$message .= $this->language->get('text_customer_group') . ' ' . $customer_group_info['name'] . "\n";
			
			if ($data['company']) {
				$message .= $this->language->get('text_company') . ' '  . $data['company'] . "\n";
			}
			
			$message .= $this->language->get('text_email') . ' '  .  $data['email'] . "\n";
			$message .= $this->language->get('text_telephone') . ' ' . $data['telephone'] . "\n";
			
			$mail->setTo($this->config->get('config_email'));
			$mail->setSubject(html_entity_decode($this->language->get('text_new_customer'), ENT_QUOTES, 'UTF-8'));
			$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			$mail->send();
			
			// Send to additional alert emails if new account email is enabled
			$emails = explode(',', $this->config->get('config_alert_emails'));
			
			foreach ($emails as $email) {
				if (strlen($email) > 0 && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->setTo($email);
					$mail->send();
				}
			}
		}
	}
	
	public function editCustomer($data) {
		
		$birthDate=$data['year'].'/'.$data['month'].'/'.$data['day'];
		$dates = date("Y-m-d", mktime(0,0,0,$data['month'],$data['day'],$data['year']));
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', gender = '" . $this->db->escape($data['gender']) . "', birth_date = '" . $birthDate . "' WHERE customer_id = '" . (int)$this->customer->getId() . "'");
	}
	
 public function updatenewsletter($newsLetter) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET newsletter = '" . $newsLetter . "' WHERE customer_id = '" . (int)$this->customer->getId() . "'");
	}
	
// newsletter subscribed by email
public function subscribenewsletter($newsLetter) {
	echo $$newsLetter;
	$subject = $this->config->get('config_name').'- NEWSLETTER SUBSCRIBTION';
			
			$messages = " Thank you for subscribing our newsletter. <br><br> We surely will always share our latest promo and our brand new products to you.";
			$messages .= "<br><br>";
			$messages .= "Warmest Regards,<br>Giftlane Co";
			
			$mails = new Mail();
			$mails->protocol = $this->config->get('config_mail_protocol');
			$mails->parameter = $this->config->get('config_mail_parameter');
			$mails->hostname = $this->config->get('config_smtp_host');
			$mails->username = $this->config->get('config_smtp_username');
			$mails->password = $this->config->get('config_smtp_password');
			$mails->port = $this->config->get('config_smtp_port');
			$mails->timeout = $this->config->get('config_smtp_timeout');				
			$mails->setTo($newsLetter);
			$mails->setFrom($this->config->get('config_email'));
			//$mails->setFrom('test@eluminousdev.com');
			$mails->setSender($this->config->get('config_name'));
			$mails->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mails->setHtml(html_entity_decode($messages, ENT_QUOTES, 'UTF-8'));
			$mails->setText(html_entity_decode($messages, ENT_QUOTES, 'UTF-8'));
			$mails->send();
			$date= date('Y-m-d H:i:s');
			$this->db->query("INSERT INTO " . DB_PREFIX . "newsletter  SET email = '" . $newsLetter . "',created='".$date."'");
	
	
	}	

	public function editPassword($email, $password) {
      	$this->db->query("UPDATE " . DB_PREFIX . "customer SET salt = '" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . "', password = '" . $this->db->escape(sha1($salt . sha1($salt . sha1($password)))) . "', passwordToken = '' WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");
		
	}

	public function editPasswordById($custId, $password) {
      	$this->db->query("UPDATE " . DB_PREFIX . "customer SET salt = '" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . "', password = '" . $this->db->escape(sha1($salt . sha1($salt . sha1($password)))) . "', passwordToken = '' WHERE customer_id = '" . (int)$custId . "'");
		
	}
	
	public function checkPassword($custId, $password) {
      	$query=$this->db->query("SELECT password FROM " . DB_PREFIX . "customer WHERE customer_id = '" . (int)$custId . "' AND (password = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1('" . $this->db->escape($password) . "'))))) OR password = '" . $this->db->escape(md5($password)) . "')");
		return $query->num_rows;
	}
	
	
	public function editNewsletter($newsletter) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET newsletter = '" . (int)$newsletter . "' WHERE customer_id = '" . (int)$this->customer->getId() . "'");
	}
					
	public function getCustomer($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE customer_id = '" . (int)$customer_id . "'");
		
		return $query->row;
	}
	
	public function checkSubscribeEmail($email) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "newsletter WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");
		
		return $query->row['total'];
	}
	
	public function getCustomerByEmail($email) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");
		
		return $query->row;
	}
		
	public function getCustomerByToken($token) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE token = '" . $this->db->escape($token) . "' AND token != ''");
		
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET token = ''");
		
		return $query->row;
	}
		
	public function getCustomers($data = array()) {
		$sql = "SELECT *, CONCAT(c.firstname, ' ', c.lastname) AS name, cg.name AS customer_group FROM " . DB_PREFIX . "customer c LEFT JOIN " . DB_PREFIX . "customer_group cg ON (c.customer_group_id = cg.customer_group_id) ";

		$implode = array();
		
		if (isset($data['filter_name']) && !is_null($data['filter_name'])) {
			$implode[] = "LCASE(CONCAT(c.firstname, ' ', c.lastname)) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
		}
		
		if (isset($data['filter_email']) && !is_null($data['filter_email'])) {
			$implode[] = "LCASE(c.email) = '" . $this->db->escape(utf8_strtolower($data['filter_email'])) . "'";
		}
		
		if (isset($data['filter_customer_group_id']) && !is_null($data['filter_customer_group_id'])) {
			$implode[] = "cg.customer_group_id = '" . $this->db->escape($data['filter_customer_group_id']) . "'";
		}	
		
		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$implode[] = "c.status = '" . (int)$data['filter_status'] . "'";
		}	
		
		if (isset($data['filter_approved']) && !is_null($data['filter_approved'])) {
			$implode[] = "c.approved = '" . (int)$data['filter_approved'] . "'";
		}	
			
		if (isset($data['filter_ip']) && !is_null($data['filter_ip'])) {
			$implode[] = "c.customer_id IN (SELECT customer_id FROM " . DB_PREFIX . "customer_ip WHERE ip = '" . $this->db->escape($data['filter_ip']) . "')";
		}	
				
		if (isset($data['filter_date_added']) && !is_null($data['filter_date_added'])) {
			$implode[] = "DATE(c.date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
		}
		
		if ($implode) {
			$sql .= " WHERE " . implode(" AND ", $implode);
		}
		
		$sort_data = array(
			'name',
			'c.email',
			'customer_group',
			'c.status',
			'c.ip',
			'c.date_added'
		);	
			
		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY name";	
		}
			
		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}			

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
			
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}		
		
		$query = $this->db->query($sql);
		
		return $query->rows;	
	}
		
	public function getTotalCustomersByEmail($email) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");
		
		return $query->row['total'];
	}
	
	public function getTotalCustomersByEmailId($getId,$email) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "' AND customer_id != '" . (int)$getId . "'");
		
		return $query->row['total'];
	}
	
	public function getIps($customer_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "customer_ip` WHERE customer_id = '" . (int)$customer_id . "'");
		
		return $query->rows;
	}	
	
	public function isBanIp($ip) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "customer_ban_ip` WHERE ip = '" . $this->db->escape($ip) . "'");
		
		return $query->num_rows;
	}	
	
	/**
	* function added by Gaurav on 28-june-13 to add token for forgot password request
	* @param : customer email
	* return NULL
	*/ 
	 public function addForgotPasswordToken($customerEmail)
	 {
	 	//echo $customerEmail;exit;
	 	$passwordToken =  sha1(time());
	 	$query = $this->db->query("UPDATE `" . DB_PREFIX . "customer` SET passwordToken = '". $this->db->escape($passwordToken)."' WHERE email = '".$this->db->escape($customerEmail)."'");
		
			$link = $this->url->link('account/forgotten/validatePasswordToken&token='.$passwordToken, '', 'SSL');
			$subject = $this->config->get('config_name').'- PASSWORD RECOVERY';
			$message = "Oops, forgot your password?\n\n";
			$message .= "Please click the link below to recover your password.". "\n\n";
			$message .= $link . "\n\n";
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
			$mail->setTo($customerEmail);
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender($this->config->get('config_name'));
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setHtml(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			//
			//$mail->setText(html_entity_decode($html, ENT_QUOTES, 'UTF-8'));
			
			$mail->send();
			
			/*
			 $mail = new Mail(); 
			 $mail->protocol = $this->config->get('config_mail_protocol');
			 $mail->parameter = $this->config->get('config_mail_parameter');
			 $mail->hostname = $this->config->get('config_smtp_host');
			 $mail->username = $this->config->get('config_smtp_username');
			 $mail->password = $this->config->get('config_smtp_password');
			 $mail->port = $this->config->get('config_smtp_port');
			 $mail->timeout = $this->config->get('config_smtp_timeout');			
			 $mail->setTo($this->config->get('config_email'));//$customer['email']
			 $mail->setFrom($this->config->get('config_email'));
			 $mail->setSender('Giftlane');
			 $mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			 $mail->setHtml($html);
			 $mail->setText(html_entity_decode($html, ENT_QUOTES, 'UTF-8'));
			 $mail->send();
			 */
			
	 }
	 
	 public function getEmailFromToken($token)
	 {
	 	$query = $this->db->query("SELECT email FROM `" . DB_PREFIX . "customer` WHERE passwordToken = '" . $this->db->escape($token) . "'");
		if($query->num_rows > 0)
		{
			return $query->row['email'];
		}
		else
		{
			return '';
		}
	 }
}
?>
