<?php
require '../vendor/autoload.php'; // Cargar Composer y phpdotenv

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

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    $log->error('Conexión fallida: ' . $conn->connect_error);
    die("Conexión fallida: " . $conn->connect_error);
} else {
    $log->info('Conexión exitosa a la base de datos');
}

// Consulta SQL para obtener los datos de la tabla 'preguntas'
$sql = "SELECT ID, tema, criterio, rta_0, rta_1, rta_2, rta_3 FROM preguntas";
$log->debug('Ejecutando consulta SQL: ' . $sql);

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $log->info('Se encontraron ' . $result->num_rows . ' filas en la tabla preguntas.');
    // Salida de los datos en cada fila
    while ($row = $result->fetch_assoc()) {
        $log->debug('Procesando fila: ', $row);
        echo "<tr>
                <td>" . $row["ID"] . "</td>
                <td>" . $row["tema"] . "</td>
                <td>" . $row["criterio"] . "</td>
                <td>
                    <input type='radio' name='respuesta_" . $row["ID"] . "' value='0'>" . $row["rta_0"] . "
                </td>
                <td>
                    <input type='radio' name='respuesta_" . $row["ID"] . "' value='1'>" . $row["rta_1"] . "
                </td>
                <td>
                    <input type='radio' name='respuesta_" . $row["ID"] . "' value='2'>" . $row["rta_2"] . "
                </td>
                <td>
                    <input type='radio' name='respuesta_" . $row["ID"] . "' value='3'>" . $row["rta_3"] . "
                </td>
            </tr>";
    }
} else {
    $log->warning('No se encontraron datos en la tabla preguntas.');
    echo "<tr><td colspan='7'>No hay datos disponibles</td></tr>";
}

$conn->close();
$log->info('Conexión a la base de datos cerrada.');
?>
