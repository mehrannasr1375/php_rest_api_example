<?php


//__ this file is Entry Point of the app __\\


use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;


// autoload composer dependencies
require __DIR__ . '/../vendor/autoload.php';


// helper functions
require_once __DIR__ . "/../src/helpers.php";


// instanciate the framework
$app = AppFactory::create();
$app->addRoutingMiddleware();
$errorMiddleware = $app->addErrorMiddleware(true, true, true);


// load routes
require __DIR__ . "/../src/routes/users.php";
require __DIR__ . "/../src/routes/categories.php";
require __DIR__ . "/../src/routes/product_categories.php";
require __DIR__ . "/../src/routes/products.php";


// run the aplication
$app->run();