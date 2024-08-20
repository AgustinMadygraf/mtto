<?php
require '../vendor/autoload.php'; // Cargar Composer y phpdotenv

// Cargar el archivo .env
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

// Conexión a la base de datos MySQL usando las variables de entorno
$servername = $_ENV['DB_HOST'];
$username = $_ENV['DB_USERNAME'];
$password = $_ENV['DB_PASSWORD'];
$database = $_ENV['DB_DATABASE'];

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $database);
echo "Conectando a la base de datos...<br>";
// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
    echo "Conexión fallida a la base de datos.<br>";
} else {
    echo "Conexión exitosa a la base de datos.<br>";
}

// Recorrer las respuestas y guardarlas en la base de datos o hacer alguna otra operación
foreach ($_POST as $pregunta_id => $respuesta) {
    echo "Pregunta ID: $pregunta_id, Respuesta: $respuesta<br>";
    // Asumiendo que el nombre del campo es 'respuesta_{ID}', extraer el ID
    $id = str_replace('respuesta_', '', $pregunta_id);
    $respuesta_seleccionada = intval($respuesta);

    // Guardar la respuesta en la base de datos
    $sql = "INSERT INTO respuestas_usuario (pregunta_id, respuesta) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ii", $id, $respuesta_seleccionada);

    if ($stmt->execute() === TRUE) {
        echo "Respuesta para pregunta ID $id guardada correctamente.<br>";
    } else {
        echo "Error: " . $stmt->error . "<br>";
    }
}

$stmt->close();
$conn->close();
?>
