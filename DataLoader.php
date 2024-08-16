<?php

class DataLoader {
    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }

    public function loadData() {
        $sql = "SELECT ID, tema, criterio, rta_0, rta_1, rta_2, rta_3 FROM preguntas";
        $result = $this->conn->query($sql);

        if ($result->num_rows > 0) {
            // Salida de los datos en cada fila
            while ($row = $result->fetch_assoc()) {
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
    }
}
?>