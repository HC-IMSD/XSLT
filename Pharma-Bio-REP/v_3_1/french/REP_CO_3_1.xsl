<?xml version="1.0" encoding="utf-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:param name="language" select="'eng'"/>
	<xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="X-UA-Compatible" content="IE=9"/>
				<style type="text/css">
<xsl:text disable-output-escaping="yes" >
html {
    font-family: sans-serif;
	font-size: 10px;
    -webkit-tap-highlight-color: transparent
    display: block;
    color: -internal-root-color;
}

body {
	background: #f9f9f9;
    line-height: 1.4375;
    color: #333;
    font-family: Helvetica, Arial, sans-serif;
    font-size: 16px;
    margin: 0;
}
, :after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.well {
    min-height: 20px;
    padding: 19px;
    margin-bottom: 20px;
    background-color: #f5f5f5;
    border: 1px solid #e3e3e3;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .05)
}

.well blockquote {
    border-color: #ddd;
    border-color: rgba(0, 0, 0, .15)
}

.well-lg {
    padding: 24px;
    border-radius: 6px
}

.well-sm {
    padding: 9px;
    border-radius: 3px
}
article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary {
    display: block
}
.panel {
    margin-bottom: 23px;
    background-color: #fff;
    border: 1px solid transparent;
    border-radius: 4px;
    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    box-shadow: 0 1px 1px rgba(0, 0, 0, .05)
}

.panel-body {
    padding: 15px
}

.panel-body:after, .panel-body:before {
    content: " ";
    display: table
}

.panel-body:after {
    clear: both
}

.panel-heading {
    padding: 10px 15px;
    border-bottom: 1px solid transparent;
    border-top-right-radius: 3px;
    border-top-left-radius: 3px
}

.panel-heading .dropdown .dropdown-toggle {
    color: inherit
}

.panel-title {
    margin-top: 0;
    margin-bottom: 0;
    font-size: 18px;
    color: inherit
}

.panel-title a {
    color: inherit
}

.panel-footer {
    padding: 10px 15px;
    background-color: #f5f5f5;
    border-top: 1px solid #ddd;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px
}

.panel .list-group, .panel .panel-collapse .list-group {
    margin-bottom: 0
}

.panel .list-group .list-group-item, .panel .panel-collapse .list-group .list-group-item {
    border-width: 1px 0;
    border-radius: 0
}

.panel .list-group:first-child .list-group-item:first-child, .panel .panel-collapse .list-group:first-child .list-group-item:first-child {
    border-top: 0;
    border-top-right-radius: 3px;
    border-top-left-radius: 3px
}

.panel .list-group:last-child .list-group-item:last-child, .panel .panel-collapse .list-group:last-child .list-group-item:last-child {
    border-bottom: 0;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px
}
.panel-default {
    border-color: #ddd
}
.panel-default .panel-heading {
    color: #333;
    background-color: #f5f5f5;
    border-color: #ddd
}

.panel-default  .panel-heading + .panel-collapse .panel-body {
    border-top-color: #ddd
}

.panel-default  .panel-heading .badge {
    color: #f5f5f5;
    background-color: #333
}

.panel-default  .panel-footer + .panel-collapse .panel-body {
    border-bottom-color: #ddd
}
.panel-primary {
    border-color: #2572b4
}
.panel-primary  .panel-heading {
    color: #fff;
    background-color: #2572b4;
    border-color: #2572b4
}

.panel-primary  .panel-heading + .panel-collapse .panel-body {
    border-top-color: #2572b4
}

.panel-primary  .panel-heading .badge {
    color: #2572b4;
    background-color: #fff
}

.panel-primary  .panel-footer + .panel-collapse .panel-body {
    border-bottom-color: #2572b4
}
.panel-title {
    margin-top: 0;
    margin-bottom: 0;
    font-size: 18px;
    color: inherit
}

.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
    font-family: Helvetica, Arial, sans-serif
}
.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
    font-weight: 700;
}
.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
    line-height: 1.1;
    color: inherit;
}
h1 {
    margin: .67em 0;
}

