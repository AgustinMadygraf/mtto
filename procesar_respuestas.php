<?php
// Conexión a la base de datos MySQL
$servername = "10.176.61.55";
$username = "root";
$password = "12345678";
$database = "esp32";

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Recorrer las respuestas y guardarlas en la base de datos o hacer alguna otra operación
foreach ($_POST as $pregunta_id => $respuesta) {
    // Asumiendo que el nombre del campo es 'respuesta_{ID}', extraer el ID
    $id = str_replace('respuesta_', '', $pregunta_id);
    $respuesta_seleccionada = intval($respuesta);

    // Aquí puedes guardar la respuesta en la base de datos
    $sql = "INSERT INTO respuestas_usuario (pregunta_id, respuesta) VALUES ($id, $respuesta_seleccionada)";
    if ($conn->query($sql) === TRUE) {
        echo "Respuesta para pregunta ID $id guardada correctamente.<br>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
