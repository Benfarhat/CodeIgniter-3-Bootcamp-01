<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Articles extends CI_Model {

	protected $limit;
	protected $sort = [];

    public function __construct() {
        parent::__construct();
		$this->limit = 10;
		$this->sort = ['created_at' => 'DESC'];
    }

    public function __get($key) {
        $method_name = 'get_property_' . $key;
        if (method_exists($this, $method_name)) {
            return $this->$method_name();
        } else {
            return parent::__get($key);
        }
	}
	
    public function findAll($start = 1) {
		$count = $this->db->count_all("articles");
		$nbpages = $count / $this->limit;
        $this->db->select("*")
                 ->from('articles')
				 ->order_by('created_at', 'DESC')
				 ->limit($this->limit, $start);
		$result = $this->db->get()->result();
		
		return ['result' => $result, 'start' => $start, 'count' => $count, 'limit' => $this->limit];
	}

	
    public function __call($method, $arguments)
    {
		
		$this->db->select("*")
		->from('articles')
		->order_by($this->getSort());
		
		// Escape special characters in method and argument
		
		$db = get_instance()->db->conn_id;
		$method = mysqli_real_escape_string($db, $method);
		$arguments[0] = mysqli_real_escape_string($db, $arguments[0]);

        if (strpos($method, 'findBy') === 0) {
			$this->db->where(strtolower(substr($method, 6)), $arguments[0]);
			return $this->db->get()->result();
        }
        if (strpos($method, 'findOneBy') === 0) {
			$this->db->where(strtolower(substr($method, 9)), $arguments[0]);
			return $this->db->get()->first_row()->result();
        }
        if (strpos($method, 'findLastBy') === 0) {
			$this->db->where(strtolower(substr($method, 10)), $arguments[0]);
			return $this->db->get()->last_row()->result();
        }
        if (strpos($method, 'countBy') === 0) {
			$this->db->where(strtolower(substr($method, 7)), $arguments[0]);
			return count($this->db->get()->result());
        }
	}
	



	/**
	 * Get the value of sort
	 */ 
	public function getSort()
	{
		if(count($this->sort) > 0){
			$key = array_keys($this->sort)[0];
			return $key . ' ' . $this->sort[$key];
		} else {
			return '';
		}
	}

	/**
	 * Set the value of sort
	 *
	 * @return  self
	 */ 
	public function setSort($sort)
	{
		$this->sort = $sort;

		return $this;
	}
}
