<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;
require_once __DIR__ . "/../classes/User.php";


// get users
$app->get('/api/users', function (Request $request) {
    $user = new User();
    header('Content-Type: Application/json');
    echo $user->all();
    die();
});

// get users with limitation
$app->get('/api/users/limit/{limit}/count/{count}', function (Request $request) {
    $limit = $request->getAttribute('limit') > 0 ? $request->getAttribute('limit') : 0;
    $count = $request->getAttribute('count') > 0 ? $request->getAttribute('limit') : 5;
    $user = new User();
    header('Content-Type: Application/json');
    echo $user->all($limit, $count);
    die();
});

// get single user
$app->get('/api/user/{id}', function (Request $request, Response $response, array $args) {
    $id = $request->getAttribute('id');
    $user = new User();
    header('Content-Type: Application/json');
    echo $user->get($id);
    die();
});

// create user
$app->post('/api/user/create', function (Request $request, Response $response, array $args) {
    $user = new User();
    header('Content-Type: Application/json');
    $data = json_decode($request->getBody());
    echo $user->create([
        "full_name" => $data->full_name,
        "username" => $data->username,
        "email" => $data->email,
        "password" => $data->password,
        "gender" => $data->gender,
        "mobile" => $data->mobile,
        "province" => $data->province,
        "township" => $data->township,
        "address" => $data->address,
        "postal_code" => $data->postal_code,
        "creation_time" => $data->creation_time 
    ]);
    die();
});

// update user
$app->put('/api/user/update/{id}', function (Request $request, Response $response, array $args) {
    $user = new User();
    header('Content-Type: Application/json');
    $data = json_decode($request->getBody());
    echo $user->update([
        "id" => (int)$data->id,
        "full_name" => $data->full_name,
        "username" => $data->username,
        "email" => $data->email,
        "password" => $data->password,
        "gender" => $data->gender,
        "mobile" => $data->mobile,
        "province" => $data->province,
        "township" => $data->township,
        "address" => $data->address,
        "postal_code" => $data->postal_code,
        "creation_time" => $data->creation_time 
    ]);
    die();
});

// delete user
$app->delete('/api/user/delete/{id}', function (Request $request, Response $response, array $args) {
    $id = $request->getAttribute('id');
    $user = new User();
    header('Content-Type: Application/json');
    echo $user->delete($id);
    die();
});

