<?php
require_once __DIR__ . "/../../classes/User.php";


header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: DELETE');
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
$res = $userApi->delete([
    'id' => htmlspecialchars(strip_tags($data->id))
]);

// Return result
echo $res;
