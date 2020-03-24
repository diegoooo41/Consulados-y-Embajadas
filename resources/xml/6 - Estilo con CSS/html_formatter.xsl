<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">  
    <html>
      <head>
      </head>

      <body>
        <div class="main-container">
          <h4>Embajadas y Consulados en Madrid, España</h4>
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
              <xsl:for-each select="ENTIDADES/ENTIDAD">
                <tr>
                  <td><xsl:value-of select="NOMBRE/text()"/></td>
                  <td><xsl:value-of select="LOCALIZACION/NOMBRE-VIA/text()"/></td>
                  <td><xsl:value-of select="LOCALIZACION/LOCALIDAD/text()"/></td>
                  <td><xsl:value-of select="LOCALIZACION/PROVINCIA/text()"/></td>
                  <td><xsl:value-of select="LOCALIZACION/BARRIO/text()"/></td>
                  <td><xsl:value-of select="CONTACTO/TELEFONO/text()"/></td>
                  <td><xsl:value-of select="CONTACTO/EMAIL/text()"/></td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
