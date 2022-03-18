<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    body{text-align:center;}
                    #ft{clear:both;}

                    /* 750 centered, and backward compatibility */
                    #doc,#doc2,#doc3,.yui-t1,.yui-t2,.yui-t3,.yui-t4,.yui-t5,.yui-t6,.yui-t7 {
                    margin:auto;text-align:left;
                    width:57.69em;*width:56.3em;min-width:750px;}
                    /* 950 centered */
                    #doc2 {
                    width:73.074em;*width:71.313em;min-width:950px;}
                    /* 100% with 10px viewport side matting */
                    #doc3 {
                    margin:auto 10px; /* not for structure, but so content doesn't bleed to edge */
                    width:auto;}

                    /* below required for all fluid grids; adjust widths and margins above accordingly */

                    /* to preserve source-order independence for Gecko */
                    .yui-b{position:relative;}
                    .yui-b{_position:static;} /* for IE

                    7 */
                    #yui-main .yui-b{position:static;}

                    #yui-main {width:100%;}
                    .yui-t1 #yui-main,
                    .yui-t2 #yui-main,
                    .yui-t3 #yui-main{float:right;margin-left:-25em;/* IE: preserve layout at narrow widths */}

                    .yui-t4 #yui-main,
                    .yui-t5 #yui-main,
                    .yui-t6 #yui-main{float:left;margin-right:-25em;/* IE: preserve layout at narrow widths */}

                    .yui-t1 .yui-b {
                    float:left;
                    width:12.3207em;*width:12.0106em;}
                    .yui-t1 #yui-main .yui-b{
                    margin-left:13.3207em;*margin-left:13.0106em;
                    }

                    .yui-t2 .yui-b {
                    float:left;
                    width:13.8456em;*width:13.512em;}
                    .yui-t2 #yui-main .yui-b {
                    margin-left:14.8456em;*margin-left:14.512em;
                    }

                    .yui-t3 .yui-b {
                    float:left;
                    width:23.0759em;*width:22.52em;}
                    .yui-t3 #yui-main .yui-b {
                    margin-left:24.0759em;*margin-left:23.52em;
                    }

                    .yui-t4 .yui-b {
                    float:right;
                    width:13.8456em;*width:13.512em;}
                    .yui-t4 #yui-main .yui-b {
                    margin-right:14.8456em;*margin-right:14.512em;
                    }

                    .yui-t5 .yui-b {
                    float:right;
                    width:18.4608em;*width:18.016em;}
                    .yui-t5 #yui-main .yui-b {
                    margin-right:19.4608em;*margin-right:19.016em;
                    }

                    .yui-t6 .yui-b {
                    float:right;
                    width:23.0759em;*width:22.52em;}
                    .yui-t6 #yui-main .yui-b {
                    margin-right:24.0759em;*margin-right:23.52em;
                    }

                    .yui-t7 #yui-main .yui-b {
                    display:block;margin:0 0 1em 0;
                    }
                    #yui-main .yui-b {float:none;width:auto;}
                    /* GRIDS (not TEMPLATES) */
                    .yui-g .yui-u,
                    .yui-g .yui-g,
                    .yui-gc .yui-u,
                    .yui-gc .yui-g .yui-u,
                    .yui-ge .yui-u,
                    .yui-gf .yui-u{float:right;display:inline;}
                    .yui-g div.first,
                    .yui-gc div.first,
                    .yui-gc div.first div.first,
                    .yui-gd div.first,
                    .yui-ge div.first,
                    .yui-gf div.first{float:left;}
                    .yui-g .yui-u,
                    .yui-g .yui-g{width:49.1%;}
                    .yui-g .yui-g .yui-u,
                    .yui-gc .yui-g .yui-u {width:48.1%;}
                    .yui-gb .yui-u,
                    .yui-gc .yui-u,
                    .yui-gd .yui-u{float:left;margin-left:2%;*margin-left:1.895%;width:32%;}
                    .yui-gb div.first,
                    .yui-gc div.first,
                    .yui-gd div.first{margin-left:0;}
                    .yui-gc div.first,
                    .yui-gd .yui-u{width:66%;}
                    .yui-gd div.first{width:32%;}
                    .yui-ge .yui-u{width:24%;}
                    .yui-ge div.first,
                    .yui-gf .yui-u{width:74.2%;}
                    .yui-gf div.first{width:24%;}
                    .yui-ge div.first{width:74.2%;}
                    #bd:after,
                    .yui-g:after,
                    .yui-gb:after,
                    .yui-gc:after,
                    .yui-gd:after,
                    .yui-ge:after,
                    .yui-gf:after{content:".";display:block;height:0;clear:both;visibility:hidden;}
                    #bd,
                    .yui-g,
                    .yui-gb,
                    .yui-gc,
                    .yui-gd,
                    .yui-ge,
                    .yui-gf{zoom:1;}


                    /* Basic Element Formatting */

                    #header{
                    height:100px;
                    background-color:#F3F2ED;
                    margin:0;
                    padding:0;
                    }

                    #header h1{
                    font-size:1em;
                    margin:0;
                    padding:10px;
                    }

                    #header h1 a{
                    color:#000000;
                    background-color:#F3F2ED;
                    }

                    .content{
                    height:300px;
                    background:#CCC8B3;
                    border-top:#FFFFFF 2px solid;
                    margin:0;
                    padding:0;
                    }

                    #secondary{
                    height:300px;
                    background:#F6F0E0;
                    border-top:#FFFFFF 2px solid;
                    margin:0;
                    padding:0;
                    }

                    #secondaryFull{
                    height:50px;
                    background-color:#CFB59F;
                    border-top:#FFFFFF 2px solid;
                    margin:0;
                    padding:0;
                    }

                    #footer{
                    height:100px;
                    background:#BFBD93;
                    border-top:#FFFFFF 2px solid;
                    margin:0;
                    padding:0;
                    }
                </style>
                <title>Куриерски услуги</title>
            </head>
            <body>

                <xsl:for-each select="orders/order">

                    <div id="doc" class="yui-t7">
                        <div id="hd">
                            <div id="header">
                                <h1>Поръчка номер: <xsl:value-of select="id"/></h1>
                            </div>
                        </div>
                        <div id="bd">
                            <div id="yui-main">
                                <div class="yui-b">
                                    <div class="yui-gc">
                                        <div class="yui-u first">
                                            <div class="content">

                                                <p><em>От</em></p>
                                                <xsl:call-template name="from"/>

                                            </div>
                                        </div>
                                        <div class="yui-u">
                                            <div class="content">

                                                <p><em>Допълнителна информация</em></p>
                                                <xsl:call-template name="details"/>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="yui-b">
                                <div id="secondary">

                                    <p><em>За</em></p>
                                    <xsl:call-template name="to"/>

                                </div>
                            </div>
                        </div>
                        <div id="ft">
                            <div id="footer">

                                <em>Бележки:</em>
                                <xsl:call-template name="sending_note"/>
                                <xsl:call-template name="receiving_note"/>

                            </div>
                        </div>
                    </div>

                    <br/>
                    <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="from">
        <p><xsl:call-template name="sending_company_name"/></p>
        <p>Адрес: <xsl:call-template name="sending_address"/></p>
        <p>Изпраща: <xsl:call-template name="sending_employee_name"/></p>
        <p>Телефон: <xsl:call-template name="sending_phone"/></p>
        <p>Електронна поща: <xsl:call-template name="sending_email"/></p>
    </xsl:template>

    <xsl:template name="sending_company_name">
        <xsl:value-of select="from/company/name"/>
    </xsl:template>

    <xsl:template name="sending_address">
        <xsl:value-of
                select="from/company/address/district"/>; кв."<xsl:value-of
                select="from/company/address/city/neighbourhood"/>", ул."<xsl:value-of
                select="from/company/address/city/street/name"/>" н.<xsl:value-of
                select="from/company/address/city/street/number"/>
    </xsl:template>

    <xsl:template name="sending_employee_name">
        <xsl:value-of
                select="from/company/employee/emp_name/first/."/>&#160;<xsl:value-of
                select="from/company/employee/emp_name/last/."/>
    </xsl:template>

    <xsl:template name="sending_phone">
        (+<xsl:value-of
            select="from/company/employee/phones/phone/code/."/>) <xsl:value-of
            select="from/company/employee/phones/phone/number/."/>
    </xsl:template>

    <xsl:template name="sending_email">
        <xsl:value-of select="from/company/employee/emails/email/."/>
    </xsl:template>

    <xsl:template name="in_office_at">
        <xsl:value-of
                select="details/pickoff/date/@day"/>-<xsl:value-of
                select="details/pickoff/date/@month"/>-<xsl:value-of
                select="details/pickoff/date/@year"/>; <xsl:value-of
                select="details/pickoff/time/@hours"/>:<xsl:value-of
                select="details/pickoff/time/@minutes"/> часа
    </xsl:template>

    <xsl:template name="delivered_to">
        <xsl:value-of
                select="details/dropoff/date/@day"/>-<xsl:value-of
                select="details/dropoff/date/@month"/>-<xsl:value-of
                select="details/dropoff/date/@year"/>; <xsl:value-of
                select="details/dropoff/time/@hours"/>:<xsl:value-of
                select="details/dropoff/time/@minutes"/> часа
    </xsl:template>

    <xsl:template name="quantity">
        <xsl:value-of select="details/freight/quantity"/>
    </xsl:template>

    <xsl:template name="weight">
        <xsl:value-of
                select="details/freight/weight"/>&#160;<xsl:value-of
                select="details/freight/weight/@units"/>
    </xsl:template>

    <xsl:template name="details">
        <p>Приета: <xsl:call-template name="in_office_at"/></p>
        <p>Доставена: <xsl:call-template name="delivered_to"/></p>
        <p>Брой предмети: <xsl:call-template name="quantity"/></p>
        <p>Тегло: <xsl:call-template name="weight"/></p>
    </xsl:template>

    <xsl:template name="to">
        <p><xsl:call-template name="receiving_company_name"/></p>
        <p>Адрес: <xsl:call-template name="receiving_address"/></p>
        <p>Получава: <xsl:call-template name="receiving_emp"/></p>
        <p>Телефон: <xsl:call-template name="receiving_phone"/></p>
        <p>Електронна поща: <xsl:call-template name="receiving_email"/></p>
    </xsl:template>

    <xsl:template name="receiving_company_name">
        <xsl:value-of select="to/company/name"/>
    </xsl:template>

    <xsl:template name="receiving_address">
        <xsl:value-of
                select="to/company/address/district"/>; <xsl:value-of
                select="to/company/address/city/zip_code"/> - гр.<xsl:value-of
                select="to/company/address/city/name"/>, кв."<xsl:value-of
                select="to/company/address/city/neighbourhood"/>", ул."<xsl:value-of
                select="to/company/address/city/street/name"/>" н.<xsl:value-of
                select="to/company/address/city/street/number"/>
    </xsl:template>

    <xsl:template name="receiving_emp">
        <xsl:value-of
                select="to/company/employee/emp_name/first/."/>&#160;<xsl:value-of
                select="to/company/employee/emp_name/last/."/>
    </xsl:template>

    <xsl:template name="receiving_phone">
        (+<xsl:value-of
            select="to/company/employee/phones/phone/code/."/>) <xsl:value-of
            select="to/company/employee/phones/phone/number/."/>
    </xsl:template>

    <xsl:template name="receiving_email">
        <xsl:value-of select="to/company/employee/emails/email/."/>
    </xsl:template>

    <xsl:template name="sending_note">
        <p>
            <xsl:call-template name="sending_employee_name"/>:<xsl:choose>
            <xsl:when test="from/note">&#160;<xsl:value-of select="from/note"/></xsl:when>
            <xsl:otherwise> Няма</xsl:otherwise>
            </xsl:choose>
        </p>
    </xsl:template>

    <xsl:template name="receiving_note">
        <p>
            <xsl:call-template name="receiving_emp_name"/>:<xsl:choose>
            <xsl:when test="to/note">&#160;<xsl:value-of select="to/note"/></xsl:when>
            <xsl:otherwise> Няма</xsl:otherwise>
        </xsl:choose>
        </p>
    </xsl:template>

    <xsl:template name="receiving_emp_name">
        <xsl:value-of
                select="to/company/employee/emp_name/first/."/>&#160;<xsl:value-of
                select="to/company/employee/emp_name/last/."/>
    </xsl:template>

</xsl:stylesheet>