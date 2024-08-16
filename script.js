function fetchData() {
    fetch('get_data.php')
        .then(response => response.json())
        .then(data => {
            const tableBody = document.querySelector('#data-table tbody');
            tableBody.innerHTML = ''; // Limpiar la tabla antes de actualizar

            data.forEach(row => {
                const tr = document.createElement('tr');
                tr.innerHTML = `
                    <td>${row.id}</td>
                    <td>${row.contador}</td>
                    <td>${row.fechahora}</td>
                `;
                tableBody.appendChild(tr);
            });
        })
        .catch(error => console.error('Error al obtener los datos:', error));
}

// Llamar a fetchData cada segundo
setInterval(fetchData, 1000);

// Llamar a fetchData inmediatamente al cargar la página
fetchData();
