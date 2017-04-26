<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="MujNabytek">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>id</th>
                        <th>fotka</th>
                        <th>nazev</th>
                        <th>cena</th>
                    </tr>
                    <xsl:for-each select="//okenko">
                        <tr>
                            <td>
                                <xsl:value-of select="@id" />
                            </td>
                            <td>
                                <xsl:value-of select="fotka" />
                            </td>
                            <td>
                                <xsl:value-of select="nazev" />
                            </td>
                            <td>
                                <xsl:value-of select="cena" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