h1 {
    border-bottom: 1px solid #af3c43;
    font-size: 34px;
    margin-bottom: .2em;
    margin-top: 1.25em;
    padding-bottom: .2em
}
table {
    background-color: transparent
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
td, th {
    padding: 0
}
.row {
    margin-left: -15px;
    margin-right: -15px;
}

.row:after, .row:before {
    content: " ";
    display: table
}

.row:after {
    clear: both
}
.col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
    position: relative;
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
}

.col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
    float: left;
}

.col-xs-12 {
    width: 100%;
}
span.mouseHover:hover {
	border: 1px solid black;
}
.c-checkbox {
	border-style: solid;
	border-width: thin;
	font-size: xx-small;
	font-weight: 900;
	margin-left: 15px;
	margin-right: 15px;
	padding-left: 2px;
	vertical-align: 2px;
}
</xsl:text>
				</style>
			</head>
            <body>
				<xsl:if test="count(COMPANY_ENROL) &gt; 0"> <xsl:apply-templates select="COMPANY_ENROL"></xsl:apply-templates> </xsl:if>
			</body>
		</html>
	</xsl:template>
	
	<!-- Company Enrolment -->
	<xsl:template match="COMPANY_ENROL">
		<h1>Mod&#232;le de l'entreprise: Processus d'Inscription R&#233;glementaire (PIR) <xsl:if test="software_version != ''">(Version: <xsl:value-of select="software_version"/>)</xsl:if></h1>
		<div class="well well-sm" >
			<table border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;">
				<tr>
					<th style="text-align: center;font-weight:bold;">Statut d'inscription</th>
					<th style="text-align: center;font-weight:bold;">Version d'inscription</th>
					<th style="text-align: center;font-weight:bold;">Date  de la derni&#232;re enregistrement</th>
					<th style="text-align: center;font-weight:bold;">Numéro de la compagnie</th>
				</tr>
				<tr>
					<td style="text-align: center;"><span class="mouseHover"><xsl:call-template name="CapitalFirstLetter"><xsl:with-param name="value" select="application_type"/></xsl:call-template></span> </td>
					<td style="text-align: center;"><span class="mouseHover"><xsl:value-of select="enrolment_version" /></span> </td>
					<td style="text-align: center;"><span class="mouseHover"><xsl:value-of select="date_saved" /></span> </td>
					<td style="text-align: center;"><span class="mouseHover"><xsl:value-of select="company_id" /></span> </td>
				</tr>
			</table>
			<xsl:if test="reason_amend != ''">
			<div class="row">
				<div class="col-xs-12">
					<strong>Raison pour la modification:</strong>
				</div>
				<div class="col-xs-12" style="padding-left: 28px;">
					<xsl:value-of select="reason_amend"/>
				</div>
			</div>
			</xsl:if>
		</div>
		<section>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title">Inscription d'une entreprise r&#233;glemetaire</h2>
				</div>
				
				<div class="panel-body">
					<xsl:if test="dossier_type != ''">
					<div class="row">
						<div class="col-xs-10">
						<strong>Type de dossier:&#160;</strong>
						<span class="mouseHover"><xsl:call-template name="CapitalFirstLetter"><xsl:with-param name="value" select="dossier_type"/></xsl:call-template></span>
						</div>
					</div>
					</xsl:if>
					<section class="panel panel-default" >
							<div class="panel-heading">
								<h2 class="panel-title">Enregistrements des adresses</h2>
							</div>
							<div class="panel-body">
							<table border="1" cellspacing="2" cellpadding="2" style="width: 100%;word-wrap: break-word;">
								<tr>
									<td style="text-align: center;font-weight:bold;">Nom d’entreprise</td>
									<td style="text-align: center;font-weight:bold;">Numéro d'entreprise</td>
									<td style="text-align: center;font-weight:bold;">Information d'adresse</td>
									<td style="text-align: center;font-weight:bold;">Numéro de la compagnie de l'importateur</td>
									<td style="text-align: center;font-weight:bold;">Roles</td>
								</tr>
								<xsl:for-each select="address_record">
									<tr>
									<td style="padding-left:2px;"><span class="mouseHover"><xsl:value-of select="company_name"/></span></td>
									<td style="padding-left:2px;"><span class="mouseHover"><xsl:value-of select="business_number"/></span></td>
									<td style="padding-left:2px;"><xsl:call-template name="address"/></td>
									<td style="padding-left:2px;"><span class="mouseHover"><xsl:value-of select="importer_id"/></span></td>
									<td style="padding-left:2px;"><xsl:call-template name="addressRoles"/></td>
									</tr>
								</xsl:for-each>
							</table>
							</div>
					</section>
					<section class="panel panel-default" >
							<div class="panel-heading">
								<h2 class="panel-title">Information sur les représentants de la compagnie</h2>
							</div>
							<div class="panel-body">
							<table border="1" cellspacing="2" cellpadding="2" style="width: 100%;word-wrap: break-word;">
								<tr>
									<th style="text-align: center;font-weight:bold;">Repr&#233;sentative</th>
									<th style="text-align: center;font-weight:bold;">Contacter par</th>
									<th style="text-align: center;font-weight:bold;">Roles</th>
								</tr>
								<xsl:for-each select="contact_record">
									<tr>
										<td style="padding-left:2px;"><xsl:call-template name="representative"/></td>
										<td style="padding-left:2px;"><xsl:call-template name="contactBy"/></td>
										<td style="padding-left:2px;"><xsl:call-template name="contactRoles"/></td>
									</tr>
								</xsl:for-each>
							</table>
							</div>
					</section>
				</div>		
			</div>
		</section>
	</xsl:template>
	<xsl:template name="contactBy">
		<div class="oneLine">
			<div style="white-space:nowrap;"><strong style="width:15em;">Langue de correspondence:&#160;</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/language_correspondance"/></span></div>
			<div style="white-space:nowrap;"><strong style="width:6em;">T&#233;l&#233;phone:</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/phone_num"/></span></div>
			<div style="white-space:nowrap;"><strong style="width:6em;">Poste:&#160;</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/phone_ext"/></span></div>
			<div style="white-space:nowrap;"><strong style="width:6em;">Fax:&#160;</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/fax_num"/></span></div>
			<div style="white-space:nowrap;"><strong style="width:6em;">Courriel:&#160;</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/email"/></span></div>
			<div style="white-space:nowrap;"><strong style="width:6em;">Identificateur d'acheminement:&#160;</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/RoutingID"/></span></div>
		</div>
	</xsl:template>
	<xsl:template name="contactRoles">
		<dl>
		<xsl:if test="manufacturer = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="manufacturer"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Personne-ressource du fabricant / Promoteur</span>
		</dt>
		</xsl:if>
		<xsl:if test="mailing = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="mailing"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Personne ressource de l'annuelle / courrier r&#233;glementaire</span>
		</dt>
		</xsl:if>
		<xsl:if test="billing = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="billing"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Personne ressource de facturation</span>
		</dt>
		</xsl:if>
		<xsl:if test="rep_primary = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="rep_primary"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Personne-ressource principale pour le PIR</span>
		</dt>
		</xsl:if>
		<xsl:if test="rep_secondary = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="rep_secondary"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Personne-ressource suppl&#233;mentaire pour le PIR</span>
		</dt>
		</xsl:if>
		<xsl:if test="importer = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="importer"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Personne-ressource de importateur canadien</span>
		</dt>
		</xsl:if>
		</dl>
	</xsl:template>
	<xsl:template name="representative">
		
		<div style=""><strong style="width:6em;">Pr&#233;nom:&#160;</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/given_name"/></span></div>
		<div style="white-space:nowrap;"><strong style="width:6em;">Initiales:&#160;</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/initials"/></span></div>
		<div style=""><strong style="width:6em;">Nom de famille:&#160;</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/surname"/></span></div>
		<div style="white-space:nowrap;"><strong style="width:6em;">Titre:&#160;</strong><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_contact_details/job_title"/></span></div>
	</xsl:template>
	<xsl:template name="address">
		<div class="addressContainer">
			<div class="address">
				<span class="value mouseHover">
					<xsl:value-of select="./company_address_details/street_address"/>
				</span>
			</div>
			<div class="address nowrap">
				<span class="value mouseHover" style="font-weight:100;"><xsl:value-of select="company_address_details/city"/></span>, &#xA0;
				<span class="value mouseHover" style="font-weight:100;">
					<xsl:choose>
					<xsl:when test="(./company_address_details/country/@id = 'CAN') or (company_address_details/country/@id = 'USA')">
						<xsl:value-of select="company_address_details/province_lov"/>,
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="company_address_details/province_text"/>,
					</xsl:otherwise>
					</xsl:choose>
				</span>&#xA0;
				<span class="value mouseHover" style="font-weight:100;">
					<xsl:choose><xsl:when test="$language = 'fra'">
						<xsl:value-of select="company_address_details/country/@label_fr"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="company_address_details/country/@label_en"/>
					</xsl:otherwise>
					</xsl:choose>
				</span>&#xA0;
			</div>
			<div class="address">
				<span class="mouseHover" style="font-weight:100;"><xsl:value-of select="company_address_details/postal_code"/></span>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="addressRoles">
		<dl>
		<xsl:if test="manufacturer = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="manufacturer"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Adresse du fabricant / promoteur</span>
		</dt>
		</xsl:if>
		<xsl:if test="mailing = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="mailing"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Addresse pour l'annuelle / courrier r&#233;glementaire</span>
		</dt>
		</xsl:if>
		<xsl:if test="billing = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="billing"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Addresse de facturation</span>
		</dt>
		</xsl:if>
		<xsl:if test="importer = 'Y'">
		<dt>
			<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="importer"/></xsl:call-template>
			<span class="normalWeight mouseHover" style="font-weight:100;">Addresse de courrier canadien</span>
		</dt>
		</xsl:if>
		</dl>
	</xsl:template>
	<xsl:template name="CapitalFirstLetter">
		<xsl:param name="value" select="/.."/>
		<xsl:value-of select="translate(substring($value,1,1), $smallcase, $uppercase)"/>
		<xsl:value-of select="translate(substring($value,2), $uppercase, $smallcase)"/>
	</xsl:template>
	<xsl:template name="hp-checkbox">
		<xsl:param name="value" select="/.."/>
		<span class="c-checkbox">
		<xsl:choose>
			<xsl:when test="$value = 'Y'">
				X
			</xsl:when>
			<xsl:otherwise>
				&#160;&#160;
			</xsl:otherwise>
		</xsl:choose>
		</span>
	</xsl:template>
	<xsl:template name="converter">
		<xsl:param name="value" select="/.."/>
		<xsl:choose>
			<xsl:when test=" 'en' = $value">
				<xsl:value-of select="'English'"/>
			</xsl:when>
			<xsl:when test=" 'fr' = $value">
				<xsl:value-of select="'French'"/>
			</xsl:when>
			<xsl:when test=" 'SALUT_MR' = $value">
				<xsl:value-of select="'Mr.'"/>
			</xsl:when>
			<xsl:when test=" 'SALUT_MS' = $value">
				<xsl:value-of select="'Ms.'"/>
			</xsl:when>
			<xsl:when test=" 'SALUT_DR' = $value">
				<xsl:value-of select="'Dr.'"/>
			</xsl:when>
			<xsl:when test=" 'SALUT_MRS' = $value">
				<xsl:value-of select="'Mrs.'"/>
			</xsl:when>

		</xsl:choose>		
	</xsl:template>
</xsl:transform><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="no" externalpreview="yes" url="file:///c:/Users/hcuser/Downloads/draftrepco-0-2.xml" htmlbaseurl="" outputurl="file:///c:/SPM/test/company.html" processortype="saxon8" useresolver="yes"
		          profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=""
		          validateoutput="no" validator="internal" customvalidator="">
			<parameterValue name="cssFile" value="'file:///C:/Users/hcuser/git/XSLT/Pharma-Bio-REP/v_2_2/Style-Sheets/ip400.css'"/>
			<parameterValue name="labelFile" value="'file:///C:/Users/hcuser/git/XSLT/Pharma-Bio-REP/v_2_2/Style-Sheets/hp-ip400-labels_2_2.xml'"/>
			<advancedProp name="sInitialMode" value=""/>
			<advancedProp name="schemaCache" value="||"/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bSchemaAware" value="true"/>
			<advancedProp name="bGenerateByteCode" value="true"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="xsltVersion" value="2.0"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->