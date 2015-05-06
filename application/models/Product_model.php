<?php
class Product_model extends CI_Model {

    public $id;
    public $name;
    public $price;
    public $sale;
    public $image;
    public $description;

    const TABLE = 'products';

    public function __construct()
    {
        parent::__construct();
    }

    public function create($request)
    {
        $data = [
            'list_id' => $request['list_id'],
            'name' => $request['name'],
            'price' => $request['price'],
            'sale' => $request['sale'],
            'image' => $request['image'],
            'description' => $request['description'],
        ];
        return $this->db->insert(self::TABLE, $data);
    }

    public function find_all($per_page = '', $offset = '')
    {
        $this->db->select('*, lists.name as list_name');
        $this->db->from(self::TABLE);
        $this->db->join('lists', 'lists.id = products.list_id');
        if ($per_page != '' && $offset != '') {
            $this->db->limit($per_page, $offset);
            $this->db->order_by('products.id', 'DESC');
        }
        return $this->db->get();
    }

}
?>