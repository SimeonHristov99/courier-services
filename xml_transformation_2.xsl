<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <packets>
            <xsl:for-each select="orders/order">
                <packet id="{id}">

                    <sender>
                        <company><xsl:call-template name="company_data"/></company>
                        <address><xsl:call-template name="get_address"/></address>
                        <has_parking><xsl:call-template name="can_park"/></has_parking>
                        <contact><xsl:call-template name="sending_emp_name"/></contact>
                    </sender>

                    <accepted>
                        <time><xsl:call-template name="get_time_acc"/></time>
                        <date><xsl:call-template name="get_date_acc"/></date>
                    </accepted>

                    <delivered>
                        <time><xsl:call-template name="get_time_del"/></time>
                        <date><xsl:call-template name="get_date_del"/></date>
                    </delivered>

                    <xsl:call-template name="details"/>
                </packet>
            </xsl:for-each>
        </packets>
    </xsl:template>

    <xsl:template name="get_address">гр.<xsl:value-of
            select="to/company/address/city/name"/>, кв."<xsl:value-of
            select="to/company/address/city/neighbourhood"/>", ул."<xsl:value-of
            select="to/company/address/city/street/name"/>" н.<xsl:value-of
            select="to/company/address/city/street/number"/>
    </xsl:template>

    <xsl:template name="can_park">
        <xsl:choose>
            <xsl:when test="to/company/address/parking/@available">Да</xsl:when>
            <xsl:otherwise>Не</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="company_data">
        <name>
            <xsl:value-of select="to/company/name"/>
        </name>
        <EIK>
            <xsl:value-of select="to/company/@code"/>
        </EIK>
    </xsl:template>

    <xsl:template name="sending_emp_name">
        <xsl:value-of
                select="to/company/employee/emp_name/first/."/><xsl:value-of
            select="to/company/employee/emp_name/last"/>
    </xsl:template>

    <xsl:template name="get_time_acc">
        <hours><xsl:value-of select="details/pickoff/time/@hours"/></hours>
        <minutes><xsl:value-of select="details/pickoff/time/@minutes"/></minutes>
    </xsl:template>

    <xsl:template name="get_date_acc">
        <xsl:value-of select="details/pickoff/date/@day"/>/<xsl:value-of
            select="details/pickoff/date/@month"/>/<xsl:value-of
            select="details/pickoff/date/@year"/>
    </xsl:template>

    <xsl:template name="get_time_del">
        <hours><xsl:value-of select="details/dropoff/time/@hours"/></hours>
        <minutes><xsl:value-of select="details/dropoff/time/@minutes"/></minutes>
    </xsl:template>

    <xsl:template name="get_date_del">
        <xsl:value-of select="details/dropoff/date/@day"/>/<xsl:value-of
            select="details/dropoff/date/@month"/>/<xsl:value-of
            select="details/dropoff/date/@year"/>
    </xsl:template>

    <xsl:template name="get_weight">
        <data><xsl:value-of select="details/freight/weight"/></data>
        <units><xsl:value-of select="details/freight/weight/@units"/></units>
    </xsl:template>

    <xsl:template name="price_info">
        <data><xsl:value-of select="details/price/value"/></data>
        <units><xsl:value-of select="details/price/currency"/></units>
    </xsl:template>

    <xsl:template name="size_info">
        <data>
            <length>
                <xsl:value-of select="details/freight/dimensions/width"/>
            </length>

            <height>
                <xsl:value-of select="details/freight/dimensions/height"/>
            </height>
        </data>
        <units>
            <xsl:value-of select="details/freight/dimensions/@units"/>
        </units>
    </xsl:template>

    <xsl:template name="details">
        <number_of_objects>
            <xsl:value-of select="details/freight/quantity"/>
        </number_of_objects>

        <weight><xsl:call-template name="get_weight"/></weight>

        <priority>
            <xsl:value-of select="details/price/@level"/>
        </priority>

        <total_price><xsl:call-template name="price_info"/></total_price>

        <size><xsl:call-template name="size_info"/></size>
    </xsl:template>

</xsl:stylesheet>