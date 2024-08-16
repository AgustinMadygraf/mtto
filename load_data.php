<?php
require '../vendor/autoload.php'; // Cargar Composer y phpdotenv
require 'DatabaseConnection.php'; // Incluir la clase DatabaseConnection
require 'DataLoader.php'; // Incluir la clase DataLoader
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

// Cargar el archivo .env
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

// Crear un logger
$log = new Logger('mi_logger');
$log->pushHandler(new StreamHandler(__DIR__.'/logs/app.log', Logger::DEBUG));

// Conexión a la base de datos MySQL usando las variables de entorno
$servername = $_ENV['DB_HOST'];
$username = $_ENV['DB_USERNAME'];
$password = $_ENV['DB_PASSWORD'];
$database = $_ENV['DB_DATABASE'];

// Registrar mensaje de depuración antes de la conexión
$log->debug('Intentando conectar a la base de datos', [
    'host' => $servername,
    'username' => $username,
    'database' => $database
]);

// Crear la conexión usando la clase DatabaseConnection
$dbConnection = new DatabaseConnection($servername, $username, $password, $database);
$conn = $dbConnection->getConnection();

// Verificar la conexión
if ($conn->connect_error) {
    $log->error('Conexión fallida: ' . $conn->connect_error);
    die("Conexión fallida: " . $conn->connect_error);
} else {
    $log->info('Conexión exitosa a la base de datos');
}

// Crear una instancia de DataLoader y cargar los datos
$dataLoader = new DataLoader($conn);
$dataLoader->loadData();

$dbConnection->closeConnection();
$log->info('Conexión a la base de datos cerrada.');
?>