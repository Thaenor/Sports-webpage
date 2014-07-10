<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/"> 
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <link rel="stylesheet" type="text/css" href="style.css" />
                <title>JornalDesportivo-Tudo sobre desporto!</title>
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
                        <h2>Outras transformações disponíveis:</h2>
                        <br/>
                        <h4>
                            Noticias do clube com mais primeiros lugares
                            <br/>
                            <a href="JDMarcadores.xml" align="center">Tabela de Melhores Marcadores de todas as modalidades</a>
                            <br/>
                            Criar XML de Clubes
                            <br/>
                            Criar XML de todas as Ligas
                            <br/>
                            <a href="JDEquipaGolos.xml" align="center">Criar XML da equipa com mais golos da Liga Portuguesa de Futebol</a>
                            <br/>
                        </h4>
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

    <xsl:template match="//Noticia">
        <div id="content_top"></div>
        <div id="content_main" align="center" >
            <p>
                <xsl:apply-templates select="/Lingua/PT/Titulo[position()]"/>
            </p>
                <xsl:apply-templates select="/Lingua/PT/Texto[position()]"/>
        </div>
    </xsl:template>
    
    <xsl:template match="/Lingua/PT/Titulo[position()]">
        <xsl:value-of select="Titulo"/>
    </xsl:template>
    
    <xsl:template match="/Lingua/PT/Texto[position()]">
        <xsl:value-of select="Texto"/>
    </xsl:template>
</xsl:stylesheet>
