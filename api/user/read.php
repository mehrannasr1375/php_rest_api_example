<?php
require_once __DIR__ . "/../../classes/User.php";


header('Content-Type: application/json');


// Return result 
$userApi = new User();
echo $userApi->getUsers();
