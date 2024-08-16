<?php
require 'DatabaseConnectionInterface.php';

class DatabaseConnection implements DatabaseConnectionInterface {
    private $servername;
    private $username;
    private $password;
    private $database;
    private $conn;

    public function __construct($servername, $username, $password, $database) {
        $this->servername = $servername;
        $this->username = $username;
        $this->password = $password;
        $this->database = $database;
        $this->connect();
    }

    public function connect() {
        // Crear la conexión
        $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->database);

        // Verificar la conexión
        if ($this->conn->connect_error) {
            die("Conexión fallida: " . $this->conn->connect_error);
        }
    }

    public function getConnection() {
        return $this->conn;
    }

    public function closeConnection() {
        if ($this->conn) {
            $this->conn->close();
        }
    }
}
?>