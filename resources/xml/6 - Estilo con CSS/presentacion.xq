<html>
  <head>
    <meta charset="utf-8"/>
    <meta name="description" content="Website currently on development, developed by Diego Romero."/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
    <link rel="stylesheet" href="../css/PresentacionStyle.css"/>
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
    
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-6 col-lg-9">
          
          {
            for $program in doc("main_db.xml")/ENTIDADES/ENTIDAD
  
            return 
            <div class="card p-4">
              <div class="card-block">
                
                <h4 class="card-title">Nombre: {$program/NOMBRE/text()}</h4><br></br>
                <p class="card-text">Ubicacion: {$program/LOCALIZACION/CLASE-VIAL/text()}, {$program/LOCALIZACION/NOMBRE-VIA/text()}, {$program/LOCALIZACION/LOCALIDAD/text()}, {$program/LOCALIZACION/NUM/text()}</p><br></br>
                <p class="card-text">Barrio: {$program/LOCALIZACION/BARRIO/text()}, Distrito: {$program/LOCALIZACION/DISTRITO/text()}</p>
                <p class="link-web">Sitio web: <a href="{$program/URL/text()}">{$program/URL/text()}</a></p>
                <p class="card-text">Telefono: {$program/CONTACTO/TELEFONO/text()}</p><br></br>
                <p class="link-web">Mail: {$program/CONTACTO/EMAIL/text()}</p>
              </div>
            </div>
          }
                  
         </div>
      </div>
    </div>
  </body>
</html>