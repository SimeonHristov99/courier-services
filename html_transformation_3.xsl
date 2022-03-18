<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    /*-- reset --*/
                    html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr,
                    acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong,
                    sub, sup, tt, var, b, u, i, dl, dt, dd, ol, nav ul, nav li, fieldset, form, label, legend, table,
                    caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure,
                    figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio,
                    video {
                    margin: 0;
                    padding: 0;
                    border: 0;
                    font-size: 100%;
                    font: inherit;
                    vertical-align: baseline;
                    }

                    article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
                    display: block;
                    }

                    ol, ul {
                    list-style: none;
                    margin: 0px;
                    padding: 0px;
                    }

                    blockquote, q {
                    quotes: none;
                    }

                    blockquote:before, blockquote:after, q:before, q:after {
                    content: '';
                    content: none;
                    }

                    table {
                    border-collapse: collapse;
                    border-spacing: 0;
                    }

                    /*-- start editing from here --*/
                    a {
                    text-decoration: none;
                    }

                    .txt-rt {
                    text-align: right;
                    }

                    /* text align right */
                    .txt-lt {
                    text-align: left;
                    }

                    /* text align left */
                    .txt-center {
                    text-align: center;
                    }

                    /* text align center */
                    .float-rt {
                    float: right;
                    }

                    /* float right */
                    .float-lt {
                    float: left;
                    }

                    /* float left */
                    .clear {
                    clear: both;
                    }

                    /* clear float */
                    .pos-relative {
                    position: relative;
                    }

                    /* Position Relative */
                    .pos-absolute {
                    position: absolute;
                    }

                    /* Position Absolute */
                    .vertical-base {
                    vertical-align: baseline;
                    }

                    /* vertical align baseline */
                    .vertical-top {
                    vertical-align: top;
                    }

                    /* vertical align top */
                    nav.vertical ul li {
                    display: block;
                    }

                    /* vertical menu */
                    nav.horizontal ul li {
                    display: inline-block;
                    }

                    /* horizontal menu */
                    img {
                    max-width: 100%;
                    }

                    /*-- end reset --*/
                    body {
                    background: #76b852;
                    /* fallback for old browsers */
                    background: -webkit-linear-gradient(to top, #76b852, #8DC26F);
                    background: -moz-linear-gradient(to top, #76b852, #8DC26F);
                    background: -o-linear-gradient(to top, #76b852, #8DC26F);
                    background: linear-gradient(to top, #76b852, #8DC26F);
                    background-size: cover;
                    background-attachment: fixed;
                    font-family: 'Roboto', sans-serif;
                    }

                    h1 {
                    font-size: 3em;
                    text-align: center;
                    color: #fff;
                    font-weight: 100;
                    text-transform: capitalize;
                    letter-spacing: 4px;
                    font-family: 'Roboto', sans-serif;
                    }

                    /*-- main --*/
                    .main-w3layouts {
                    padding: 3em 0 1em;
                    }

                    .main-agileinfo {
                    width: 92%;
                    margin: 3em auto;
                    background: rgba(0, 0, 0, 0.18);
                    background-size: cover;
                    }

                    .agileits-top {
                    padding: 3em;
                    }

                    input[type="text"], input[type="email"], input[type="password"] {
                    font-size: 0.9em;
                    color: #fff;
                    font-weight: 100;
                    width: 94.5%;
                    display: block;
                    border: none;
                    padding: 0.8em;
                    border: solid 1px rgba(255, 255, 255, 0.37);
                    -webkit-transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
                    transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
                    background: -webkit-linear-gradient(top, rgba(255, 255, 255, 0) 96%, #fff 4%);
                    background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 96%, #fff 4%);
                    background-position: -800px 0;
                    background-size: 100%;
                    background-repeat: no-repeat;
                    color: #fff;
                    font-family: 'Roboto', sans-serif;
                    }

                    input.email, input.text.w3lpass {
                    margin: 2em 0;
                    }

                    .text:focus, .text:valid {
                    box-shadow: none;
                    outline: none;
                    background-position: 0 0;
                    }

                    .text:focus::-webkit-input-placeholder, .text:valid::-webkit-input-placeholder {
                    color: rgba(255, 255, 255, 0.7);
                    font-size: .9em;
                    -webkit-transform: translateY(-30px);
                    -moz-transform: translateY(-30px);
                    -o-transform: translateY(-30px);
                    -ms-transform: translateY(-30px);
                    transform: translateY(-30px);
                    visibility: visible !important;
                    }

                    ::-webkit-input-placeholder {
                    color: #fff;
                    font-weight: 100;
                    }

                    :-moz-placeholder {
                    /* Firefox 18- */
                    color: #fff;
                    }

                    ::-moz-placeholder {
                    /* Firefox 19+ */
                    color: #fff;
                    }

                    :-ms-input-placeholder {
                    color: #fff;
                    }

                    input[type="submit"] {
                    font-size: .9em;
                    color: #fff;
                    background: #76b852;
                    outline: none;
                    border: 1px solid #76b852;
                    cursor: pointer;
                    padding: 0.9em;
                    -webkit-appearance: none;
                    width: 100%;
                    margin: 2em 0;
                    letter-spacing: 4px;
                    }

                    input[type="submit"]:hover {
                    -webkit-transition: .5s all;
                    -moz-transition: .5s all;
                    -o-transition: .5s all;
                    -ms-transition: .5s all;
                    transition: .5s all;
                    background: #8DC26F;
                    }

                    .agileits-top p {
                    font-size: 2em;
                    color: #fff;
                    text-align: center;
                    letter-spacing: 1px;
                    font-weight: 300;
                    }

                    .agileits-top p a {
                    color: #fff;
                    -webkit-transition: .5s all;
                    -moz-transition: .5s all;
                    transition: .5s all;
                    font-weight: 400;
                    }

                    .agileits-top p a:hover {
                    color: #76b852;
                    }

                    @keyframes rippling {
                    50% {
                    border-left-color: #fff;
                    }

                    100% {
                    border-bottom-color: #fff;
                    border-left-color: #fff;
                    }
                    }

                    /*-- //checkbox --*/
                    /*-- copyright --*/
                    .colorlibcopy-agile {
                    margin: 2em 0 1em;
                    text-align: center;
                    }

                    .colorlibcopy-agile p {
                    font-size: .9em;
                    color: #fff;
                    line-height: 1.8em;
                    letter-spacing: 1px;
                    font-weight: 100;
                    }

                    .colorlibcopy-agile p a {
                    color: #fff;
                    transition: 0.5s all;
                    -webkit-transition: 0.5s all;
                    -moz-transition: 0.5s all;
                    -o-transition: 0.5s all;
                    -ms-transition: 0.5s all;
                    }

                    .colorlibcopy-agile p a:hover {
                    color: #000;
                    }

                    /*-- //copyright --*/
                    .wrapper {
                    position: relative;
                    overflow: hidden;
                    }

                    .colorlib-bubbles {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    z-index: -1;
                    }

                    .colorlib-bubbles li {
                    position: absolute;
                    list-style: none;
                    display: block;
                    width: 40px;
                    height: 40px;
                    background-color: rgba(255, 255, 255, 0.15);
                    bottom: -160px;
                    -webkit-animation: square 20s infinite;
                    -moz-animation: square 250s infinite;
                    -o-animation: square 20s infinite;
                    -ms-animation: square 20s infinite;
                    animation: square 20s infinite;
                    -webkit-transition-timing-function: linear;
                    -moz-transition-timing-function: linear;
                    -o-transition-timing-function: linear;
                    -ms-transition-timing-function: linear;
                    transition-timing-function: linear;
                    -webkit-border-radius: 50%;
                    -moz-border-radius: 50%;
                    -o-border-radius: 50%;
                    -ms-border-radius: 50%;
                    border-radius: 50%;
                    }

                    .colorlib-bubbles li:nth-child(1) {
                    left: 10%;
                    }

                    .colorlib-bubbles li:nth-child(2) {
                    left: 20%;
                    width: 80px;
                    height: 80px;
                    -webkit-animation-delay: 2s;
                    -moz-animation-delay: 2s;
                    -o-animation-delay: 2s;
                    -ms-animation-delay: 2s;
                    animation-delay: 2s;
                    -webkit-animation-duration: 17s;
                    -moz-animation-duration: 17s;
                    -o-animation-duration: 17s;
                    animation-duration: 17s;
                    }

                    .colorlib-bubbles li:nth-child(3) {
                    left: 25%;
                    -webkit-animation-delay: 4s;
                    -moz-animation-delay: 4s;
                    -o-animation-delay: 4s;
                    -ms-animation-delay: 4s;
                    animation-delay: 4s;
                    }

                    .colorlib-bubbles li:nth-child(4) {
                    left: 40%;
                    width: 60px;
                    height: 60px;
                    -webkit-animation-duration: 22s;
                    -moz-animation-duration: 22s;
                    -o-animation-duration: 22s;
                    -ms-animation-duration: 22s;
                    animation-duration: 22s;
                    background-color: rgba(255, 255, 255, 0.25);
                    }

                    .colorlib-bubbles li:nth-child(5) {
                    left: 70%;
                    }

                    .colorlib-bubbles li:nth-child(6) {
                    left: 80%;
                    width: 120px;
                    height: 120px;
                    -webkit-animation-delay: 3s;
                    -moz-animation-delay: 3s;
                    -o-animation-delay: 3s;
                    -ms-animation-delay: 3s;
                    animation-delay: 3s;
                    background-color: rgba(255, 255, 255, 0.2);
                    }

                    .colorlib-bubbles li:nth-child(7) {
                    left: 32%;
                    width: 160px;
                    height: 160px;
                    -webkit-animation-delay: 7s;
                    -moz-animation-delay: 7s;
                    -o-animation-delay: 7s;
                    -ms-animation-delay: 7s;
                    animation-delay: 7s;
                    }

                    .colorlib-bubbles li:nth-child(8) {
                    left: 55%;
                    width: 20px;
                    height: 20px;
                    -webkit-animation-delay: 15s;
                    -moz-animation-delay: 15s;
                    animation-delay: 15s;
                    -webkit-animation-duration: 40s;
                    -moz-animation-duration: 40s;
                    animation-duration: 40s;
                    }

                    .colorlib-bubbles li:nth-child(9) {
                    left: 25%;
                    width: 10px;
                    height: 10px;
                    -webkit-animation-delay: 2s;
                    animation-delay: 2s;
                    -webkit-animation-duration: 40s;
                    animation-duration: 40s;
                    background-color: rgba(255, 255, 255, 0.3);
                    }

                    .colorlib-bubbles li:nth-child(10) {
                    left: 90%;
                    width: 160px;
                    height: 160px;
                    -webkit-animation-delay: 11s;
                    animation-delay: 11s;
                    }

                    @-webkit-keyframes square {
                    0% {
                    -webkit-transform: translateY(0);
                    -moz-transform: translateY(0);
                    -o-transform: translateY(0);
                    -ms-transform: translateY(0);
                    transform: translateY(0);
                    }

                    100% {
                    -webkit-transform: translateY(-700px) rotate(600deg);
                    -moz-transform: translateY(-700px) rotate(600deg);
                    -o-transform: translateY(-700px) rotate(600deg);
                    -ms-transform: translateY(-700px) rotate(600deg);
                    transform: translateY(-700px) rotate(600deg);
                    }
                    }

                    @keyframes square {
                    0% {
                    -webkit-transform: translateY(0);
                    -moz-transform: translateY(0);
                    -o-transform: translateY(0);
                    -ms-transform: translateY(0);
                    transform: translateY(0);
                    }

                    100% {
                    -webkit-transform: translateY(-700px) rotate(600deg);
                    -moz-transform: translateY(-700px) rotate(600deg);
                    -o-transform: translateY(-700px) rotate(600deg);
                    -ms-transform: translateY(-700px) rotate(600deg);
                    transform: translateY(-700px) rotate(600deg);
                    }
                    }

                    /*-- responsive-design --*/
                    @media(max-width:1440px) {
                    input[type="text"], input[type="email"], input[type="password"] {
                    width: 94%;
                    }
                    }

                    @media(max-width:1366px) {
                    h1 {
                    font-size: 2.6em;
                    }

                    .agileits-top {
                    padding: 2.5em;
                    }

                    .main-agileinfo {
                    margin: 2em auto;
                    }

                    .main-agileinfo {
                    width: 36%;
                    }
                    }

                    @media(max-width:1280px) {
                    .main-agileinfo {
                    width: 40%;
                    }
                    }

                    @media(max-width:1080px) {
                    .main-agileinfo {
                    width: 46%;
                    }
                    }

                    @media(max-width:1024px) {
                    .main-agileinfo {
                    width: 49%;
                    }
                    }

                    @media(max-width:991px) {
                    h1 {
                    font-size: 2.4em;
                    }

                    .main-w3layouts {
                    padding: 2em 0 1em;
                    }
                    }

                    @media(max-width:900px) {
                    .main-agileinfo {
                    width: 58%;
                    }

                    input[type="text"], input[type="email"], input[type="password"] {
                    width: 93%;
                    }
                    }

                    @media(max-width:800px) {
                    h1 {
                    font-size: 2.2em;
                    }
                    }

                    @media(max-width:736px) {
                    .main-agileinfo {
                    width: 62%;
                    }
                    }

                    @media(max-width:667px) {
                    .main-agileinfo {
                    width: 67%;
                    }
                    }

                    @media(max-width:600px) {
                    .agileits-top {
                    padding: 2.2em;
                    }

                    input.email, input.text.w3lpass {
                    margin: 1.5em 0;
                    }

                    input[type="submit"] {
                    margin: 2em 0;
                    }

                    h1 {
                    font-size: 2em;
                    letter-spacing: 3px;
                    }
                    }

                    @media(max-width:568px) {
                    .main-agileinfo {
                    width: 75%;
                    }

                    .colorlibcopy-agile p {
                    padding: 0 2em;
                    }
                    }

                    @media(max-width:480px) {
                    h1 {
                    font-size: 1.8em;
                    letter-spacing: 3px;
                    }

                    .agileits-top {
                    padding: 1.8em;
                    }

                    input[type="text"], input[type="email"], input[type="password"] {
                    width: 91%;
                    }

                    .agileits-top p {
                    font-size: 0.9em;
                    }
                    }

                    @media(max-width:414px) {
                    h1 {
                    font-size: 1.8em;
                    letter-spacing: 2px;
                    }

                    .main-agileinfo {
                    width: 85%;
                    margin: 1.5em auto;
                    }

                    .text:focus, .text:valid {
                    background-position: 0 0px;
                    }

                    .wthree-text ul li, .wthree-text ul li:nth-child(2) {
                    display: block;
                    float: none;
                    }

                    .wthree-text ul li:nth-child(2) {
                    margin-top: 1.5em;
                    }

                    input[type="submit"] {
                    margin: 2em 0 1.5em;
                    letter-spacing: 3px;
                    }

                    input[type="submit"] {
                    margin: 2em 0 1.5em;
                    }

                    .colorlibcopy-agile {
                    margin: 1em 0 1em;
                    }
                    }

                    @media(max-width:384px) {
                    .main-agileinfo {
                    width: 88%;
                    }

                    .colorlibcopy-agile p {
                    padding: 0 1em;
                    }
                    }

                    @media(max-width:375px) {
                    .agileits-top p {
                    letter-spacing: 0px;
                    }
                    }

                    @media(max-width:320px) {
                    .main-w3layouts {
                    padding: 1.5em 0 0;
                    }

                    .agileits-top {
                    padding: 1.2em;
                    }

                    .colorlibcopy-agile {
                    margin: 0 0 1em;
                    }

                    input[type="text"], input[type="email"], input[type="password"] {
                    width: 89.5%;
                    font-size: 0.85em;
                    }

                    h1 {
                    font-size: 1.7em;
                    letter-spacing: 0px;
                    }

                    .main-agileinfo {
                    width: 92%;
                    margin: 1em auto;
                    }

                    .text:focus, .text:valid {
                    background-position: 0 0px;
                    }

                    input[type="submit"] {
                    margin: 1.5em 0;
                    padding: 0.8em;
                    font-size: .85em;
                    }

                    .colorlibcopy-agile p {
                    font-size: .85em;
                    }

                    .wthree-text label {
                    font-size: 0.85em;
                    }

                    .main-w3layouts {
                    padding: 1em 0 0;
                    }
                    }
                </style>
                <title>Куриерски услуги</title>
            </head>
            <body>
                <div class="main-w3layouts wrapper">

                    <xsl:for-each select="orders/order">

                        <h1>Код на поръчка:
                            <xsl:value-of select="id"/>
                        </h1>
                        <div class="main-agileinfo">
                            <div class="agileits-top">

                                <h1>За</h1>
                                <xsl:call-template name="to"/>

                                <h1>Лице за контакт</h1>
                                <xsl:call-template name="receiving_employee_name"/>

                                <p>Телефон(и)</p>
                                <xsl:call-template name="receiving_phones"/>

                                <p>Електронни пощи</p>
                                <xsl:call-template name="receiving_emails"/>

                                <h1>Данни за пратка</h1>
                                <xsl:call-template name="packet_data"/>

                            </div>
                        </div>

                    </xsl:for-each>

                    <div class="colorlibcopy-agile">
                        <p>Куриерски услуги 2021 (Показване на всички завършили поръчки)</p>
                    </div>

                    <ul class="colorlib-bubbles">
                        <li/>
                        <li/>
                        <li/>
                        <li/>
                        <li/>
                        <li/>
                        <li/>
                        <li/>
                        <li/>
                        <li/>
                    </ul>

                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="to">
        <p><xsl:call-template name="receiving_company"/></p>
        <p><xsl:call-template name="receiving_address"/></p>
        <p><xsl:call-template name="has_parking"/></p>
    </xsl:template>

    <xsl:template name="receiving_company">
        <xsl:value-of
                select="to/company/name"/> (<xsl:value-of
                select="to/company/@code"/>)
    </xsl:template>

    <xsl:template name="receiving_address">
        гр.<xsl:value-of
            select="to/company/address/city/name"/>, кв."<xsl:value-of
            select="to/company/address/city/neighbourhood"/>", ул."<xsl:value-of
            select="to/company/address/city/street/name"/>" н.<xsl:value-of
            select="to/company/address/city/street/number"/>
    </xsl:template>

    <xsl:template name="has_parking">
        <xsl:choose>
            <xsl:when test="to/company/address/parking/@available"><p>Разполага с паркинг</p></xsl:when>
            <xsl:otherwise><p/></xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="receiving_employee_name">
        <p><xsl:value-of
                select="to/company/employee/emp_name/first/."/>&#160;<xsl:value-of
                select="to/company/employee/emp_name/last"/></p>
    </xsl:template>

    <xsl:template name="receiving_phones">
        <xsl:for-each select="to/company/employee/phones/phone">
            <p>(+<xsl:value-of select="code/."/>) <xsl:value-of select="number/."/> (необходимо е известие: <xsl:value-of select="@notification"/>)</p>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="receiving_emails">
        <xsl:for-each select="to/company/employee/emails/email">
            <p><xsl:value-of select="."/> (необходимо е известие: <xsl:value-of select="@notification"/>)</p>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="packet_data">
        <xsl:call-template name="quantity"/>
        <xsl:call-template name="price"/>
        <xsl:call-template name="dimensions"/>
    </xsl:template>

    <xsl:template name="quantity">
        <p><xsl:value-of
                select="details/freight/weight"/>&#160;<xsl:value-of
                select="details/freight/weight/@units"/></p>
    </xsl:template>

    <xsl:template name="price">
        <p><xsl:value-of
                select="details/price/value"/>&#160;<xsl:value-of
                select="details/price/currency"/></p>
    </xsl:template>

    <xsl:template name="dimensions">
        <p><xsl:value-of
                select="details/freight/dimensions/width"/> x <xsl:value-of
                select="details/freight/dimensions/height"/>&#160;<xsl:value-of
                select="details/freight/dimensions/@units"/></p>
    </xsl:template>

</xsl:stylesheet>