<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Esquema XSD del Inventario</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                    }
                    h2 {
                        text-align: center;
                    }
                    table {
                        border-collapse: collapse;
                        width: 70%;
                        margin: 20px auto;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: center;
                    }
                    th {
                        background-color: #d9eaf7;
                    }
                </style>
            </head>
            <body>
                <h2>Estructura del esquema XSD: Inventario</h2>
                <table>
                    <tr>
                        <th>Elemento padre</th>
                        <th>Elemento hijo</th>
                        <th>Tipo</th>
                    </tr>

                    <xsl:for-each select="//xs:element[@name='dispositivo']//xs:element">
                        <tr>
                            <td>dispositivo</td>
                            <td><xsl:value-of select="@name"/></td>
                            <td><xsl:value-of select="@type"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>