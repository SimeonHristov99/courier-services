<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <companies>
            <xsl:for-each select="orders/order">
                <order id="{id}">
                    <sender>
                        <xsl:call-template name="sending_company_data"/>
                        <address><xsl:call-template name="sending_address"/></address>
                        <payed><xsl:call-template name="packet_price"/></payed>
                    </sender>
                    <receiver>
                        <xsl:call-template name="receiving_company_data"/>
                        <address><xsl:call-template name="receiving_address"/></address>
                    </receiver>
                </order>
            </xsl:for-each>
        </companies>
    </xsl:template>

    <xsl:template name="sending_company_data">
        <name>
            <xsl:value-of select="from/company/name"/>
        </name>
        <code>
            <xsl:value-of select="from/company/@code"/>
        </code>
    </xsl:template>

    <xsl:template name="sending_address">
        <xsl:value-of select="from/company/address/district"/>; <xsl:value-of
            select="from/company/address/city/zip_code"/> - гр.<xsl:value-of
            select="from/company/address/city/name"/>, кв."<xsl:value-of
            select="from/company/address/city/neighbourhood"/>", ул."<xsl:value-of
            select="from/company/address/city/street/name"/>" н.<xsl:value-of
            select="from/company/address/city/street/number"/>
    </xsl:template>

    <xsl:template name="packet_price">
        <xsl:value-of select="details/price/value"/> <xsl:value-of select="details/price/currency"/>
    </xsl:template>

    <xsl:template name="receiving_company_data">
        <name>
            <xsl:value-of select="to/company/name"/>
        </name>
        <code>
            <xsl:value-of select="to/company/@code"/>
        </code>
    </xsl:template>

    <xsl:template name="receiving_address">
        <xsl:value-of select="to/company/address/district"/>; <xsl:value-of
            select="to/company/address/city/zip_code"/> - гр.<xsl:value-of
            select="to/company/address/city/name"/>, кв."<xsl:value-of
            select="to/company/address/city/neighbourhood"/>", ул."<xsl:value-of
            select="to/company/address/city/street/name"/>" н.<xsl:value-of
            select="to/company/address/city/street/number"/>
    </xsl:template>

</xsl:stylesheet>