<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01//EN"
        doctype-system="http://www.w3.org/TR/html4/strict.dtd" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Fiches d'unités pour W40k</title>
                <link rel="stylesheet" type="text/css" href="css/style.css"/>
                <!-- CDN bootstrap -->
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
                    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
                    crossorigin="anonymous"/>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"/>
            </head>
            <body>
                <div class="container-fluid">
                    <xsl:for-each select="//h3">


                        <xsl:for-each select="../ul/li[@class = 'rootselection']">
                            <!--
                            <xsl:if test="position() mod 2 = 1">
                                <xsl:text disable-output-escaping="yes"><![CDATA[<div class="row">]]></xsl:text>
                            </xsl:if>
                            -->
                            <xsl:choose>
                               
                                
                                <!-- vehicule sur 6 tables grille lord of war -->
                                <xsl:when test="count(current()/table) = 6 and starts-with(ancestor::li/h3, 'Lord of War')">
                                    
                                    <div class="row main">
                                        <div class="wrapper__tank container-fluid">
                                            <xsl:call-template name="show_unit_header_tank">
                                                <xsl:with-param name="table_number_stat" select="3"/>
                                                <xsl:with-param name="table_number_grid" select="6"
                                                />
                                            </xsl:call-template>
                                            <div class="wrapper__tank_content">
                                                <xsl:call-template name="show_unit_weapons">
                                                    <xsl:with-param name="table_number" select="5"/>
                                                </xsl:call-template>
                                                
                                                <xsl:call-template name="show_unit_abilities">
                                                    <xsl:with-param name="table_number" select="1"/>
                                                    
                                                </xsl:call-template>
                                                
                                               
                                                
                                                <xsl:call-template name="show_unit_footer"/>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </xsl:when>
                                
                                <!-- vehicule sur 6 tables grille donc  + table de psy -->
                                <xsl:when test="count(current()/table) = 6">
                                    
                                    <div class="row main">
                                        <div class="wrapper__tank container-fluid">
                                            <xsl:call-template name="show_unit_header_tank">
                                                <xsl:with-param name="table_number_stat" select="5"/>
                                                <xsl:with-param name="table_number_grid" select="4"
                                                />
                                            </xsl:call-template>
                                            <div class="wrapper__tank_content">
                                                <xsl:call-template name="show_unit_weapons">
                                                    <xsl:with-param name="table_number" select="6"/>
                                                </xsl:call-template>
                                                
                                                <xsl:call-template name="show_unit_abilities">
                                                    <xsl:with-param name="table_number" select="1"/>
                                                    
                                                </xsl:call-template>
                                                
                                                <xsl:call-template name="show_unit_psy">
                                                    <xsl:with-param name="table_number" select="2"/>
                                                </xsl:call-template>
                                                
                                                <xsl:call-template name="show_unit_footer"/>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </xsl:when>

                                <!-- vehicule sur 4 tables grille pv en pos 4 comme les lord of wars -->
                                <xsl:when
                                    test="count(current()/table) = 5 and starts-with(ancestor::li/h3, 'Lord of War')">

                                    <div class="row main">
                                        <div class="wrapper__tank container-fluid">
                                            <xsl:call-template name="show_unit_header_tank">
                                                <xsl:with-param name="table_number_stat" select="3"/>
                                                <xsl:with-param name="table_number_grid" select="5"
                                                />
                                            </xsl:call-template>
                                            <div class="wrapper__tank_content">
                                                <xsl:call-template name="show_unit_weapons">
                                                  <xsl:with-param name="table_number" select="4"/>
                                                </xsl:call-template>

                                                <xsl:call-template name="show_unit_abilities">
                                                  <xsl:with-param name="table_number" select="1"/>
                                                </xsl:call-template>

                                                <xsl:call-template name="show_unit_footer"/>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:when>
                                
                                
                                <!-- vehicule psy... sur 5 tables grille spe hive -->
                                <xsl:when
                                    test="count(current()/table) = 5 and starts-with(h4, 'Hive Tyrant')">
                                    
                                    <div class="row main">
                                        <div class="wrapper__tank container-fluid">
                                            <xsl:call-template name="show_unit_header_tank">
                                                <xsl:with-param name="table_number_stat" select="4"/>
                                                <xsl:with-param name="table_number_grid" select="3"
                                                />
                                            </xsl:call-template>
                                            <div class="wrapper__tank_content">
                                                <xsl:call-template name="show_unit_weapons">
                                                    <xsl:with-param name="table_number" select="5"/>
                                                </xsl:call-template>
                                                
                                                <xsl:call-template name="show_unit_abilities">
                                                    <xsl:with-param name="table_number" select="1"/>
                                                </xsl:call-template>
                                                
                                                <xsl:call-template name="show_unit_psy">
                                                    <xsl:with-param name="table_number" select="2"/>
                                                </xsl:call-template>
                                                
                                                <xsl:call-template name="show_unit_footer"/>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:when>
                                

                                <!--  vehicule sur 5 tables, + table de ordre -->
                                <xsl:when
                                    test="count(current()/table) = 5 and starts-with(current()/table[2]/tr/th[2], 'Remaining')">
                                    <div class="row main">
                                        <div class="wrapper__tank container-fluid">

                                            <xsl:call-template name="show_unit_header_tank">
                                                <xsl:with-param name="table_number_stat" select="4"/>
                                                <xsl:with-param name="table_number_grid" select="2"
                                                />
                                            </xsl:call-template>
                                            <div class="wrapper__tank_content">
                                                <xsl:call-template name="show_unit_weapons">
                                                  <xsl:with-param name="table_number" select="5"/>
                                                </xsl:call-template>

                                                <xsl:call-template name="show_unit_abilities_order">
                                                  <xsl:with-param name="table_number_abilities"
                                                  select="1"/>
                                                  <xsl:with-param name="table_number_order"
                                                  select="3"/>
                                                </xsl:call-template>

                                                <xsl:call-template name="show_unit_footer"/>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:when>
                                
                                <!--  vehicule sur 5 tables, + table de transport -->
                                <xsl:when
                                    test="count(current()/table) = 5 and starts-with(current()/table[2]/tr/th[1], 'Transport')">
                                    
                                    <div class="row main">
                                        <div class="wrapper__tank container-fluid">
                                            
                                            <xsl:call-template name="show_unit_header_tank">
                                                <xsl:with-param name="table_number_stat" select="4"/>
                                                <xsl:with-param name="table_number_grid" select="3"
                                                />
                                            </xsl:call-template>
                                            <div class="wrapper__tank_content">
                                                <xsl:call-template name="show_unit_weapons">
                                                    <xsl:with-param name="table_number" select="5"/>
                                                </xsl:call-template>
                                                
                                                <xsl:call-template name="show_unit_abilities_order">
                                                    <xsl:with-param name="table_number_abilities"
                                                        select="1"/>
                                                    <xsl:with-param name="table_number_order"
                                                        select="2"/>
                                                </xsl:call-template>
                                                
                                                <xsl:call-template name="show_unit_footer"/>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:when>

                                <!-- spe  vehicule sur 8 tables donc + table de psy -->
                                <xsl:when test="count(current()/table) = 8">
                                    <div class="row main">
                                        <div class="wrapper__tank container-fluid">
                                            <xsl:call-template name="show_unit_header_tank">
                                                <xsl:with-param name="table_number_stat" select="4"/>
                                                <xsl:with-param name="table_number_grid" select="3"
                                                />
                                            </xsl:call-template>
                                            <div class="wrapper__tank_content">
                                                <xsl:call-template name="show_unit_weapons">
                                                  <xsl:with-param name="table_number" select="5"/>
                                                </xsl:call-template>

                                                <xsl:call-template name="show_unit_abilities">
                                                  <xsl:with-param name="table_number" select="1"/>

                                                </xsl:call-template>

                                                <xsl:call-template name="show_unit_psy">
                                                  <xsl:with-param name="table_number" select="2"/>
                                                </xsl:call-template>

                                                <xsl:call-template name="show_unit_footer"/>
                                            </div>


                                        </div>
                                    </div>
                                </xsl:when>


                                <!-- non vehicule sur 5 tables donc + table de psy -->
                                <xsl:when test="count(current()/table) = 5">
                                    <div>
                                        <div class="wrapper">
                                            <xsl:call-template name="show_unit_header"/>

                                            <xsl:call-template name="show_unit_stat">
                                                <xsl:with-param name="table_number" select="4"/>
                                            </xsl:call-template>

                                            <xsl:call-template name="show_unit_weapons">
                                                <xsl:with-param name="table_number" select="5"/>
                                            </xsl:call-template>

                                            <xsl:call-template name="show_unit_abilities">
                                                <xsl:with-param name="table_number" select="1"/>

                                            </xsl:call-template>

                                            <xsl:call-template name="show_unit_psy">
                                                <xsl:with-param name="table_number" select="3"/>
                                            </xsl:call-template>

                                            <xsl:call-template name="show_unit_footer"/>


                                        </div>
                                    </div>
                                </xsl:when>



                                <!-- pieton sur 4 tables ,dont psy +2 table -->
                                <xsl:when
                                    test="count(current()/table) = 4 and starts-with(current()/table[2]/tr/th[1], 'Psyker')">
                                    <div>
                                        <div class="wrapper">
                                            <xsl:call-template name="show_unit_header"/>

                                            <xsl:call-template name="show_unit_stat">
                                                <xsl:with-param name="table_number" select="3"/>
                                            </xsl:call-template>

                                            <xsl:call-template name="show_unit_weapons">
                                                <xsl:with-param name="table_number" select="4"/>
                                            </xsl:call-template>

                                            <xsl:call-template name="show_unit_abilities">
                                                <xsl:with-param name="table_number" select="1"/>

                                            </xsl:call-template>

                                            <xsl:call-template name="show_unit_psy">
                                                <xsl:with-param name="table_number" select="2"/>
                                            </xsl:call-template>
                                            <xsl:call-template name="show_unit_footer"/>

                                        </div>
                                    </div>
                                </xsl:when>

                                <!-- vehicule sur 4 tables grille pv en pos 2 -->
                                <xsl:when test="count(current()/table) = 4">
                                    
                                    <div class="row main">
                                        <div class="wrapper__tank container-fluid">
                                            <xsl:call-template name="show_unit_header_tank">
                                                <xsl:with-param name="table_number_stat" select="3"/>
                                                <xsl:with-param name="table_number_grid" select="2"
                                                />
                                            </xsl:call-template>
                                            <div class="wrapper__tank_content">
                                                <xsl:call-template name="show_unit_weapons">
                                                  <xsl:with-param name="table_number" select="4"/>
                                                </xsl:call-template>

                                                <xsl:call-template name="show_unit_abilities">
                                                  <xsl:with-param name="table_number" select="1"/>
                                                </xsl:call-template>

                                                <xsl:call-template name="show_unit_footer"/>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:when>

                                <xsl:when test="count(current()/table) = 3">
                                    <div>
                                        <div class="wrapper">
                                            <!-- titre feuille -->
                                            <xsl:call-template name="show_unit_header"/>

                                            <!-- unit stats -->
                                            <xsl:call-template name="show_unit_stat">
                                                <xsl:with-param name="table_number" select="2"/>
                                            </xsl:call-template>

                                            <!-- unit weapons -->
                                            <xsl:call-template name="show_unit_weapons">
                                                <xsl:with-param name="table_number" select="3"/>
                                            </xsl:call-template>

                                            <!-- unit abilities -->
                                            <xsl:call-template name="show_unit_abilities">
                                                <xsl:with-param name="table_number" select="1"/>
                                            </xsl:call-template>

                                            <!-- keywords -->
                                            <xsl:call-template name="show_unit_footer"/>
                                        </div>
                                    </div>
                                </xsl:when>
                                <xsl:when test="count(current()/table) = 2">
                                    <div>
                                        <div class="wrapper">
                                            <!-- titre feuille -->
                                            <xsl:call-template name="show_unit_header"/>

                                            <!-- unit stats -->
                                            <xsl:call-template name="show_unit_stat">
                                                <xsl:with-param name="table_number" select="1"/>
                                            </xsl:call-template>

                                            <!-- unit weapons -->
                                            <xsl:call-template name="show_unit_weapons">
                                                <xsl:with-param name="table_number" select="2"/>
                                            </xsl:call-template>

                                            <xsl:call-template name="show_unit_empty_content"/>

                                            <!-- keywords -->
                                            <xsl:call-template name="show_unit_footer"/>
                                        </div>
                                    </div>
                                </xsl:when>
                            </xsl:choose>
                            <!--
                            <xsl:if test="(position() mod 2 = 0) or (position() = last())">
                                <xsl:text disable-output-escaping="yes"><![CDATA[</div>]]></xsl:text>
                            </xsl:if>
                         -->

                        </xsl:for-each>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="show_unit_stat">
        <xsl:param name="table_number"/>
        <table class="name">
            <tr class="name__head">
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[1]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[2]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[3]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[4]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[5]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[6]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[7]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[8]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[9]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[10]"/>
                </td>
            </tr>

            <xsl:for-each select="current()/table[$table_number]/tr[position() &gt; 1]">
                <!-- couleur alt, weapon__content_grey 2nd -->
                <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">
                        <tr class="weapon__content weapon__content_grey">
                            <td>
                                <xsl:value-of select="td[1]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[2]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[3]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[4]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[5]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[6]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[7]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[8]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[9]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[10]"/>
                            </td>
                        </tr>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr class="weapon__content">
                            <td>
                                <xsl:value-of select="td[1]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[2]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[3]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[4]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[5]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[6]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[7]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[8]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[9]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[10]"/>
                            </td>
                        </tr>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </table>
    </xsl:template>

    <xsl:template name="show_unit_header">

        <table class="header">
            <thead class="header__title">
                <tr>
                    <th class="icon-role">
                        <div class="octogone">
                        <img
                            src="img/{translate(substring-before(ancestor::li/h3, ' ['),' ','-')}.png"
                            width="43" height="36" alt="{substring-before(ancestor::li/h3, ' [')}"/>
                        </div>
                    </th>
                    <th class="icon-power">

                        <div class="octogone">
                            <p><span><xsl:value-of
                                        select="substring-after(substring-before(h4, 'PL, '), '[')"
                                    /></span><br/>power</p>
                        </div>
                    </th>
                    <th class="unit-title">
                        <xsl:value-of select="substring-before(h4, ' [')"/>
                    </th>
                </tr>
            </thead>
        </table>
    </xsl:template>


    <xsl:template name="show_unit_header_tank">
        <xsl:param name="table_number_stat"/>
        <xsl:param name="table_number_grid"/>

        <div class="row tank__header">
            <div class="col-9">
                <div class="tank__name">
                    <!-- Nom de l'unité -->
                    <table class="header">
                        <thead class="header__title">
                            <tr>
                                <th class="icon-role">
                                    <div class="octogone">
                                        <img
                                            src="img/{translate(substring-before(ancestor::li/h3, ' ['),' ','-')}.png"
                                            width="43" height="36"
                                            alt="{substring-before(ancestor::li/h3, ' [')}"/>
                                    </div>
                                </th>
                                <th class="icon-power">
                                    <div class="octogone">
                                        <p><span><xsl:value-of
                                                  select="substring-after(substring-before(h4, 'PL, '), '[')"
                                                /></span><br/>power</p>
                                    </div>
                                </th>
                                <th class="unit-title">
                                    <xsl:value-of select="substring-before(h4, ' [')"/>
                                </th>
                            </tr>
                        </thead>
                    </table>

                    <!-- ici les stat -->

                    <table class="name">
                        <tr class="name__head">
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[1]"/>
                            </td>
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[2]"/>
                            </td>
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[3]"/>
                            </td>
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[4]"/>
                            </td>
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[5]"/>
                            </td>
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[6]"/>
                            </td>
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[7]"/>
                            </td>
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[8]"/>
                            </td>
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[9]"/>
                            </td>
                            <td>
                                <xsl:value-of
                                    select="current()/table[$table_number_stat]/tr[1]/th[10]"/>
                            </td>
                        </tr>

                        <xsl:for-each
                            select="current()/table[$table_number_stat]/tr[position() &gt; 1]">
                            <!-- couleur alt, weapon__content_grey 2nd -->
                            <xsl:choose>
                                <xsl:when test="position() mod 2 = 0">
                                    <tr class="name__content weapon__content_grey">
                                        <td>
                                            <xsl:value-of select="td[1]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[2]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[3]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[4]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[5]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[6]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[7]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[8]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[9]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[10]"/>
                                        </td>
                                    </tr>
                                </xsl:when>
                                <xsl:otherwise>
                                    <tr class="name__content">
                                        <td>
                                            <xsl:value-of select="td[1]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[2]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[3]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[4]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[5]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[6]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[7]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[8]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[9]"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="td[10]"/>
                                        </td>
                                    </tr>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </table>
                </div>
            </div>
            <!-- ici grille de vie  -->


            <div class="col-3 no-padding-left">
                <!-- Bloc stat dégréssif -->
                <div class="tank__damage">
                    <p class="tank__damage_caption">
                        <span>DAMAGE</span><br/> Some of this model's characteristics change as it
                        suffer damage, as shown below: </p>
                    <table class="tank__damage_table">
                        <tbody>
                            <tr>
                                <th>
                                    <xsl:value-of
                                        select="current()/table[$table_number_grid]/tr[1]/th[2]"/>
                                </th>
                                <th>
                                    <xsl:value-of
                                        select="current()/table[$table_number_grid]/tr[1]/th[3]"/>
                                </th>
                                <th>
                                    <xsl:value-of
                                        select="current()/table[$table_number_grid]/tr[1]/th[4]"/>
                                </th>
                                <th>
                                    <xsl:value-of
                                        select="current()/table[$table_number_grid]/tr[1]/th[5]"/>
                                </th>
                            </tr>


                            <xsl:for-each
                                select="current()/table[$table_number_grid]/tr[position() &gt; 1]">
                                <!-- couleur alt, weapon__content_grey 2nd -->
                                <xsl:choose>
                                    <xsl:when test="position() mod 2 = 0">
                                        <tr class="weapon__content weapon__content_grey">
                                            <td>
                                                <xsl:value-of select="td[2]"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="td[3]"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="td[4]"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="td[5]"/>
                                            </td>
                                        </tr>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <tr class="weapon__content">
                                            <td>
                                                <xsl:value-of select="td[2]"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="td[3]"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="td[4]"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="td[5]"/>
                                            </td>
                                        </tr>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </div>


        </div>
    </xsl:template>


    <!-- plus utilisé integré dans le header spé -->
    <xsl:template name="show_vehicule_grid">
        <xsl:param name="table_number"/>
        <div class="tank__damage">

            <table class="tank__damage_table">
                <tr>
                    <td>
                        <xsl:value-of select="current()/table[$table_number]/tr[1]/th[2]"/>
                    </td>
                    <td>
                        <xsl:value-of select="current()/table[$table_number]/tr[1]/th[3]"/>
                    </td>
                    <td>
                        <xsl:value-of select="current()/table[$table_number]/tr[1]/th[4]"/>
                    </td>
                    <td>
                        <xsl:value-of select="current()/table[$table_number]/tr[1]/th[5]"/>
                    </td>
                </tr>
                <xsl:for-each select="current()/table[$table_number]/tr[position() &gt; 1]">
                    <!-- couleur alt, weapon__content_grey 2nd -->
                    <xsl:choose>
                        <xsl:when test="position() mod 2 = 0">
                            <tr class="weapon__content weapon__content_grey">
                                <td>
                                    <xsl:value-of select="td[2]"/>
                                </td>
                                <td>
                                    <xsl:value-of select="td[3]"/>
                                </td>
                                <td>
                                    <xsl:value-of select="td[4]"/>
                                </td>
                                <td>
                                    <xsl:value-of select="td[5]"/>
                                </td>
                            </tr>
                        </xsl:when>
                        <xsl:otherwise>
                            <tr class="weapon__content">
                                <td>
                                    <xsl:value-of select="td[2]"/>
                                </td>
                                <td>
                                    <xsl:value-of select="td[3]"/>
                                </td>
                                <td>
                                    <xsl:value-of select="td[4]"/>
                                </td>
                                <td>
                                    <xsl:value-of select="td[5]"/>
                                </td>
                            </tr>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </table>
        </div>
    </xsl:template>

    <xsl:template name="show_unit_weapons">
        <xsl:param name="table_number"/>
        <table class="weapon">
            <tr class="weapon__head">
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[1]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[2]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[3]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[4]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[5]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[6]"/>
                </td>
                <td>
                    <xsl:value-of select="current()/table[$table_number]/tr[1]/th[7]"/>
                </td>
            </tr>
            <xsl:for-each select="current()/table[$table_number]/tr[position() &gt; 1]">
                <!-- couleur alt, weapon__content_grey 2nd -->
                <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">
                        <tr class="weapon__content weapon__content_grey">
                            <td>
                                <xsl:value-of select="td[1]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[2]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[3]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[4]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[5]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[6]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[7]"/>
                            </td>
                        </tr>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr class="weapon__content">
                            <td>
                                <xsl:value-of select="td[1]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[2]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[3]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[4]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[5]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[6]"/>
                            </td>
                            <td>
                                <xsl:value-of select="td[7]"/>
                            </td>
                        </tr>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </table>
    </xsl:template>

    <xsl:template name="show_unit_abilities">
        <xsl:param name="table_number"/>
        <table class="content">
            <tr>
                <td>ABILITIES&#160;&#160;&#160;&#160;</td>
                <td>
                    <ul>
                        <xsl:for-each select="current()/table[$table_number]/tr[position() &gt; 1]">
                            <li>
                                <b><xsl:value-of select="td[1]"/> : </b>
                                <xsl:value-of select="td[2]"/>
                            </li>
                        </xsl:for-each>

                        <!-- aller chercher les regle spe pas dans l'unité... mais en pieds de list -->
                        <xsl:if test="current()/p[@class = 'rule-names']">
                            <xsl:variable name="rule_name"
                                select="current()/p[@class = 'rule-names']/span[2]"/>
                            <li>
                                <xsl:for-each select="//div[@class = 'summary']/p">
                                    <xsl:if test="contains(current(), $rule_name)">

                                        <xsl:copy-of select="current()"/>

                                    </xsl:if>
                                </xsl:for-each>

                            </li>
                        </xsl:if>
                    </ul>
                </td>
            </tr>

        </table>
    </xsl:template>

    <!-- pour les units sans abilites par exemple -->
    <xsl:template name="show_unit_empty_content">

        <div class="content"> </div>
    </xsl:template>

    <!--plus utilisé psy en footer-->
    <xsl:template name="show_unit_abilities_psy">
        <xsl:param name="table_number_abilities"/>
        <xsl:param name="table_number_psy"/>
        <!-- unit abilities -->
        <div class="content">
            <ul>
                <xsl:for-each
                    select="current()/table[$table_number_abilities]/tr[position() &gt; 1]">
                    <li>
                        <b><xsl:value-of select="td[1]"/> : </b>
                        <xsl:value-of select="td[2]"/>
                    </li>
                </xsl:for-each>
                <!-- psy abilities -->
                <xsl:for-each select="current()/table[$table_number_psy]/tr[position() &gt; 1]">
                    <li><b>, Psycher : </b> Cast / <b><xsl:value-of select="td[2]"/></b> Deny /
                                <b><xsl:value-of select="td[3]"/></b> Power Known / <b><xsl:value-of
                                select="td[4]"/></b>
                    </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>

    <xsl:template name="show_unit_abilities_order">
        <xsl:param name="table_number_abilities"/>
        <xsl:param name="table_number_order"/>
        <!-- unit abilities -->
        <div class="content">
            <ul>
                <xsl:for-each
                    select="current()/table[$table_number_abilities]/tr[position() &gt; 1]">
                    <li>
                        <b><xsl:value-of select="td[1]"/> : </b>
                        <xsl:value-of select="td[2]"/>
                    </li>
                </xsl:for-each>
                <!-- order abilities -->
                <xsl:for-each select="current()/table[$table_number_order]/tr[position() &gt; 1]">
                    <li>
                        <b><xsl:value-of select="td[1]"/> : </b>
                        <xsl:value-of select="td[2]"/>
                    </li>
                </xsl:for-each>
            </ul>
        </div>
    </xsl:template>

    <xsl:template name="show_unit_footer">
        <table class="footer">
            <tr>
                <td colspan="1">KEYWORDS</td>
                <td colspan="8">
                    <xsl:value-of select="descendant::span[@class = 'caps']"/>
                </td>
            </tr>
        </table>
    </xsl:template>

    <xsl:template name="show_unit_psy">
        <xsl:param name="table_number"/>

        <table class="content">
            <tbody>
                <xsl:for-each select="current()/table[$table_number]/tr[position() &gt; 1]">
                    <tr>
                        <td colspan="1">PSYKER</td>
                        <td colspan="8">Cast : <b><xsl:value-of select="td[2]"/></b> / Deny :
                                    <b><xsl:value-of select="td[3]"/></b> / Power Known :
                                    <b><xsl:value-of select="td[4]"/></b>
                        </td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>


    <!-- ne plus utiliser, template indé pour les psy, u sulp enfooter spe psy avec le contenu du li -->
    <xsl:template name="show_unit_psy_footer">
        <xsl:param name="table_number"/>

        <table class="psyker">
            <tbody>
                <xsl:for-each select="current()/table[$table_number]/tr[position() &gt; 1]">
                    <tr>
                        <td colspan="1">PSYKER</td>
                        <td colspan="8">Cast : <b><xsl:value-of select="td[2]"/></b> / Deny :
                                    <b><xsl:value-of select="td[3]"/></b> / Power Known :
                                    <b><xsl:value-of select="td[4]"/></b></td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>

        <table class="footer">
            <tr>
                <td colspan="1">KEYWORDS</td>
                <td colspan="8">
                    <xsl:value-of select="descendant::span[@class = 'caps']"/>


                </td>
            </tr>
        </table>
    </xsl:template>

</xsl:stylesheet>
