// Cargar el archivo JSON
fetch('dispositivos.json')
  .then(response => response.json())
  .then(data => {
    crearTabla(data);
  })
  .catch(error => {
    console.error('Error al cargar el JSON:', error);
  });

function crearTabla(dispositivos) {
  const contenedor = document.getElementById('contenedor-tabla');

  // Crear tabla
  const tabla = document.createElement('table');

  // Crear cabecera
  const encabezado = document.createElement('tr');
  const campos = ['ID', 'Tipo', 'Marca', 'Modelo', 'Precio'];

  campos.forEach(texto => {
    const th = document.createElement('th');
    th.textContent = texto;
    encabezado.appendChild(th);
  });

  tabla.appendChild(encabezado);

  // Crear filas
  dispositivos.forEach(dispositivo => {
    const fila = document.createElement('tr');

    Object.values(dispositivo).forEach(valor => {
      const td = document.createElement('td');
      td.textContent = valor;
      fila.appendChild(td);
    });

    tabla.appendChild(fila);
  });

  contenedor.appendChild(tabla);
}