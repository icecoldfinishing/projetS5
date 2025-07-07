<?php

namespace app\models;

use PDO;

class AdminModel
{
    private $db;

    public function __construct(PDO $db)
    {
        $this->db = $db;
    }

}
