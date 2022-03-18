<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <style>
                    * {
                    padding: 0;
                    margin: 0;
                    }

                    body {
                    font-family: Arial, Helvetica, sans-serif;
                    font-size: 13px;
                    }

                    #wrapper {
                    margin: 0 auto;
                    width: 922px;
                    }

                    #faux {
                    background: url(.faux-2-3-col.gif);
                    margin-bottom: 10px;
                    overflow: auto;
                    width: 100%
                    }

                    #header {
                    color: #333;
                    width: 902px;
                    padding: 10px;
                    height: 100px;
                    margin: 10px 0px 0px 0px;
                    background: #D1DBDB;
                    }

                    #navigation {
                    color: #333;
                    padding: 10px;
                    margin: 0px 0px 0px 0px;
                    background: #ABBEBE;
                    }

                    #leftcolumn {
                    display: inline;
                    color: #333;
                    margin: 10px;
                    padding: 0;
                    width: 195px;
                    float: left;
                    }

                    #content {
                    float: left;
                    color: #333;
                    margin: 10px 13px;
                    padding: 0;
                    width: 460px;
                    display: inline;
                    position: relative;
                    }

                    #rightcolumn {
                    display: inline;
                    position: relative;
                    color: #333;
                    margin: 10px 10px 10px 0px;
                    padding: 0;
                    width: 195px;
                    float: right;
                    }

                    .clear {
                    clear: both;
                    background: none;
                    }
                </style>
                <title>Куриерски услуги</title>
            </head>
            <body>
                <div id="wrapper">
                    <div id="header">
                        <h1>Показване на всички завършени поръчки</h1>
                    </div>

                    <xsl:for-each select="orders/order">

                        <div id="navigation">
                            <h4>Бележки</h4>
                            <xsl:call-template name="get_notes"/>
                        </div>
                        <div id="faux">
                            <div id="leftcolumn">
                                <h1>От</h1>
                                <xsl:call-template name="from"/>
                            </div>
                            <div id="content">
                                <h1>Детайли за пратка номер <xsl:value-of select="id"/></h1>

                                <xsl:call-template name="get_details"/>
                            </div>
                            <div id="rightcolumn">
                                <h1>За</h1>
                                <xsl:call-template name="to"/>
                            </div>
                        </div>

                    </xsl:for-each>

                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="from">
        <p style="margin:8px 0;">
            <xsl:call-template name="sending_company_name"/> (<xsl:call-template name="sending_employee_name"/>)
        </p>

        <p style="margin:8px 0;">
            Телефон: <xsl:call-template name="sending_emp_phone"/>
        </p>
    </xsl:template>

    <xsl:template name="get_notes">
        <xsl:call-template name="sending_note"/>
        <xsl:call-template name="receiving_note"/>
    </xsl:template>

    <xsl:template name="sending_note">
        <p style="margin:8px 0;">
            <xsl:call-template name="sending_employee_name"/>:<xsl:choose>
            <xsl:when test="from/note">&#160;<xsl:value-of select="from/note"/></xsl:when>
            <xsl:otherwise> Няма</xsl:otherwise>
        </xsl:choose>
        </p>
    </xsl:template>

    <xsl:template name="receiving_note">
        <p style="margin:8px 0;">
            <xsl:call-template name="receiving_emp_name"/>:<xsl:choose>
            <xsl:when test="to/note">&#160;<xsl:value-of select="to/note"/></xsl:when>
            <xsl:otherwise> Няма</xsl:otherwise>
            </xsl:choose>
        </p>
    </xsl:template>

    <xsl:template name="sending_employee_name">
        <xsl:value-of
                select="from/company/employee/emp_name/first/."/>&#160;<xsl:value-of
                select="from/company/employee/emp_name/last/."/>
    </xsl:template>

    <xsl:template name="receiving_emp_name">
        <xsl:value-of select="to/company/employee/emp_name/first/."/>&#160;<xsl:value-of
            select="to/company/employee/emp_name/last/."/>
    </xsl:template>

    <xsl:template name="sending_company_name">
        <xsl:value-of select="from/company/name"/>
    </xsl:template>

    <xsl:template name="sending_emp_phone">
        +<xsl:value-of
            select="from/company/employee/phones/phone/code/."/>&#160;<xsl:value-of
            select="from/company/employee/phones/phone/number/."/>
    </xsl:template>

    <xsl:template name="receiving_company_name">
        <xsl:value-of select="to/company/name"/>
    </xsl:template>

    <xsl:template name="receiving_emp_phone">
        +<xsl:value-of
            select="to/company/employee/phones/phone/code/."/>&#160;<xsl:value-of
            select="to/company/employee/phones/phone/number/."/>
    </xsl:template>

    <xsl:template name="get_details">
        <xsl:call-template name="in_office_at"/>
        <xsl:call-template name="delivered_to"/>
        <xsl:call-template name="quantity"/>
        <xsl:call-template name="priority"/>
        <xsl:call-template name="price"/>
        <xsl:call-template name="signature"/>
        <xsl:call-template name="dimensions"/>
        <xsl:call-template name="vehicle"/>
        <xsl:call-template name="made_call"/>
        <xsl:call-template name="is_food"/>
    </xsl:template>

    <xsl:template name="in_office_at">
        <p style="margin:8px 0;">
            Приета в <xsl:value-of
                select="details/pickoff/time/@hours"/>:<xsl:value-of
                select="details/pickoff/time/@minutes"/> часа (<xsl:value-of
                select="details/pickoff/date/@day"/>-<xsl:value-of
                select="details/pickoff/date/@month"/>-<xsl:value-of
                select="details/pickoff/date/@year"/>).
        </p>
    </xsl:template>

    <xsl:template name="delivered_to">
        <p style="margin:8px 0;">
            Доставена в <xsl:value-of
                select="details/dropoff/time/@hours"/>:<xsl:value-of
                select="details/dropoff/time/@minutes"/> часа (<xsl:value-of
                select="details/dropoff/date/@day"/>-<xsl:value-of
                select="details/dropoff/date/@month"/>-<xsl:value-of
                select="details/dropoff/date/@year"/>).
        </p>
    </xsl:template>

    <xsl:template name="quantity">
        <p style="margin:8px 0;">
            Общо <xsl:value-of select="details/freight/quantity"/> предмет(а) с тегло <xsl:value-of
                select="details/freight/weight"/>&#160;<xsl:value-of
                select="details/freight/weight/@units"/>.
        </p>
    </xsl:template>

    <xsl:template name="priority">
        <p style="margin:8px 0;">
            Приоритет = <xsl:value-of select="details/price/@level"/>
        </p>
    </xsl:template>

    <xsl:template name="price">
        <p style="margin:8px 0;">
            Цена = <xsl:value-of select="details/price/value"/>&#160;<xsl:value-of
                select="details/price/currency"/>
        </p>
    </xsl:template>

    <xsl:template name="signature">
        <p style="margin:8px 0;">
            <xsl:choose>
                <xsl:when test="details/verification/signature">Успешно получен подпис!</xsl:when>
                <xsl:otherwise>Не се изисква подпис!</xsl:otherwise>
            </xsl:choose>
        </p>
    </xsl:template>

    <xsl:template name="dimensions">
        <p style="margin:8px 0;">
            Пратката е широка <xsl:value-of select="details/freight/dimensions/width"/>&#160;<xsl:value-of
                select="details/freight/dimensions/@units"/> и висока <xsl:value-of
                select="details/freight/dimensions/height"/>&#160;<xsl:value-of
                select="details/freight/dimensions/@units"/>.
        </p>
    </xsl:template>

    <xsl:template name="vehicle">
        <p style="margin:8px 0;">
            <xsl:choose>
                <xsl:when test="details/freight/requires_van/@value='Да'">Пренесена чрез бус.</xsl:when>
                <xsl:otherwise>Пренесена чрез кола.</xsl:otherwise>
            </xsl:choose>
        </p>
    </xsl:template>

    <xsl:template name="made_call">
        <p style="margin:8px 0;">
            <xsl:choose>
                <xsl:when test="details/freight/call_customer/@value='Да'">Направено обаждане при доставка.</xsl:when>
                <xsl:otherwise> </xsl:otherwise>
            </xsl:choose>
        </p>
    </xsl:template>

    <xsl:template name="is_food">
        <p style="margin:8px 0;">
            <xsl:choose>
                <xsl:when test="details/freight/food/@value='Да'">Пренасяне на храна!</xsl:when>
                <xsl:otherwise> </xsl:otherwise>
            </xsl:choose>
        </p>
    </xsl:template>

    <xsl:template name="to">
        <p style="margin:8px 0;">
            <xsl:call-template name="receiving_company_name"/> (<xsl:call-template name="receiving_emp_name"/>)
        </p>

        <p style="margin:8px 0;">
            Телефон: <xsl:call-template name="receiving_emp_phone"/>
        </p>
    </xsl:template>

</xsl:stylesheet>