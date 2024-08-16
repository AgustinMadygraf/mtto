<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visualización de la Tabla</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Auditoria Interna Mantenimiento</h1>
    <table id="data-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>TEMA</th>
                <th>CRITERIO</th>
                <th>0</th>
                <th>1</th>
                <th>2</th>
                <th>3</th>
            </tr>
            <tr>
            </tr>
        </thead>
        <tbody>
            <?php include 'load_data.php'; ?>
        </tbody>
    </table>

    <script src="script_2.js"></script>
</body>
</html>
