<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {
                    font-family: arial, sans-serif;
                    border-collapse: collapse;
                    width: 100%;
                    }

                    td, th {
                    border: 1px solid #dddddd;
                    text-align: left;
                    padding: 8px;
                    }

                    tr:nth-child(even) {
                    background-color: #dddddd;
                    }
                </style>
                <title>Куриерски услуги</title>
            </head>
            <body>

                <h2>Показване на всички завършили поръчки</h2>

                <table>
                    <tr>
                        <th>Дата</th>
                        <th>Час</th>
                        <th>Изисква Бус</th>
                        <th>Изпращач</th>
                        <th>От</th>
                        <th>Телефон</th>
                        <th>Адрес</th>
                        <th>Получател</th>
                        <th>За</th>
                        <th>Телефон</th>
                        <th>Адрес</th>
                    </tr>
                    <xsl:for-each select="orders/order">
                        <tr>
                            <td><xsl:call-template name="sending_date"/></td>
                            <td><xsl:call-template name="sending_time"/></td>
                            <td><xsl:call-template name="req_van"/></td>

                            <td><xsl:call-template name="sending_company"/></td>
                            <td><xsl:call-template name="sending_emp"/></td>
                            <td><xsl:call-template name="sending_phone"/></td>
                            <td><xsl:call-template name="sending_city"/></td>

                            <td><xsl:call-template name="receiving_company"/></td>
                            <td><xsl:call-template name="receiving_emp"/></td>
                            <td><xsl:call-template name="receiving_phone"/></td>
                            <td><xsl:call-template name="receiving_city"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="sending_date">
        <xsl:value-of
                select="details/pickoff/date/@year"/>/<xsl:value-of
            select="details/pickoff/date/@month"/>/<xsl:value-of
            select="details/pickoff/date/@day"/>
    </xsl:template>

    <xsl:template name="sending_time">
        <xsl:value-of
                select="details/pickoff/time/@hours"/>:<xsl:value-of
                select="details/pickoff/time/@minutes"/>
    </xsl:template>

    <xsl:template name="req_van">
        <xsl:value-of select="details/freight/requires_van/@value"/>
    </xsl:template>

    <xsl:template name="sending_company">
        <xsl:value-of select="from/company/name/."/>
    </xsl:template>

    <xsl:template name="sending_emp">
        <xsl:value-of
                select="from/company/employee/emp_name/first/."/>&#160;<xsl:value-of
                select="from/company/employee/emp_name/last/."/>
    </xsl:template>

    <xsl:template name="sending_phone">
        +<xsl:value-of select="from/company/employee/phones/phone/code/."/>&#160;<xsl:value-of
            select="from/company/employee/phones/phone/number/."/>
    </xsl:template>

    <xsl:template name="sending_city">
        <xsl:value-of select="from/company/address/city/name/."/>;
        <xsl:value-of
                select="from/company/address/city/street/name/."/>&#160;<xsl:value-of
            select="from/company/address/city/street/number/."/>
    </xsl:template>

    <xsl:template name="receiving_company">
        <xsl:value-of select="to/company/name/."/>
    </xsl:template>

    <xsl:template name="receiving_emp">
        <xsl:value-of select="to/company/employee/emp_name/first/."/>&#160;<xsl:value-of
            select="to/company/employee/emp_name/last/."/>
    </xsl:template>

    <xsl:template name="receiving_phone">
        +<xsl:value-of select="to/company/employee/phones/phone/code/."/>&#160;<xsl:value-of
            select="to/company/employee/phones/phone/number/."/>
    </xsl:template>

    <xsl:template name="receiving_city">
        <xsl:value-of select="to/company/address/city/name/."/>;
        <xsl:value-of
                select="to/company/address/city/street/name/."/>&#160;<xsl:value-of
            select="to/company/address/city/street/number/."/>
    </xsl:template>

</xsl:stylesheet>