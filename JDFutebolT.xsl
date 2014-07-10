<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    
    <xsl:template match="/"> 
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <link rel="stylesheet" type="text/css" href="style.css" />
                <title>Jornal Desportivo</title>
                <script>                 
                    function hide()  {
                        var arr = document.getElementsByTagName("table");
                        for (var i = 0; i &lt; arr.length; i++)
                            arr[i].style.display = 'none';    
                    }
                    function show() {            
                        var arr = document.getElementsByTagName("table");
                        for (var i = 0; i &lt; arr.length; i++)
                            arr[i].style.display = '';    
                        document.getElementById('1').style.visibility='hidden';
                    }
                </script>
            </head>
            <body>
                <div id="container">
                    <div id="header">
                        <h1 align="center">Jornal<span class="off">Desportivo</span></h1>
                    </div>   
                    <div id="menu">
                        <ul>
                            <h2><a href="JDIndice.xml" align="center">Indice</a></h2>
                            <h2><a href="JDFutebol.xml" align="center">Futebol</a></h2>
                            <h2><a href="JDAndebol.xml" align="center">Andebol</a></h2>
                            <h2><a href="JDHoquei.xml" align="center">Hóquei</a></h2>
                            <h2><a href="JDFutsal.xml" align="center">Futsal</a></h2>
                            <h2><a href="JDVolei.xml" align="center">Vólei</a></h2>
                            <h2><a href="JDOutras.xml" align="center">Outras</a></h2>
                            <h2><a href="RelatorioXML.xml" align="center">Relatório</a></h2>
                        </ul>
                    </div>
                    <div id="content">
                        <xsl:apply-templates select="//Noticia[@idModalidade=1]"/>
                        <div id="content_bottom"></div>
                        <div id="footer">
                            <h3>
                                <a href="http://www.facebook.com/marcoferreira99">1090622-Marco Castro</a>
                                <a href="http://www.facebook.com/francisco.santos.9828">1111315-Francisco Santos</a>
                            </h3>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
        
    <xsl:template match="//Noticia[@idModalidade=1]">
        <table border="0" width="999">
        <tr>
        <td align="center"> </td>
        <td width="1000" height="25"><h2><xsl:value-of select="./Lingua/PT/Titulo"/></h2></td>
        </tr>
        <tr> 
            <td align="left"><img src="{./Foto/node()}" class="CalloutRightPhoto"/></td>
            <td align="left" width="1000" height="25">
                <h5>
                    <xsl:value-of select="./Lingua/PT/Texto"/>
                </h5>
                <br/>
                <h5>Autor:<xsl:value-of select="./Autor"/>
                <br/>
                </h5>
            </td>
        </tr>
        <tr></tr>
        <tr></tr>
        </table> 
        <xsl:apply-templates select="./Lingua/ENG"/>
        <FORM> 
            <INPUT type="button" id="1" value="Traduzir" name="btnMostrarDetalhes" onClick="show()"/> 
            <INPUT type="button" id="1" value="Relacionadas" name="btnMostrarDetalhes" onClick="show()"/> 
        </FORM> 
    </xsl:template>
    
   <xsl:template match="//ENG">
       <table border="0" width="999" style="display:none">
        <tr>
        <td align="center"> </td>
        <td width="1000" height="25"><h2><xsl:value-of select="./Titulo"/></h2></td>
        </tr>
        <tr> 
            <td align="center"> </td>
            <td align="left" width="1000" height="25">
                <h5>
                    <xsl:value-of select="Texto"/>
                </h5>
                <br/>
            </td>
        </tr>
        <tr></tr>
        <tr></tr>
       </table> 
    </xsl:template>    
    
</xsl:stylesheet>
