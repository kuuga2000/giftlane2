<?php
class ModelAccountOrder extends Model {
	public function getOrder($order_id) {
		$order_query = $this->db->query("SELECT *,o.customer_id AS customer_id, ocp.status AS paymentStatus FROM `" . DB_PREFIX . "order` o LEFT JOIN `" . DB_PREFIX . "order_customer_payment` ocp ON o.order_id = ocp.order_id  WHERE o.order_id = '" . (int)$order_id . "' AND o.customer_id = '" . (int)$this->customer->getId() . "' AND order_status_id > '0'");
	
		if ($order_query->num_rows) {
			$country_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "country` WHERE country_id = '" . (int)$order_query->row['payment_country_id'] . "'");
			
			if ($country_query->num_rows) {
				$payment_iso_code_2 = $country_query->row['iso_code_2'];
				$payment_iso_code_3 = $country_query->row['iso_code_3'];
			} else {
				$payment_iso_code_2 = '';
				$payment_iso_code_3 = '';				
			}
			
			$zone_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "zone` WHERE zone_id = '" . (int)$order_query->row['payment_zone_id'] . "'");
			
			if ($zone_query->num_rows) {
				$payment_zone_code = $zone_query->row['code'];
			} else {
				$payment_zone_code = '';
			}
			
			$country_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "country` WHERE country_id = '" . (int)$order_query->row['shipping_country_id'] . "'");
			
			if ($country_query->num_rows) {
				$shipping_iso_code_2 = $country_query->row['iso_code_2'];
				$shipping_iso_code_3 = $country_query->row['iso_code_3'];
			} else {
				$shipping_iso_code_2 = '';
				$shipping_iso_code_3 = '';				
			}
			
			$zone_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "zone` WHERE zone_id = '" . (int)$order_query->row['shipping_zone_id'] . "'");
			
			if ($zone_query->num_rows) {
				$shipping_zone_code = $zone_query->row['code'];
			} else {
				$shipping_zone_code = '';
			}
			
			return array(
				'order_id'                => $order_query->row['order_id'],
				'invoice_no'              => $order_query->row['invoice_no'],
				'invoice_prefix'          => $order_query->row['invoice_prefix'],
				'store_id'                => $order_query->row['store_id'],
				'store_name'              => $order_query->row['store_name'],
				'store_url'               => $order_query->row['store_url'],				
				'customer_id'             => $order_query->row['customer_id'],
				'firstname'               => $order_query->row['firstname'],
				'lastname'                => $order_query->row['lastname'],
				'telephone'               => $order_query->row['telephone'],
				'fax'                     => $order_query->row['fax'],
				'email'                   => $order_query->row['email'],
				'payment_firstname'       => $order_query->row['payment_firstname'],
				'payment_lastname'        => $order_query->row['payment_lastname'],				
				'payment_company'         => $order_query->row['payment_company'],
				'payment_address_1'       => $order_query->row['payment_address_1'],
				'payment_address_2'       => $order_query->row['payment_address_2'],
				'payment_postcode'        => $order_query->row['payment_postcode'],
				'payment_city'            => $order_query->row['payment_city'],
				'payment_zone_id'         => $order_query->row['payment_zone_id'],
				'payment_zone'            => $order_query->row['payment_zone'],
				'payment_zone_code'       => $payment_zone_code,
				'payment_country_id'      => $order_query->row['payment_country_id'],
				'payment_country'         => $order_query->row['payment_country'],	
				'payment_iso_code_2'      => $payment_iso_code_2,
				'payment_iso_code_3'      => $payment_iso_code_3,
				'payment_address_format'  => $order_query->row['payment_address_format'],
				'payment_method'          => $order_query->row['payment_method'],
				'shipping_firstname'      => $order_query->row['shipping_firstname'],
				'shipping_lastname'       => $order_query->row['shipping_lastname'],				
				'shipping_company'        => $order_query->row['shipping_company'],
				'shipping_address_1'      => $order_query->row['shipping_address_1'],
				'shipping_address_2'      => $order_query->row['shipping_address_2'],
				'shipping_postcode'       => $order_query->row['shipping_postcode'],
				'shipping_city'           => $order_query->row['shipping_city'],
				'shipping_zone_id'        => $order_query->row['shipping_zone_id'],
				'shipping_zone'           => $order_query->row['shipping_zone'],
				'shipping_zone_code'      => $shipping_zone_code,
				'shipping_country_id'     => $order_query->row['shipping_country_id'],
				'shipping_country'        => $order_query->row['shipping_country'],	
				'shipping_iso_code_2'     => $shipping_iso_code_2,
				'shipping_iso_code_3'     => $shipping_iso_code_3,
				'shipping_address_format' => $order_query->row['shipping_address_format'],
				'shipping_method'         => $order_query->row['shipping_method'],
				'comment'                 => $order_query->row['comment'],
				'total'                   => $order_query->row['total'],
				'order_status_id'         => $order_query->row['order_status_id'],
				'language_id'             => $order_query->row['language_id'],
				'currency_id'             => $order_query->row['currency_id'],
				'currency_code'           => $order_query->row['currency_code'],
				'currency_value'          => $order_query->row['currency_value'],
				'date_modified'           => $order_query->row['date_modified'],
				'date_added'              => $order_query->row['date_added'],
				'ip'                      => $order_query->row['ip'],
				'paymentStatus'           => $order_query->row['paymentStatus']
			);
		} else {
			return false;	
		}
	}
	 
	public function getOrders($start = 0, $limit = 20) {
		if ($start < 0) {
			$start = 0;
		}
		
		if ($limit < 1) {
			$limit = 1;
		}	
		
		$query = $this->db->query("SELECT o.order_id, o.firstname, o.lastname,o.shipping_firstname, o.shipping_lastname, os.name as status, o.date_added, o.total, o.currency_code, o.currency_value FROM `" . DB_PREFIX . "order` o LEFT JOIN " . DB_PREFIX . "order_status os ON (o.order_status_id = os.order_status_id) WHERE o.customer_id = '" . (int)$this->customer->getId() . "' AND o.order_status_id > '0' AND os.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY o.date_added DESC LIMIT " . (int)$start . "," . (int)$limit);	
	
		return $query->rows;
	}
	
	public function getOrdersDetails($start='', $limit='') {
				
		$sql="SELECT o.order_id, o.shipping_firstname, o.shipping_lastname, os.name as status, o.date_added, o.total, o.currency_code, o.currency_value, ocp.status AS paymentStatus FROM `" . DB_PREFIX . "order` o LEFT JOIN " . DB_PREFIX . "order_status os ON (o.order_status_id = os.order_status_id) LEFT JOIN `" . DB_PREFIX . "order_customer_payment` ocp ON o.order_id = ocp.order_id   WHERE o.customer_id = '" . (int)$this->customer->getId() . "' AND o.order_status_id > '0' AND os.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY o.date_added DESC";	
		
		if(is_int($start))
		{
			$sql .= " LIMIT ".(int)$start.", ".$limit." ";
		}
		
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function getOrderProducts($order_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_product WHERE order_id = '" . (int)$order_id . "'");
	
		return $query->rows;
	}
	
	public function getOrderOptions($order_id, $order_product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_option WHERE order_id = '" . (int)$order_id . "' AND order_product_id = '" . (int)$order_product_id . "'");
	
		return $query->rows;
	}
	
	public function getOrderVouchers($order_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order_voucher` WHERE order_id = '" . (int)$order_id . "'");
		
		return $query->rows;
	}
	
	public function getOrderTotals($order_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_total WHERE order_id = '" . (int)$order_id . "' ORDER BY sort_order");
	
		return $query->rows;
	}	

	public function getOrderHistories($order_id) {
		$query = $this->db->query("SELECT date_added, os.name AS status, oh.comment, oh.notify FROM " . DB_PREFIX . "order_history oh LEFT JOIN " . DB_PREFIX . "order_status os ON oh.order_status_id = os.order_status_id WHERE oh.order_id = '" . (int)$order_id . "' AND oh.notify = '1' AND os.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY oh.date_added");
	
		return $query->rows;
	}	

	public function getOrderDownloads($order_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_download WHERE order_id = '" . (int)$order_id . "' ORDER BY name");
	
		return $query->rows; 
	}	

	public function getTotalOrders() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE customer_id = '" . (int)$this->customer->getId() . "' AND order_status_id > '0'");
		
		return $query->row['total'];
	}
		
	public function getTotalOrderProductsByOrderId($order_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "order_product WHERE order_id = '" . (int)$order_id . "'");
		
		return $query->row['total'];
	}
	
	public function getTotalOrderVouchersByOrderId($order_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order_voucher` WHERE order_id = '" . (int)$order_id . "'");
		
		return $query->row['total'];
	}	
	
	/**
	* function by Gaurav patil to get product related to order
	* @param: order id
	* @return order payment status
	*/	
	public function getOrderPaymentStatusByOrderId($order_id) {
		
		$order_payment_status_query = $this->db->query("SELECT status FROM `" . DB_PREFIX . "order_customer_payment` WHERE order_id = '" . (int)$order_id . "'");
			if ($order_payment_status_query->num_rows) {
				$order_payment_status = $order_payment_status_query->row['status'];
			} else {
				$order_payment_status = '';
			}
		
		
		
		
		return $order_payment_status;
	}
	
	public function getOrderStatusById($statusId) {
		
		$order_status_query = $this->db->query("SELECT name FROM `" . DB_PREFIX . "order_status` WHERE order_status_id = '" . (int)$statusId . "'");
			if ($order_status_query->num_rows) {
				$order_status = $order_status_query->row['name'];
			} else {
				$order_status = '';
			}
		return $order_status;
	}
	
	public function processOrderPayment($data)
	{
		$payemntDate = strtotime($data['payment_date']);
		
		 $SQL = "INSERT INTO ". DB_PREFIX ."order_customer_payment set order_id = ".(int)$data['order_id'] .", customer_id = '" . (int)$this->customer->getId() . "', payment_to = '".$this->db->escape($data['payment_to'])."',payment_from= '".$this->db->escape($data['payment_from'])."',account_name= '".$this->db->escape($data['account_name'])."',total_amount= '".$this->db->escape($data['total_amount'])."',payment_date= DATE_FORMAT(FROM_UNIXTIME('".$this->db->escape($payemntDate)."'), '%Y-%m-%d'), status ='confirm' ";
		
		$this->db->query($SQL);
		
		
		$getCustomer = "SELECT c.email AS email, c.firstname AS firstname, c.lastname AS lastname FROM " . DB_PREFIX . "customer c INNER JOIN " . DB_PREFIX . "order o ON c.customer_id = o.customer_id WHERE o.order_id =  ".(int)$data['order_id']." ";
		
		$res = $this->db->query($getCustomer);
		$customer = $res->row;
		$subject = "Giftlane - Order ".$data['order_id']." Confirmed.";
		$html = "Dear admin";
		$html .= '<br><br>';
		$html .= "Order Id: ".$data['order_id']." has been confirmed";
		$html .= "<br><br>Thanks You<br>Giftlane";
		
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
	}
	
}
?>