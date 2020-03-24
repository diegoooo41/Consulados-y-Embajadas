<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">  
  <ENTIDADES><xsl:for-each select="Contenidos/contenido">
    <ENTIDAD>
      <tipo><xsl:value-of select="tipo"/></tipo>
      <ID-ENTIDAD><xsl:value-of select="atributos/atributo[@nombre='ID-ENTIDAD']/text()"/></ID-ENTIDAD>
      <NOMBRE><xsl:value-of select="atributos/atributo[@nombre='NOMBRE']/text()"/></NOMBRE>
      <TRANSPORTE><xsl:value-of select="atributos/atributo[@nombre='TRANSPORTE']/text()"/></TRANSPORTE>
      <ACCESIBILIDAD><xsl:value-of select="atributos/atributo[@nombre='ACCESIBILIDAD']/text()"/></ACCESIBILIDAD>
      <URL><xsl:value-of select="atributos/atributo[@nombre='CONTENT-URL']/text()"/></URL>
      <LOCALIZACION>
          <NOMBRE-VIA><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='NOMBRE-VIA']/text()"/></NOMBRE-VIA>
          <CLASE-VIAL><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='CLASE-VIAL']/text()"/></CLASE-VIAL>
          <TIPO-NUM><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='TIPO-NUM']/text()"/></TIPO-NUM>
          <NUM><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='NUM']/text()"/></NUM>
          <PLANTA><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='PLANTA']/text()"/></PLANTA>
          <LOCALIDAD><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='LOCALIDAD']/text()"/></LOCALIDAD>
          <PROVINCIA><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='PROVINCIA']/text()"/></PROVINCIA>
          <CODIGO-POSTAL><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='CODIGO-POSTAL']/text()"/></CODIGO-POSTAL>
          <BARRIO><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='BARRIO']/text()"/></BARRIO>
          <DISTRITO><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='DISTRITO']/text()"/></DISTRITO>
          <COORDENADA-X><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='COORDENADA-X']/text()"/></COORDENADA-X>
          <COORDENADA-Y><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='COORDENADA-Y']/text()"/></COORDENADA-Y>
          <LATITUD><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='LATITUD']/text()"/></LATITUD>
          <LONGITUD><xsl:value-of select="atributos/atributo[@nombre='LOCALIZACION']/atributo[@nombre='LONGITUD']/text()"/></LONGITUD>
      </LOCALIZACION>
      <CONTACTO>
        <TELEFONO><xsl:value-of select="atributos/atributo[@nombre='DATOSCONTACTOS']/atributo[@nombre='TELEFONO']/text()"/></TELEFONO>
        <FAX><xsl:value-of select="atributos/atributo[@nombre='DATOSCONTACTOS']/atributo[@nombre='FAX']/text()"/></FAX>
        <EMAIL><xsl:value-of select="atributos/atributo[@nombre='DATOSCONTACTOS']/atributo[@nombre='EMAIL']/text()"/></EMAIL>
      </CONTACTO>
    </ENTIDAD>
  </xsl:for-each></ENTIDADES>
  </xsl:template>
</xsl:stylesheet>
