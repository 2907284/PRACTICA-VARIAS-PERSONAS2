<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario de Hardware</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                    }
                    h2 {
                        text-align: center;
                        color: #333333;
                    }
                    table {
                        border-collapse: collapse;
                        width: 80%;
                        margin: 20px auto;
                        background-color: white;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: center;
                    }
                    th {
                        background-color: #d9eaf7;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                </style>
            </head>
            <body>
                <h2>Inventario de Dispositivos Hardware</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Tipo</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="inventario/dispositivo">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="tipo"/></td>
                            <td><xsl:value-of select="marca"/></td>
                            <td><xsl:value-of select="modelo"/></td>
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>