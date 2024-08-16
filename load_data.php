<?php
// Conexión a la base de datos MySQL
$servername = "localhost";
$username = "root";
$password = "12345678";
$database = "esp32";

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Consulta SQL para obtener los datos de la tabla 'preguntas'
$sql = "SELECT ID, tema, criterio, rta_0, rta_1, rta_2, rta_3 FROM preguntas";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Salida de los datos en cada fila
    while($row = $result->fetch_assoc()) {
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
    echo "<tr><td colspan='7'>No hay datos disponibles</td></tr>";
}

$conn->close();
?>
