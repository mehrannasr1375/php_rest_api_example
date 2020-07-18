<?php
require_once dirname(__FILE__) . "/DB.php";

class User
{

    private $conn; // an instance of DB class
    private $table;


    private $data = [
        'id' => 0,
        'full_name' => 0,
        'username' => '',
        'email' => '',
        'password' => '',
        'enabled' => 0,
        'online' => 0,
        'access_level' => '',
        'gender' => 0,
        'mobile' => 0,
        'province' => '',
        'township' => '',
        'address' => '',
        'potal_code' => 0,
        'activation_code' => '',
        'creation_time' => 0
    ];
 

    public function __construct()
    {
        $this->conn = DB::getInstance();
        $this->table = 'tbl_users';
    }
    

    // returns a json string
    public function all($limit = 0, $count = 5)
    {
        $query_res = $this->conn->find($this->table, [
            'order' => 'id',
            'limit' => (int)$limit,
            'count' => (int)$count
        ]);

        if ($query_res) {
            return json_encode(
                array(
                    'result' => 'success',
                    'data' => $query_res
                )
            );
        } else 
            return json_encode(['msg' => 'no users found']);
    }


    // returns a json string
    public function get($id)
    {
        $query_res = $this->conn->findFirst($this->table, [
            'conditions' => ['id = ?'],
            'bind' => [$id]
        ]);

        if ($query_res) {
            return json_encode(
                array(
                    'result' => 'success',
                    'data' => $query_res
                )
            );
        } else 
            return json_encode(['msg' => 'user not found']);
    }


    // returns a json string
    public function create(array $data)
    {
        $creation_time = time();
        $hashed_pass = md5('as8&315-_+\/' . $data['password']);

        $res = $this->conn->insert($this->table, [
            "full_name" => $data['full_name'],
            "username" => $data['username'],
            "email" => $data['email'],
            "password" => $hashed_pass,
            "gender" => $data['gender'],
            "mobile" => $data['mobile'],
            "province" => $data['province'],
            "township" => $data['township'],
            "address" => $data['address'],
            "postal_code" => $data['postal_code'],
            "creation_time" => $creation_time
        ]);

        $ret = $res ? [
            'res' => 'true',
            'msg' => 'user created' , 
            'last insert id' => $this->conn->lastId()
        ] : [ 
            'res' => 'false', 
            'msg' =>'input error'
        ] ;

        return json_encode($ret);
    }

    
    // returns a json string
    public function update(array $data)
    {
        $creation_time = time();
        $hashed_pass = md5('as8&315-_+\/' . $data['password']);

        $res = $this->conn->update($this->table, $data['id'],[
            "full_name" => $data['full_name'],
            "username" => $data['username'],
            "email" => $data['email'],
            "password" => $hashed_pass,
            "gender" => $data['gender'],
            "mobile" => $data['mobile'],
            "province" => $data['province'],
            "township" => $data['township'],
            "address" => $data['address'],
            "postal_code" => $data['postal_code'],
            "creation_time" => $creation_time 
        ]);

        $ret = $res ? ['res' => 'true', 'msg' => 'user updated'] : ['res' => 'false', 'msg' => 'user not updated'];

        return json_encode($ret);
    }

    
    // returns a json string
    public function delete($id)
    {
        $res = $this->conn->delete($this->table, $id);
        
        $ret = $res ? ['res' => 'true', 'msg' => 'user deleted'] : ['res' => 'false', 'msg' => 'user not deleted'];

        return json_encode($ret);
    }

}