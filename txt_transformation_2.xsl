<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="text" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        Поръчка
        <xsl:for-each select="/orders/order">

            Номер: <xsl:value-of select="id"/>
            От: <xsl:call-template name="from"/>
            За: <xsl:call-template name="to"/>
            Обждане при доставка: <xsl:call-template name="should_call"/>
            Брой предмети: <xsl:call-template name="number_of_objects"/>
            Тежест: <xsl:call-template name="weight"/>
            Необходим е бус: <xsl:call-template name="req_van"/>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="from">
        <xsl:value-of select="from/company/address/district"/>; <xsl:value-of
            select="from/company/address/city/zip_code"/> - гр.<xsl:value-of
            select="from/company/address/city/name"/>, кв."<xsl:value-of
            select="from/company/address/city/neighbourhood"/>", ул."<xsl:value-of
            select="from/company/address/city/street/name"/>" н.<xsl:value-of
            select="from/company/address/city/street/number"/>
    </xsl:template>

    <xsl:template name="to">
        <xsl:value-of select="to/company/address/district"/>; <xsl:value-of
            select="to/company/address/city/zip_code"/> - гр.<xsl:value-of
            select="to/company/address/city/name"/>, кв."<xsl:value-of
            select="to/company/address/city/neighbourhood"/>", ул."<xsl:value-of
            select="to/company/address/city/street/name"/>" н.<xsl:value-of
            select="to/company/address/city/street/number"/>
    </xsl:template>

    <xsl:template name="should_call">
        <xsl:value-of select="details/freight/call_customer/@value"/>
    </xsl:template>

    <xsl:template name="number_of_objects">
        <xsl:value-of select="details/freight/quantity"/>
    </xsl:template>

    <xsl:template name="weight">
        <xsl:value-of
                select="details/freight/weight"/> <xsl:value-of
                select="details/freight/weight/@units"/>
    </xsl:template>

    <xsl:template name="req_van">
        <xsl:value-of select="details/freight/requires_van/@value"/>
    </xsl:template>

</xsl:stylesheet>