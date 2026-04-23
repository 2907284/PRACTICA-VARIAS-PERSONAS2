fetch('dispositivos.json')
  .then(response => response.json())
  .then(datos => {

    const contenedor = document.getElementById("tabla");

    let html = "<table>";

    html += `
      <tr>
        <th>ID</th>
        <th>Tipo</th>
        <th>Marca</th>
        <th>Modelo</th>
        <th>Precio (€)</th>
      </tr>
    `;

    datos.forEach(d => {
      html += `
        <tr>
          <td>${d.id}</td>
          <td>${d.tipo}</td>
          <td>${d.marca}</td>
          <td>${d.modelo}</td>
          <td>${d.precio}</td>
        </tr>
      `;
    });

    html += "</table>";

    contenedor.innerHTML = html;

  })
  .catch(error => console.error("Error al cargar el JSON:", error));