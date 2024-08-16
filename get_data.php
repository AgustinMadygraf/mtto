<?php
// Configuración de la conexión a la base de datos
$servername = "localhost";  // Cambia esto si tu servidor MySQL es diferente
$username = "root";   // Reemplaza con tu usuario de MySQL
$password = "12345678"; // Reemplaza con tu contraseña de MySQL
$dbname = "ESP32";           // Nombre de la base de datos

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Consulta para obtener los datos de la tabla
$sql = "SELECT id, contador, fechahora FROM tabla_2 ORDER BY id DESC";
$result = $conn->query($sql);

$data = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

// Enviar los datos como un JSON
echo json_encode($data);

// Cerrar la conexión
$conn->close();
?>
