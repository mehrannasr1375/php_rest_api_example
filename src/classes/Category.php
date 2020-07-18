<?php
require_once dirname(__FILE__) . "/DB.php";

class Category
{

    private $conn; // an instance of DB class
    private $table;


    private $data = [
        'id' => 0,
        'title' => '',
        'description' => '',
        'parent_id' => 0
    ];
 

    public function __construct()
    {
        $this->conn = DB::getInstance();
        $this->table = 'tbl_cats';
    }
    


}