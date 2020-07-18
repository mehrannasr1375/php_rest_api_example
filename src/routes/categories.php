<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

require_once __DIR__ . "/../classes/Category.php";

// $app->get('/api/users', function (Request $request, Response $response, array $args) {
//     $limit = $request->getAttribute('limit');
//     $count = $request->getAttribute('count');
//     $user = new User();
//     echo $user->all(0,6);
// });

