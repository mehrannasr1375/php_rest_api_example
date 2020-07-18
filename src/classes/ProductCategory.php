<?php
require_once dirname(__FILE__) . "/DB.php";

class ProductCategory
{

    private $conn; // an instance of DB class
    private $table;


    private $data = [
        'id' => 0,
        'product_id' => 0,
        'cat_id' => 0  
    ];
 

    public function __construct()
    {
        $this->conn = DB::getInstance();
        $this->table = 'tbl_products_cats';
    }
    


}