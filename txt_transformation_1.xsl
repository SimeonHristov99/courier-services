<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="text" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        Всички поръчки
        <xsl:for-each select="/orders/order">

            Номер: <xsl:value-of select="id/."/>
            Подател: <xsl:call-template name="from"/>
            Бележка (подател): <xsl:call-template name="sender_note"/>
            Получател: <xsl:call-template name="to"/>
            Бележка (получател): <xsl:call-template name="receiver_note"/>
            Цена: <xsl:call-template name="price"/>
            Приета: <xsl:call-template name="in_office_at"/>
            Доставена: <xsl:call-template name="delivered"/>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="from">
        <xsl:value-of
                select="from/company/employee/emp_name/first/./."/>&#160;<xsl:value-of
                select="from/company/employee/emp_name/last/."/> (<xsl:value-of
                select="from/company/name/."/>)
    </xsl:template>

    <xsl:template name="sender_note">
        <xsl:choose>
            <xsl:when test="from/note"><xsl:value-of select="from/note/."/></xsl:when>
            <xsl:otherwise>Няма</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="to">
        <xsl:value-of
                select="to/company/employee/emp_name/first/./."/>&#160;<xsl:value-of
            select="to/company/employee/emp_name/last/."/> (<xsl:value-of select="to/company/name/."/>)
    </xsl:template>

    <xsl:template name="receiver_note">
        <xsl:choose>
            <xsl:when test="to/note"><xsl:value-of select="to/note/."/></xsl:when>
            <xsl:otherwise>Няма</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="price">
        <xsl:value-of select="details/price/value/."/>&#160;<xsl:value-of select="details/price/currency/."/>
    </xsl:template>

    <xsl:template name="in_office_at">
        <xsl:value-of
                select="details/pickoff/time/@hours/."/>:<xsl:value-of
                select="details/pickoff/time/@minutes/."/>
    </xsl:template>

    <xsl:template name="delivered">
        <xsl:value-of
                select="details/dropoff/time/@hours/."/>:<xsl:value-of
                select="details/dropoff/time/@minutes/."/>
    </xsl:template>

</xsl:stylesheet>