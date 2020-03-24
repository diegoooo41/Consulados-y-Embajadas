<html>
  <head>
    <meta charset="utf-8"/>
    <meta name="description" content="Website currently on development, developed by Diego Romero."/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/Index3Style.css"/>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="../../index.html">Mapa <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="./lista.html">Lista <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="./presentacion.html">Presentacion <span class="sr-only">(current)</span></a>
          </li>
        </ul>
      </div>
    </nav>
    <div class="main-container">
      <table class="table">
        <thead class="thead-dark">
          <tr>
            <th>Nombre</th>
            <th>Direccion</th>
            <th>Localidad</th>
            <th>Provincia</th>
            <th>Barrio</th>
            <th>Teléfono</th>
            <th>Email</th>
          </tr>
        </thead>
      <tbody>
      {
   for $program in doc("main_db.xml")/ENTIDADES/ENTIDAD
   
   return 
   <tr>
     <td>{$program/NOMBRE/text()}</td>
     <td>{$program/LOCALIZACION/NOMBRE-VIA/text()}</td>
     <td>{$program/LOCALIZACION/LOCALIDAD/text()}</td>
     <td>{$program/LOCALIZACION/PROVINCIA/text()}</td>
     <td>{$program/LOCALIZACION/BARRIO/text()}</td>
     <td>{$program/CONTACTO/TELEFONO/text()}</td>
     <td>{$program/CONTACTO/EMAIL/text()}</td>
   </tr>
   
}
      </tbody>     
    </table>
  </div>
</body>
</html>

