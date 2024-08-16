<?php
require '../vendor/autoload.php'; // Cargar Composer y phpdotenv

// Cargar el archivo .env
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

// Conexión a la base de datos MySQL usando las variables de entorno
$conn = new mysqli($_ENV['DB_HOST'], $_ENV['DB_USERNAME'], $_ENV['DB_PASSWORD'], $_ENV['DB_DATABASE']);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Leer el archivo CSV
$csvFile = fopen('datos.csv', 'r');

// Saltar la primera línea si contiene los encabezados
fgetcsv($csvFile);

// Insertar los datos en la tabla preguntas
while (($row = fgetcsv($csvFile, 1000, ",")) !== FALSE) {
    // Asumiendo que el CSV tiene las columnas en el orden adecuado
    $criterio = $row[1];
    $rta_0 = isset($row[2]) ? $row[2] : '';
    $rta_1 = isset($row[3]) ? $row[3] : '';
    $rta_2 = isset($row[4]) ? $row[4] : '';
    $rta_3 = isset($row[5]) ? $row[5] : '';

    // Preparar la consulta SQL
    $sql = "INSERT INTO preguntas (tema, criterio, rta_0, rta_1, rta_2, rta_3) 
            VALUES ('Tema general', ?, ?, ?, ?, ?)";

    // Preparar la declaración
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssss", $criterio, $rta_0, $rta_1, $rta_2, $rta_3);

    // Ejecutar la declaración
    if ($stmt->execute() === FALSE) {
        echo "Error: " . $stmt->error . "\n";
    }
}

// Cerrar la conexión
$stmt->close();
$conn->close();
fclose($csvFile);

echo "Datos insertados correctamente.\n";
?>
