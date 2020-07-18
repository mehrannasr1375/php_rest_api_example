<?php

/*
 * this file is used for testing purposes and is not a part of our api
 * it recomended to use a paticular application for testing purposes, like `postman`
 */


 /*
  * URLs for send requests:
  *  -------------------------------------------------------------------------------
  *  |                  URL                      |  REQUEST METHOD  |   PARAMS     |
  *  |-------------------------------------------|------------------|--------------|
  *  |   <host>/RestApi/api/user/create.php      |      [POST]      |              |
  *  |   <host>/RestApi/api/user/delete.php      |     [DELETE]     |     id       |
  *  |   <host>/RestApi/api/user/read.php        |       [GET]      |              |
  *  |   <host>/RestApi/api/user/read_single.php |       [GET]      |     id       |
  *  |   <host>/RestApi/api/user/update.php      |       [PUT]      |              |
  *  -------------------------------------------------------------------------------
  */


require_once __DIR__ . "/classes/UserApi.php";

error_reporting(E_ALL);
ini_set('display_errors', 1);


header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: 
                    Access-Control-Allow-Headers,
                    Access-Control-Allow-Methods,
                    Content-Type,
                    Authorization,
                    X-Requested-With,
');





$userApi = new User();

// Get received data from request body (data is in json format)
$received_data = json_decode(file_get_contents('php://input'));

// Create user
$res = $user->createUser([
    'full_name' => htmlspecialchars(strip_tags($data->full_name)), 
    'username' => htmlspecialchars(strip_tags($data->username)),
    'email' => htmlspecialchars(strip_tags($data->email)), 
    'pass_1' => htmlspecialchars(strip_tags($data->pass_1)),
    'pass_2' => htmlspecialchars(strip_tags($data->pass_2)),
    'gender' => htmlspecialchars(strip_tags($data->gender)),
    'mobile' => htmlspecialchars(strip_tags($data->mobile)), 
    'province' => htmlspecialchars(strip_tags($data->province)),
    'township' => htmlspecialchars(strip_tags($data->township)),
    'address' => htmlspecialchars(strip_tags($data->address)), 
    'postal_code' => htmlspecialchars(strip_tags($data->postal_code)),
    'creation_time' => htmlspecialchars(strip_tags($data->creation_time))
]);

// Return result to user
echo $res;
