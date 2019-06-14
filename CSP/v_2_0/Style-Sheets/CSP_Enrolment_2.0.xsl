<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
	<xsl:param name="labelFile" select="'./hp-ip400-labels.xml'"/>
	<xsl:param name="cssFile" select="'./ip400.css'"/>
	<xsl:param name="language" select="'eng'"/>
	<xsl:variable name="labelLookup" select="document($labelFile)"/>
	<xsl:variable name="cssLookup" select="document($cssFile)"/>
	<xsl:template match="/">
		<html>
			<head>
				<meta http-equiv="X-UA-Compatible" content="IE=9"/>
				<style type="text/css">
					<xsl:value-of select="$cssLookup/css"/>
				</style>
			</head>
            <body>
				<xsl:if test="count(CERTIFICATE_SUPPLEMENTARY_PROTECTION) &gt; 0"> <xsl:apply-templates select="CERTIFICATE_SUPPLEMENTARY_PROTECTION"></xsl:apply-templates> </xsl:if>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="CERTIFICATE_SUPPLEMENTARY_PROTECTION">
		<h1>Certificate of Supplementary Protection (CSP) Application Form</h1>
		<div class="well well-sm" >
			<TABLE border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;">
				<TR>
					<TD style="text-align: center;font-weight:bold;"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'ENROL_VERSION'"/></xsl:call-template></TD>
					<TD style="text-align: center;font-weight:bold;"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'COMPANY_ID'"/></xsl:call-template></TD>
					<TD style="text-align: center;font-weight:bold;"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'DateLastSaved'"/></xsl:call-template></TD>
					<TD style="text-align: center;font-weight:bold;"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'DateReceived'"/></xsl:call-template></TD>
					<TD style="text-align: center;font-weight:bold;"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'Application_Number'"/></xsl:call-template></TD>
				</TR>
				<TR>
					<TD style="text-align: center;"> <span class="mouseHover"><xsl:apply-templates select="enrolment_version" /></span> </TD>
					<TD style="text-align: center;"> <span class="mouseHover"><xsl:apply-templates select="health_canada_only/company_id" /></span> </TD>
					<TD style="text-align: center;"> <span class="mouseHover"><xsl:apply-templates select="date_saved" /></span> </TD>
					<TD style="text-align: center;"> <span class="mouseHover"><xsl:apply-templates select="health_canada_only/date_received" /></span> </TD>
					<TD style="text-align: center;"> <span class="mouseHover"><xsl:apply-templates select="health_canada_only/application_id" /></span> </TD>
				</TR>
			</TABLE>
		</div>
		<div class="well well-sm">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'HC_NOTES'"/></xsl:call-template></h2>
				</div>
				<div class="panel-body">										
			<div class="well" >
					<div class="row">
						<div class="col-xs-12">
							<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'NOTES'"/></xsl:call-template></label>
							<div class="col-xs-12"><span class="mouseHover"><xsl:value-of select="health_canada_only/hc_notes"/></span></div>
						</div>
					</div>
					<div class="row">
						<br />
					</div>
			</div>
				</div>
			</div>
		</div>
		<div class="well well-sm">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'CSP_INFO'"/></xsl:call-template></h2>
				</div>
				<div class="panel-body">										
					<div class="well" >
						<div class="row panel-success">
							<h3 class="panel-heading">1. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'APPLICATION_INFO'"/></xsl:call-template></h3>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'APPLICATION_NAME'"/></xsl:call-template></label>
								<div class="col-xs-12"><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="applicant/applicant_name"/></span></div>
							</div>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'AGENT_NAME'"/></xsl:call-template></label>
								<div class="col-xs-12"><span class="mouseHover" style="font-weight:normal;"><xsl:value-of select="applicant/agent_name"/></span></div>
							</div>
						</div>
						<div class="row panel-info">
							<label class="panel-heading"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'APPLICANT_CONTACT_INFO'"/></xsl:call-template></label>
							<xsl:apply-templates mode="contact" select="applicant[applicant_role = 'Y']" />
							<xsl:apply-templates mode="address" select="applicant[applicant_role = 'Y']" />
						</div>
						<xsl:if test="count(applicant[billing_role = 'Y']) > 0">
						<div class="row panel-info">
							<label class="panel-heading"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'BILLING_SEL'"/></xsl:call-template></label>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'ORGANIZATION_NAME'"/></xsl:call-template></label>
								<div class="col-xs-12"><span class="mouseHover" style="font-weight:100;"><xsl:value-of select="//applicant[billing_role = 'Y']/applicant_name"/></span></div>
							</div>
							<xsl:apply-templates mode="contact" select="applicant[billing_role = 'Y']" />
							<xsl:apply-templates mode="address" select="applicant[billing_role = 'Y']" />
						</div>
						</xsl:if>
						<div class="row panel-success">
							<h3 class="panel-heading">2. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'PATENT_INFO'"/></xsl:call-template></h3>
							<table cellspacing="8" cellpadding="2">
							<thead>
								<tr>
									<th><label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'CANADIAN_PATENT_NUMBER'"/></xsl:call-template></label></th>
									<th><label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'PATENT_FILLING_DATE'"/></xsl:call-template></label></th>
									<th><label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'PATENT_DATE_GRANTED'"/></xsl:call-template></label></th>
									<th><label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'PATENT_EXPIREATION_DATE'"/></xsl:call-template></label></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><span class="mouseHover"><xsl:value-of select="application_info/patent_info/patent_number"/></span></td>
									<td><span class="mouseHover"><xsl:value-of select="application_info/patent_info/filing_date"/></span></td>
									<td><span class="mouseHover"><xsl:value-of select="application_info/patent_info/granted_date"/></span></td>
									<td><span class="mouseHover"><xsl:value-of select="application_info/patent_info/expiry_date"/></span></td>
								</tr>
							</tbody>
							</table>
						</div>
						<div class="row panel-success">
							<h3 class="panel-heading">3. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'NDS_INFO'"/></xsl:call-template></h3>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'NDS_NUMBER'"/></xsl:call-template>:&#160;
								<span class="mouseHover" style="font-weight:100;"><xsl:value-of select="application_info/control_number"/></span>
								</label>
							</div>
						</div>
						<div class="row panel-success">
							<h3 class="panel-heading">4. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'NOTICE_OF_COMPLIANCE_DATE'"/></xsl:call-template></h3>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'NOC_DATE'"/></xsl:call-template>:&#160;
								<span class="mouseHover" style="font-weight:100;"><xsl:value-of select="application_info/noc_date"/></span>
								</label>
							</div>
						</div>
						<div class="row panel-success">
							<h3 class="panel-heading">5. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'DRUG_USE'"/></xsl:call-template></h3>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'DRUG_USE'"/></xsl:call-template>:&#160;
								<span class="mouseHover" style="font-weight:100;"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="application_info/drug_use"/></xsl:call-template></span>
								</label>
							</div>
						</div>
						<div class="row panel-success">
							<h3 class="panel-heading">6. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'TIMING_OF_APPLICATION'"/></xsl:call-template></h3>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'APPLICANT_APPLYING'"/></xsl:call-template></label>
								<span class="mouseHover col-xs-12">
									<xsl:if test="application_info[time_application = 'NOC']"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'APPLICANT_APPLYING_NOC'"/></xsl:call-template></xsl:if>
									<xsl:if test="application_info[time_application = 'GRANT']"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'APPLICANT_APPLYING_GRANT'"/></xsl:call-template></xsl:if>
								</span>
							</div>
						</div>
						<div class="row panel-success">
							<h3 class="panel-heading">7. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'MEDICINAL_INGREDIENTS'"/></xsl:call-template></h3>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'MEDICINAL_INGREDIENTS_DESC'"/></xsl:call-template></label>
								<span class="mouseHover col-xs-12 "><xsl:value-of select="application_info/medicinal_ingredient"/></span>
							</div>
							<div class="col-xs-12 ">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'MEDICINAL_INGREDIENTS_PROD'"/></xsl:call-template></label>
								<span class="mouseHover col-xs-12 "><xsl:value-of select="application_info/product_name"/></span>
							</div>
						</div>
						<div class="row panel-success">
							<h3 class="panel-heading">8. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'ATTESTATIONS'"/></xsl:call-template></h3>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'ATTESTATIONS_APPLICANT'"/></xsl:call-template></label>
								<span class="mouseHover col-xs-12 ">
									<xsl:if test="application_info[applicant_statement = 'OWNER']"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'ATTESTATIONS_APPLICANT_OWNER'"/></xsl:call-template></xsl:if>
									<xsl:if test="application_info[applicant_statement = 'BEHALF_OWNER']"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'ATTESTATIONS_APPLICANT_APP'"/></xsl:call-template></xsl:if>
								</span>
							</div>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'ATTESTATIONS_SUBMISSION'"/></xsl:call-template></label>
								<span class="mouseHover col-xs-12 ">
									<xsl:if test="timely_submission_info[timely_submission_statement = 'NO_APPLICATION']"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'ATTESTATIONS_APPLICANT_OWNER'"/></xsl:call-template></xsl:if>
									<xsl:if test="timely_submission_info[timely_submission_statement = 'APPLICATION']">
										<xsl:call-template name="hp-label"><xsl:with-param name="code" select="'ATTESTATIONS_SUBMISSION_APP'"/></xsl:call-template>
									</xsl:if>
								</span>
							</div>
							<xsl:if test="timely_submission_info[timely_submission_statement = 'APPLICATION']">
								<div class="col-xs-12">
									<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'DATE_FIRST_MARKETING'"/></xsl:call-template>:&#160;
									<span class="mouseHover" style="font-weight:100;"><xsl:value-of select="timely_submission_info/marketing_application_date"/></span>
									</label>
								</div>
								<div class="col-xs-12">
									<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'COUNTRY_FIRST_MARKETING'"/></xsl:call-template>:&#160;
									<span class="mouseHover" style="font-weight:normal;">
										<xsl:choose>
											<xsl:when test="$language = 'eng'"><xsl:value-of select="timely_submission_info/marketing_country/@label_en"/></xsl:when>
											<xsl:otherwise><xsl:value-of select="timely_submission_info/marketing_country/@label_fr"/></xsl:otherwise>
										</xsl:choose>
									</span>
									</label>
								</div>
							</xsl:if>
						</div>
						<div class="row panel-success">
							<h3 class="panel-heading">9. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'FEE_PAYMENT'"/></xsl:call-template></h3>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'FEE_PAYMENT_DESC'"/></xsl:call-template></label>
							</div>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'FEE_BEING_PAID'"/></xsl:call-template>:&#160;
								<span class="mouseHover" style="font-weight:normal;">$<xsl:value-of select="advanced_payment/advanced_payment_fee"/></span>
								</label>
							</div>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'METHOD_PAYMENT'"/></xsl:call-template>:&#160;
								<span class="mouseHover" style="font-weight:normal;"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="concat('CSP_', advanced_payment/advanced_payment_type)"/></xsl:call-template></span>
								</label>
							</div>
						</div>
						<div class="row panel-success">
							<h3 class="panel-heading">10. <xsl:call-template name="hp-label"><xsl:with-param name="code" select="'CERTIFICATION'"/></xsl:call-template></h3>
							<div class="col-xs-12">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'NAME_AUTHORIZED'"/></xsl:call-template></label>
							</div>
							<div class="col-xs-2">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'FIRSTNAME'"/></xsl:call-template><br/>
								<span class="mouseHover" style="font-weight:normal;"><xsl:value-of select="certification/given_name"/></span>
								</label>
							</div>
							<div class="col-xs-2">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'INITIALS'"/></xsl:call-template><br/>
								<span class="mouseHover" style="font-weight:normal;"><xsl:value-of select="certification/initials"/></span>
								</label>
							</div>
							<div class="col-xs-2">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'LASTNAME'"/></xsl:call-template><br/>
								<span class="mouseHover" style="font-weight:normal;"><xsl:value-of select="certification/surname"/></span>
								</label>
							</div>
							<div class="col-xs-2">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'JOBTITLE'"/></xsl:call-template><br/>
								<span class="mouseHover" style="font-weight:normal;"><xsl:value-of select="certification/job_title"/></span>
								</label>
							</div>
							<div class="col-xs-2">
								<label><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'DATE'"/></xsl:call-template><br/>
								<span class="mouseHover" style="font-weight:normal;"><xsl:value-of select="certification/date_signed"/></span>
								</label>
							</div>
						</div>
						<div class="row">
							<br />
							<br />
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template mode="contact" match="*">
		<div class="row">
			<div class="col-xs-12">
				<label class="col-xs-3"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'SALUTATION'"/></xsl:call-template>&#160;&#160;
				<span class="mouseHover" style="font-weight:normal;"> <xsl:call-template name="hp-label"><xsl:with-param name="code" select="contact/salutation" /></xsl:call-template> </span></label>
				<label class="col-xs-3"> &#160;&#160;<xsl:call-template name="hp-label"><xsl:with-param name="code" select="'JOBTITLE'"/></xsl:call-template>&#160;&#160; 
				<span class="mouseHover" style="font-weight:normal;"> <xsl:apply-templates select="contact/job_title" /> </span></label>
				<label class="col-xs-3"> &#160;&#160;<xsl:call-template name="hp-label"><xsl:with-param name="code" select="'LANGCORRESPOND'"/></xsl:call-template>&#160;&#160; 
				<span class="mouseHover" style="font-weight:normal;"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="contact/language_correspondance"/></xsl:call-template></span></label>
			</div>
			<div class="col-xs-12">
				<label class="col-xs-3"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'FIRSTNAME'"/></xsl:call-template>&#160;&#160;
				<span class="mouseHover" style="font-weight:normal;"> <xsl:apply-templates select="contact/given_name" /> </span> </label>
				<label class="col-xs-3"> &#160;&#160;<xsl:call-template name="hp-label"><xsl:with-param name="code" select="'INITIALS'"/></xsl:call-template>&#160;&#160;
				<span class="mouseHover" style="font-weight:normal;"> <xsl:apply-templates select="contact/initials" /> </span> </label>
				<label class="col-xs-3"> &#160;&#160;<xsl:call-template name="hp-label"><xsl:with-param name="code" select="'LASTNAME'"/></xsl:call-template>&#160;&#160;
				<span class="mouseHover" style="font-weight:normal;"> <xsl:apply-templates select="contact/surname" /> </span> </label>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<label class="col-xs-6"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'PHONENUMBER'"/></xsl:call-template>&#160;&#160;
				<span class="mouseHover" style="font-weight:normal;"> <xsl:apply-templates select="contact/phone_num" /> </span>&#160;&#160;
				<xsl:call-template name="hp-label"><xsl:with-param name="code" select="'EXTENSION'"/></xsl:call-template> &#160;&#160;
				<span class="mouseHover" style="font-weight:normal;"> <xsl:apply-templates select="contact/phone_ext" /> </span> </label>
				<label class="col-xs-3">&#160;&#160;<xsl:call-template name="hp-label"><xsl:with-param name="code" select="'FAX_NUMBER'"/></xsl:call-template>&#160;&#160; 
				<span class="mouseHover" style="font-weight:normal;"> <xsl:apply-templates select="contact/fax_num" /> </span></label>
			</div>
			<div class="col-xs-12">
				<label class="col-xs-12"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'CONTACTEMAIL'"/></xsl:call-template>&#160;&#160;
				<span class="mouseHover" style="font-weight:normal;"> <xsl:apply-templates select="contact/email" /> </span></label>
			</div>
		</div>
	</xsl:template>
	<xsl:template mode="address" match="*">
		<div class="row">
			<div class="col-xs-12">
				<label class="col-xs-2"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'STREET_SUITE'"/></xsl:call-template></label>
				<span class="mouseHover"> <xsl:apply-templates select="address/street_address" /> </span>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<label class="col-xs-2"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'CITY_TOWN'"/></xsl:call-template> </label>
				<span class="mouseHover"> <xsl:apply-templates select="address/city" /> </span>
				<label> &#160;&#160;<xsl:call-template name="hp-label"><xsl:with-param name="code" select="'PROVINCE'"/></xsl:call-template>&#160;&#160; </label>
				<span class="mouseHover"> <xsl:choose><xsl:when test="(address/country = 'CAN') or (address/country = 'USA')"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="address/province_lov" /></xsl:call-template></xsl:when><xsl:otherwise><xsl:apply-templates select="address/province_text" /></xsl:otherwise></xsl:choose> </span>
				<label> &#160;&#160;<xsl:call-template name="hp-label"><xsl:with-param name="code" select="'COUNTRY'"/></xsl:call-template>&#160;&#160; </label>
				<span class="mouseHover"> 
				<xsl:choose>
				<xsl:when test="$language = 'fra'">
					<xsl:value-of select="address/country/@label_fr"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="address/country/@label_en"/>
				</xsl:otherwise>
				</xsl:choose>
				</span>
			</div>
			<div class="col-xs-12">
				<label class="col-xs-2"><xsl:call-template name="hp-label"><xsl:with-param name="code" select="'POSTAL_ZIP'"/></xsl:call-template> </label>
				<span class="mouseHover"> <xsl:apply-templates select="address/postal_code" /> </span>
			</div>
		</div>
	</xsl:template>
	<xsl:template name="hp-label">
		<xsl:param name="code" select="/.."/>
		<xsl:variable name="value" select="$labelLookup/SimpleCodeList/row[code=$code]/*[name()=$language]"/>
		<xsl:if test="$value"><xsl:value-of select="$value"/></xsl:if>
		<xsl:if test="not($value)">Error: code missing:(<xsl:value-of select="$code"/> in <xsl:value-of select="$labelFile"/>)</xsl:if>
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="no" externalpreview="no" url="file:///e:/hccsp-3-0.xml" htmlbaseurl="" outputurl="file:///c:/SPM/test/csp.html" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth=""
		          profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal"
		          customvalidator="">
			<parameterValue name="cssFile" value="'file:///C:/Users/hcuser/git/HC-IMSD/REP/xslt/ip400.css'"/>
			<parameterValue name="labelFile" value="'C:\Users\hcuser\git\HC-IMSD\REP\xslt\hp-ip400-labels.xml'"/>
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