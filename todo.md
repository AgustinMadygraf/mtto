// TODO Crear una clase DatabaseConnection en un nuevo archivo DatabaseConnection.php que maneje la conexión a la base de datos. (SRP)
// Archivo a modificar: load_data.php

// TODO Crear una clase DataLoader en un nuevo archivo DataLoader.php que maneje la carga de datos desde la base de datos. (SRP)
// Archivo a modificar: load_data.php

// TODO Crear una interfaz DatabaseConnectionInterface que defina los métodos necesarios para la conexión a la base de datos. (OCP)
// Archivo a crear: DatabaseConnectionInterface.php

// TODO Implementar la interfaz DatabaseConnectionInterface en la clase DatabaseConnection. (OCP)
// Archivo a modificar: DatabaseConnection.php

// TODO Asegurarse de que cualquier clase que implemente DatabaseConnectionInterface pueda sustituir a DatabaseConnection sin alterar el comportamiento del programa. (LSP)
// Archivo a modificar: DatabaseConnection.php, DatabaseConnectionInterface.php

// TODO Crear una interfaz DataLoaderInterface que defina los métodos necesarios para la carga de datos. (ISP)
// Archivo a crear: DataLoaderInterface.php

// TODO Modificar la clase DataLoader para que dependa de DatabaseConnectionInterface en lugar de una implementación concreta de la conexión a la base de datos. (DIP)
// Archivo a modificar: DataLoader.php

// TODO Crear una clase Logger en un nuevo archivo Logger.php que maneje el registro de logs. (SRP)
// Archivo a modificar: load_data.php

// TODO Crear una interfaz LoggerInterface que defina los métodos necesarios para el registro de logs. (OCP)
// Archivo a crear: LoggerInterface.php

// TODO Modificar la clase Logger para que dependa de LoggerInterface en lugar de una implementación concreta de registro de logs. (DIP)