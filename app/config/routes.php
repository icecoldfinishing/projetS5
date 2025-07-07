<?php

// Inclure les contrôleurs nécessaires
use app\controllers\PageController;

// Créer une instance de l'application Flight
$app = Flight::app();


$Page_Controller = new PageController();

$app->router()->get('/', [$Page_Controller, 'login']);
$app->router()->get('/about', [$Page_Controller, 'about']);




