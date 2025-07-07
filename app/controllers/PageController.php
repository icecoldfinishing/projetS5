<?php

namespace app\controllers;
use app\models\AdminModel;

use Flight;

class PageController
{
    private $adminModel;

    public function __construct() {
        $this->adminModel = new AdminModel(Flight::db());

    }

    public function login()
    {
        $message = '';
        Flight::render('index', ['message' => $message]);
    }
    public function about()
    {
        $message = '';
        Flight::render('index', ['message' => $message]);
    }
}
