<?php

$ds = DIRECTORY_SEPARATOR;

// Charger l'autoloader de Composer
require(__DIR__ . $ds . '..' . $ds . '..' . $ds . 'vendor' . $ds . 'autoload.php');

// Vérifier la présence du fichier de configuration
if (file_exists(__DIR__ . $ds . 'config.php') === false) {
    Flight::halt(500, 'Config file not found. Please create a config.php file in the app/config directory to get started.');
}

// Charger la configuration
$config = require('config.php');

// Initialiser l'application Flight
$app = Flight::app();

// Enregistrer la méthode db si la configuration de la base de données est présente
if (isset($config['database'])) {
    Flight::register('db', 'PDO', [
        "mysql:host={$config['database']['host']};dbname={$config['database']['dbname']};charset=utf8",
        $config['database']['user'],
        $config['database']['password']
    ]);
} else {
    Flight::halt(500, 'Database configuration is incomplete in config.php.');
}

// Charger les routes et les services
require('routes.php');
require('services.php');

// Démarrer l'application
$app->start();
