<?php
interface DatabaseConnectionInterface {
    public function connect();
    public function getConnection();
    public function closeConnection();
}
?>