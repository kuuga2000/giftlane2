<?php
class ModelCatalogCategory extends Model {
	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");
		
		return $query->row;
	}
	
	public function getJustin()
	{
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id)  WHERE name like '%justin%'");
		
	//	$query = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "category_description WHERE name like '%justin%' ");
		
		return $query->row;
	}
	
	/**
	* Function to get list of all occasions for greeting cart displayed in cart page.
	* @param null
	* @return array of all occasions
	*/
	public function getOccasions($type = 'std')
	{
		// -------- getting greeting card category ID
		if($type == 'std')
		{
			$gettingCat = "SELECT category_id FROM " . DB_PREFIX . "category_description cd WHERE name LIKE '%Standard Greeting card%'";
		}
		else
		{
			$gettingCat = "SELECT category_id FROM " . DB_PREFIX . "category_description cd WHERE name LIKE '%Premium Greeting card%'";
		}
		$query = $this->db->query($gettingCat);
		
		if($query->num_rows >0)
		{
			$greetingCatId = $query->row['category_id'];
			$getAllOccasion = "SELECT cd.name AS name , c.category_id AS category_id from " . DB_PREFIX . "category_description cd INNER JOIN " . DB_PREFIX . "category c ON c.category_id = cd.category_id WHERE c.parent_id = ".(int)$greetingCatId." ";
			$query = $this->db->query($getAllOccasion);
			return $query->rows;
		}
		return array();
		
	}
	
	/**
	* Function to get list of all wrapping paper themes displayed in cart page.
	* @param null
	* @return array of all themes
	*/
	public function getWrappingThemes($type = 'std')
	{
		// -------- getting greeting card category ID
		if($type == 'std')
		{
			$gettingCat = "SELECT category_id FROM " . DB_PREFIX . "category_description cd WHERE name LIKE '%Standard Wrapping Paper%'";
		}
		else
		{
			$gettingCat = "SELECT category_id FROM " . DB_PREFIX . "category_description cd WHERE name LIKE '%Premium Wrapping Paper%'";
		}
		$query = $this->db->query($gettingCat);
		
		if($query->num_rows > 0)
		{
			$wrappingCatId = $query->row['category_id'];
			$getAllThemes = "SELECT cd.name AS name , c.category_id AS category_id from " . DB_PREFIX . "category_description cd INNER JOIN " . DB_PREFIX . "category c ON c.category_id = cd.category_id WHERE c.parent_id = ".(int)$wrappingCatId." ";
		$query = $this->db->query($getAllThemes);
		return $query->rows;
		}
		return array();
		
	}
	
	public function getCategories($parent_id = 0,$start='',$limit='', $sortOrder = "") {
		
		$sortOrderQ = "";
		if($sortOrder != "")
		{
				//$sortOrderQ = "ORDER BY rand() ,c.sort_order, LCASE(cd.name)";
				$sortOrderQ = "ORDER BY c.sort_order, LCASE(cd.name)";
		}
		else
		{
			$sortOrderQ = "ORDER BY c.sort_order, LCASE(cd.name)";
		}
		
		$sql = "SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND c.status = '1' AND cd.name !='Justin'  $sortOrderQ ";
		
		if(is_int($start))
		{
			$sql .= " LIMIT ".(int)$start.", ".$limit." ";
		}
		
		$query = $this->db->query($sql);

		return $query->rows;
	}
	
	public function getCategoryFilters($category_id) {
		
		$implode = array();
		
		$query = $this->db->query("SELECT filter_id FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");
		
		foreach ($query->rows as $result) {
			$implode[] = (int)$result['filter_id'];
		}
		
		
		$filter_group_data = array();
		
		if ($implode) {
			$filter_group_query = $this->db->query("SELECT DISTINCT f.filter_group_id, fgd.name, fg.sort_order FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_group fg ON (f.filter_group_id = fg.filter_group_id) LEFT JOIN " . DB_PREFIX . "filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY f.filter_group_id ORDER BY fg.sort_order, LCASE(fgd.name)");
			
			foreach ($filter_group_query->rows as $filter_group) {
				$filter_data = array();
				
				$filter_query = $this->db->query("SELECT DISTINCT f.filter_id, fd.name FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_description fd ON (f.filter_id = fd.filter_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND f.filter_group_id = '" . (int)$filter_group['filter_group_id'] . "' AND fd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY f.sort_order, LCASE(fd.name)");
				
				foreach ($filter_query->rows as $filter) {
					$filter_data[] = array(
						'filter_id' => $filter['filter_id'],
						'name'      => $filter['name']			
					);
				}
				
				if ($filter_data) {
					$filter_group_data[] = array(
						'filter_group_id' => $filter_group['filter_group_id'],
						'name'            => $filter_group['name'],
						'filter'          => $filter_data
					);	
				}
			}
		}
		
		return $filter_group_data;
	}
				
	public function getCategoryLayoutId($category_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");
		
		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return $this->config->get('config_layout_category');
		}
	}
					
	public function getTotalCategoriesByCategoryId($parent_id = 0) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");
		
		return $query->row['total'];
	}
}
?>