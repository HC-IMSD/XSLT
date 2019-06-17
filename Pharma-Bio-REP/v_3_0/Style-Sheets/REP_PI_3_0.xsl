<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:param name="language" select="'eng'"/>
		<xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'" />
		<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:template match="/">
		<html>
			<head>
    <meta charset="utf-8" />
				<meta http-equiv="X-UA-Compatible" content="IE=9"/>
				<link href="https://lam-dev.hres.ca/rep-dev/GCWeb/css/theme.min.css" type="text/css" rel="stylesheet" />
				<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" type="text/css" rel="stylesheet" />
				<link href="https://lam-dev.hres.ca/rep-dev/dossier/app/styles/rep.css" type="text/css" rel="stylesheet" />
				<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
				<style>
span.mouseHover:hover {
	border: 1px solid black;
}

				</style>
				<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
				<script src="https://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js" type="text/javascript" charset="utf-8"></script>
				<script type="text/javascript">
					var myTables = {'formulation': [{'class':'.table-ingredients', 'sortCols':[[1,'asc'],[3,'asc']], 'columnDefs':[{ "orderable": false, "targets": [0] }]},
													{'class':'.table-container', 'sortCols':[[1,'asc']], 'columnDefs':[{ "orderable": false, "targets": [0] }]},
													{'class':'.table-container-details', 'sortCols':[[1,'asc']], 'columnDefs':[{ "orderable": false, "targets": [0] }]}],
									'appendix': [{'class':'.table-tissues','sortCols':[[0,'asc']], 'columnDefs':[]},
												 {'class':'.table-animal','sortCols':[[0,'asc']], 'columnDefs':[]},
									],
									'importer':[]
									};

					function selectedTab(tab){
						$("ul.nav.nav-tabs li").each(function(index){
							if(tab == index){
								$(this).addClass('active');
							} else {
								$(this).removeClass('active');
							}
						});
						$(".tabpanels").children().each(function(index){
							if(tab == index){
								this.style.setProperty( 'display', 'block', 'important' );
								var table = $(this).find('.table-appendix');
								if(table.length > 0){
									var th = $(table).find('th')[0];
									$(th).css('width', 12);
								}
							} else {
								this.style.setProperty( 'display', 'none', 'important' );
							}
						});
					}
					function showDetail(e, colspan, initChild, tables){
						var next = $(e).next();
						var hasColspan = $(next).children().attr('colspan');
						if( hasColspan ){
						   if(hasColspan != ''){
							$(next).remove();
							var child =$(e).find(".fa-caret-down");
							child.removeClass('fa-caret-down');
							child.addClass('fa-caret-right');
							}
						} else {
							value = $(e).children()[$(e).children().length - 1].innerHTML;
							nodeTr = $(e).after('<tr></tr>');
							nodeTrNew = $(nodeTr).next();
							$(nodeTrNew).append('<td></td>');
							nodeTd = $(nodeTrNew).first().children();
							$(nodeTd).attr('colspan', colspan).html(value);
							if(initChild){
								$.each(tables, function(index, e){
									var nodeTable = $(nodeTd).find(e['class']);
									initSubtable(nodeTable, e['sortCols'], e['columnDefs']);
								})
							}
							var child =$(e).find(".fa-caret-right");
							child.removeClass('fa-caret-right');
							child.addClass('fa-caret-down');
						}
					}
					function initSubtable(node, sortCols, columnDefs){
						$(node).dataTable({
							"paging": false,
							"info" : false,
							"order": sortCols, //[[1,"asc"],[3,"asc"]],
							"ordering": true,
							"searching": false,
							"columnDefs": columnDefs
						}); 
					}
    $(document).ready(function() {
		$("#importCompany").dataTable({
			"paging": false,
			"info" : false,
			"order":[[2,"asc"]],
			"ordering": true,
			"searching": false,
			"columnDefs": [
				{ 'orderable': false, "targets": [0] }
			]
		});
		$(".table-formulation").dataTable({
			"paging": false,
			"info" : false,
			"order":[[1,"asc"]],
			"searching": false,
			"columnDefs": [
				{ "orderable": false, "targets": [0] }
			]
		});

		$(".table-appendix").dataTable({
			"paging": false,
			"info" : false,
			"order":[[1,"asc"]],
			"ordering": true,
			"searching": false,
			"columnDefs": [
				{ "orderable": false, 'width': '2%', "targets": [0] },
				{ 'width': '97%', "targets": [1] }
			]
		}); 
	});

				</script>
			</head>
            <body typeof="WebPage">
				<xsl:if test="count(DRUG_PRODUCT_ENROL) &gt; 0"> <xsl:apply-templates select="DRUG_PRODUCT_ENROL"></xsl:apply-templates> </xsl:if>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="DRUG_PRODUCT_ENROL">
		<h1>Product Infromation Template: Regulatory Enrolment Process (REP)</h1>
		<div class="well well-sm" >
			<table border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;">
				<tr>
					<td style="text-align: center;font-weight:bold;">Enrolment Version</td>
					<td style="text-align: center;font-weight:bold;">Company ID</td>
					<td style="text-align: center;font-weight:bold;">Dossier ID</td>
					<td style="text-align: center;font-weight:bold;">Date Last Saved</td>
				</tr>
				<tr>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:apply-templates select="enrolment_version" /></span> </td>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:apply-templates select="company_id" /></span> </td>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:apply-templates select="dossier_id" /></span> </td>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:apply-templates select="date_saved" /></span> </td>
				</tr>
			</table>
		</div>
		<section>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2 class="panel-title">Product Information</h2>
				</div>
				<div class="panel-body">										
					<div class="well well-sm" >
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Dossier Type:&#160;</strong>
								<span class="mouseHover"><xsl:value-of select="dossier_type"/></span>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Product Name</strong>
								<div class="col-xs-12"><span style="font-weight:normal;" class="mouseHover"><xsl:value-of select="product_name"/></span></div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Proper, Common or Non-Proprietary Name</strong>
								<div class="col-xs-12"><span style="font-weight:normal;" class="mouseHover"><xsl:value-of select="proper_name"/></span></div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<strong>Address to which the Drug Notification Form (DNF)/Notice of Compliance (NOC) are to be sent(when required):</strong>
							</div>
							<xsl:choose>
							<xsl:when test="manufacturer = 'Y' or mailing = 'Y' or this_activity = 'Y' or importer = 'Y'">
								<xsl:if test="manufacturer = 'Y'">
									<div class="col-xs-12">
									<span style="margin-left:40px;" class="mouseHover">Manufacturer/Sponsor</span>
									</div>
								</xsl:if>
								<xsl:if test="mailing = 'Y'">
									<div class="col-xs-12">
									<span style="margin-left:40px;" class="mouseHover">Regulatory Mailing / Annual Contact</span>
									</div>
								</xsl:if>
								<xsl:if test="this_activity = 'Y'">
									<div class="col-xs-12">
									<span style="margin-left:40px;" class="mouseHover">Contact for this Regulatory Activity</span>
									</div>
								</xsl:if>
								<xsl:if test="importer = 'Y'">
									<div class="col-xs-12">
									<span style="margin-left:40px;" class="mouseHover">Canadian Importer</span>
									</div>
								</xsl:if>
							</xsl:when>
							<xsl:otherwise>
									<div class="col-xs-12">
									<span style="margin-left:40px;" class="mouseHover">n/a</span>
									</div>
							</xsl:otherwise>
							</xsl:choose>

						</div>
						<div class="row"><br/>
						</div>
						<div class="row">
						<div class="col-sm-12 form-group">
							<strong>Importer</strong>
							<table class="table dataTable table-bordered table-hover table-condensed table-striped " id="importCompany" border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;">
								<thead>
								<tr>
									<th style="width:10px;"></th>
									<th ><strong>Importer Company ID</strong></th>
									<th style="width:70%;"><strong>Importer Company Name</strong></th>
									<th class="out">Hidden</th>
								</tr>
								</thead>
								<tbody>
								<xsl:for-each select="/DRUG_PRODUCT_ENROL/importer_record">
								<tr onclick="showDetail(this, '3', false, myTables['importer']);">
									<td class="fa fa-caret-right fa-lg fa-fw"></td>
									<td><span class="mouseHover"><xsl:value-of select="importer_company_id" /></span> </td>
									<td><span class="mouseHover"><xsl:value-of select="importer_company_name" /></span> </td>
									<td class="out">
										<fieldset>
											<legend><h4>&#160;&#160;&#160;&#160;Importer Record&#160;<xsl:value-of select="position()"/></h4></legend>
											<div>
												<section class="panel panel-default">
													<div class="panel-body">
														<div class="well well-sm">
															<div class="row">
															<div class="form-group col-md-12">
																<strong>Importer Company ID:&#160;</strong><span class="mouseHover"><xsl:value-of select="importer_company_id"/></span>
															</div>
															</div>
															<div class="row">
															<div class="form-group col-md-12"><strong>Importer Company Name: &#160;</strong></div>
															<div class="form-group col-md-12"><span class="mouseHover"><xsl:value-of select="importer_company_name"/></span></div>
															</div>
															<div class="row">
															<div class="form-group col-md-12"><strong>Street Address: &#160;</strong></div>
															<div class="form-group col-md-12"><span class="mouseHover"><xsl:value-of select="street_address"/></span></div>
															</div>
															<div class="row">
															<div class="form-group col-md-6"><strong>City or Town: &#160;</strong><span class="mouseHover"><xsl:value-of select="city"/></span></div>
															<div class="form-group col-md-6"><strong>Country: &#160;</strong><span class="mouseHover"><xsl:value-of select="country"/></span></div>
															</div>
															<div class="row">
															<div class="form-group col-md-6"><strong>Province or State: &#160;</strong>
																<xsl:choose>
																<xsl:when test="(country/@id = 'CAN') or (country/@id = 'USA')">
																	<xsl:value-of select="province_lov"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="province_text"/>
																</xsl:otherwise>
																</xsl:choose>
															</div>
															<div class="form-group col-md-6"><strong>Post Code or ZIP Code: &#160;</strong><span class="mouseHover"><xsl:value-of select="postal_code"/></span></div>
															</div>

														</div>
													</div>
												</section>
											</div>
										</fieldset>
									</td>
								</tr>
								</xsl:for-each>
								</tbody>
							</table>
						</div>
						</div>
						<div class="row"><br/>
						</div>
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Drug Use:&#160;
								<span style="font-weight:normal;" class="mouseHover"><xsl:value-of select="drug_use"/></span>
								</strong>
							</div>
						</div>
						<xsl:if test="drug_use/@id = 'DISINFECT'">
							<div class="row">
								<div class="col-xs-12">
								<div class="col-xs-12">
									<strong>Disinfectant Type:</strong>
								</div>
								</div>
							</div>
							<div class="row">
							<div class="col-xs-12">
							<xsl:for-each select="disinfectant_type/*">
								<xsl:if test=" current() = 'Y'">
										<div class="col-xs-12">
										<div class="col-xs-12">
											<span class="mouseHover"><xsl:call-template name="converter"><xsl:with-param name="value" select="name()"/></xsl:call-template></span>
										</div>
										</div>
								</xsl:if>
							</xsl:for-each>
							</div>
							</div>
						</xsl:if>
						<div class="row">
							<div class="col-xs-12">
								<strong>Schedule and Prescription status (check all that apply): The product is</strong>
							</div>
							<xsl:choose>
							<xsl:when test=" is_sched_c ='Y' or is_sched_d = 'Y' or is_prescription_drug_list = 'Y' or is_prescription_drug_list = 'Y' or is_regulated_cdsa = 'Y' or is_non_prescription_drug = 'Y' or is_sched_a = 'Y'">
								<xsl:if test="is_sched_c = 'Y'">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">included in Schedule C (radiopharmacurticals) to the Food and Drugs Act</span>
								</div>
								</xsl:if>
								<xsl:if test="is_sched_d = 'Y'">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">included in Schedule D (biologicals) to the Food and Drugs Act</span>
								</div>
								</xsl:if>
								<xsl:if test="is_prescription_drug_list = 'Y'">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">on the Prescription Drug List</span>
								</div>
								</xsl:if>
								<xsl:if test="is_regulated_cdsa = 'Y'">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">regulated under the Controlled Drugs and Substances Act</span>
								</div>
								</xsl:if>
								<xsl:if test="is_non_prescription_drug = 'Y'">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">a non-prescription drug</span>
								</div>
								</xsl:if>
								<xsl:if test="is_sched_a = 'Y'">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">a non-prescription drug to which one or more Schedule A claims apply</span>
								</div>
								<xsl:if test="is_sched_a = 'Y'">

								<div class="row">
								<div class="col-xs-11" style="margin-left:60px;">
									<strong>Schedule A Claim Details</strong>
									<div class="panel panel-body" style="border: 1px solid black;">
										<div class="row">
											<div class="col-xs-12">Provide information below for non prescription products that have associated Schedule A claims only.</div>
										</div>
										<div class="row">
										<div class="col-xs-12">
										<div class="col-xs-12">
										<strong>Drug Identification Number (DIN), if issued</strong>
											:&#160;&#160;<span class="mouseHover"><xsl:value-of select="schedule_a_group/din_number"/></span>
										</div>
										</div>
										</div>
										<div class="row">
										<div class="col-xs-12">
										<div class="col-xs-12">
												<strong>Please check the diseases and disorders that apply to the claims made (select at least one)</strong>
										</div>
										</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
													<xsl:for-each select="schedule_a_group/*">
													<xsl:if test="current() = 'Y'">
													<div class="col-xs-12">
													<div class="col-xs-12">
														<span class="mouseHover"><xsl:call-template name="converter"><xsl:with-param name="value" select="name()"/></xsl:call-template></span>
													</div>
													</div>
													</xsl:if>
													</xsl:for-each>
											</div>
										</div>
										<div class="col-xs-12">
											<strong>Please list the schedule A Claims and Indications associated with this product</strong>
											<div class="row">
												<div class="col-xs-12">
													<span class="mouseHover"><xsl:value-of select="schedule_a_group/sched_a_claims_ind_details"/></span>
												</div>
											</div>
										</div>
									</div>
								</div>
								</div>
								</xsl:if>
								</xsl:if>
							</xsl:when>
							<xsl:otherwise>
								<div class="col-xs-12">
									<span class="mouseHover">n/a</span>
								</div>
							</xsl:otherwise>
							</xsl:choose>
						</div>
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Proposed Indication/Use/Dosage (including maximum daily dose)</strong>
								<div class="col-xs-12">
									<span class="mouseHover"><xsl:value-of select="proposed_indication"/></span>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-xs-12">
								<strong>Formulation</strong>
								<div class="form-group">
									<ul class="nav nav-tabs">
										<li onclick="selectedTab(0);" tabindex="0" class="active" id="tab0"><a href="#tabpanel0"><strong>Formulations</strong></a>
										</li>
										<li onclick="selectedTab(1);" tabindex="0" id="tab1"><a href="#tabpanel1">Animal / Human Sourced</a>
										</li>
									</ul>
									<div class="tabpanels">
										<div id="tabpanel0" class="active">
											<table class="table table-bordered table-hover table-condensed table-striped table-formulation">
											<thead>
												<tr>
													<th style="width:2%;"></th>
													<th style="width:8%;"><strong>ID</strong></th>
													<th style="width:90%;"><strong>Formulation Name</strong></th>
													<th class="out"></th>
												</tr>
											</thead>
											<tbody>
												<xsl:for-each select="formulation_group/formulation_details">
													<tr onclick="showDetail(this, '3', true, myTables['formulation']);">
														<td class="fa fa-caret-right fa-lg fa-fw"></td>
														<td><xsl:value-of select="formulation_id"/></td>
														<td><xsl:value-of select="formulation_name"/></td>
														<td class="out">
															<fieldset>
																<legend><h4>&#160;&#160;&#160;&#160;Formulation Record&#160;<xsl:value-of select="formulation_id"/></h4></legend>
																<div>
																	<section class="panel panel-default">
																		<div class="panel-body">
																			<div class="well well-sm">
																				<div class="row">
																				<div class="form-group col-md-12">
																				<strong>A. Formulation Name:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="formulation_name"/></span></strong>
																				</div>
																				</div>
																				<div class="row">
																				<div class="form-group col-md-12">
																				<strong>B. Dosage Form:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="dosage_form_group/dosage_form"/></span>&#160;<span><xsl:value-of select="dosage_form_group/dosage_form_other"/></span></strong>
																				</div>
																				</div>
																				<div class="row">
																				<div class="form-group col-md-12">
																				<strong>C.&#160;Ingredients</strong>
																				<br/>
																					<div class="row">
																						<div class="col-md-12">
																							<table class="table table-bordered table-hover table-condensed table-striped table-ingredients" >
																							<thead>
																								<tr>
																									<th style="width:2%"></th>
																									<th>Role</th>
																									<th>Ingredient</th>
																									<th>Formulation Variant Name (if applicable)</th>
																									<th>In list</th>
																									<th>Chemical Abstract Services</th>
																									<th>Human / Animal Sourced?</th>
																									<th class="out">Hide</th>
																								</tr>
																							</thead>
								<tbody>
																								<xsl:for-each select="formulation_ingredient">
																								<tr onclick="showDetail(this, '7', false, null);">
																									<td class="fa fa-caret-right fa-lg fa-fw"></td>
																									<td><xsl:value-of select="ingredient_role"/></td>
																									<td><xsl:value-of select="ingredient_name"/></td>
																									<td><xsl:value-of select="variant_name"/></td>
																									<td><xsl:choose><xsl:when test="ingredient_id">Yes</xsl:when><xsl:otherwise>No</xsl:otherwise></xsl:choose></td>
																									<td><xsl:value-of select="cas_number"/></td>
																									<td><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_human_animal_src"/></xsl:call-template></td>
																									<td class="out">
																										<fieldset>
																											<legend>Ingredients&#160;<xsl:value-of select="position()"/></legend>
																											<div class="row">
																												<div class="col-md-6">
																												<strong>Role:&#160;</strong>
																												<span class="mouseHover"><xsl:value-of select="ingredient_role"/></span>
																												</div>
																												<xsl:if test="ingredient_role/@id = 'NONMED'">
																													<div class="col-md-6">
																													<strong>Formulation Variant Name:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="variant_name"/></span></strong>
																													</div>
																													<div class="col-md-6">
																													<strong>Purpose:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="purpose"/></span></strong>
																													</div>
																												</xsl:if>
																												<div class="col-md-6">
																												<strong>Ingredient Name:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="ingredient_name"/></span></strong>
																												</div>
																											</div>
																											<div class="row">
																												<div class="col-md-6"><strong>Chemical Abstract Services:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="cas_number"/></span></strong></div>
																												<div class="col-md-6"><strong>Standard:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="ingred_standard"/></span></strong></div>
																											</div>
																											<div class="row">
																												<div class="col-md-6"><strong>Strength:&#160;
																												<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="./strength/operator"/></span>&#160;
																												<xsl:if test="strength/operator/@id = 'RA'">
																													<span style="font-weight: normal;" class="mouseHover">Lower Limit</span>:&#160;
																												</xsl:if>
																												<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="strength/data1"/></span>&#160;
																												<xsl:choose>
																												<xsl:when test="units_other != 'null' and units_other != ''">
																													<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="units_other"/></span>&#160;
																												</xsl:when>
																												<xsl:otherwise>
																													<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="units"/></span>
																												</xsl:otherwise>
																												</xsl:choose>
																												<xsl:if test="strength/operator/@id = 'RA'">&#160;&#160;
																													<span style="font-weight: normal;" class="mouseHover">Upper Limit</span>:&#160;
																													<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="strength/data2"/></span>&#160;
																													<xsl:choose>
																													<xsl:when test="per_units_other_details != 'null' and per_units_other_details != ''">
																														<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="units_other"/></span>&#160;
																													</xsl:when>
																													<xsl:otherwise>
																														<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="units"/></span>
																													</xsl:otherwise>
																													</xsl:choose>
																												</xsl:if>
																												</strong>
																												</div>
																													<xsl:variable name="perUnit">
																														<xsl:value-of select="per"/>
																													</xsl:variable>
																												<div class="col-md-3">
																													<strong>Per</strong>&#160;
																													<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="per_value"/></span>&#160;
																													<xsl:choose>
																													<xsl:when test="per_units_other_details != 'null' and per_units_other_details != ''">
																															<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="per_units_other_details"/></span>
																													</xsl:when>
																													<xsl:otherwise>
																															<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="per_units"/></span>
																													</xsl:otherwise>
																													</xsl:choose>
																		
																												</div>
																												<xsl:if test="is_base_calc != ''">
																												<div class="col-md-12"><strong>Calculated as Base?&#160;
																													<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="is_base_calc"/></span>
																												</strong></div>
																												</xsl:if>
																											</div>
																											<div class="row">
																												<div class="col-md-6"><strong>Is this a nanomaterial?&#160;
																													<span style="font-weight: normal;" class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_nanomaterial"/></xsl:call-template></span>
																												</strong></div>
																												<div class="col-md-6"><strong>Animal or Human Sourced?&#160;
																													<span style="font-weight: normal;" class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_human_animal_src"/></xsl:call-template></span>
																												</strong></div>
																											</div>
																											<xsl:if test="is_nanomaterial = 'Y'">
																											<div class="row">
																												<div class="col-md-12"><strong>Nanomaterial:&#160;
																													<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="nanomaterial"/></span>
																													<xsl:if test="nanomaterial_details != 'null' and nanomaterial_details != ''">&#160;&#160;
																														Indicate the type of nanomaterial:&#160;
																														<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="nanomaterial_details"/></span>
																													</xsl:if>
																												</strong></div>
																											</div>
																											</xsl:if>
																										</fieldset>

																									</td>
																								</tr>
																								</xsl:for-each>
																							</tbody>
																							</table>
																						</div>
																					</div>
																				</div>
																				</div>
																				<div class="row">
																				<div class="form-group col-md-12">
																				<strong>D.&#160;Was Animal and/or Human Sourced Material used at any stage in the manufacturing of the drug?&#160;<span style="font-weight: normal;"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_animal_human_material"/></xsl:call-template></span></strong>
																				</div>
																			<xsl:if test="is_animal_human_material = 'Y'">
																			<div class="col-md-12">
																				<table class="table table-bordered table-hover table-condensed table-striped table-container" id="expand-table-142">
																				<thead>
																					<tr>
																						<th style="width:2%"></th>
																						<th>Material Name</th>
																						<th>Chemical Abstract Services</th>
																						<th>Present in final Container</th>
																						<th class="out">Hide</th>
																					</tr>
																				</thead>
																				<tbody>
																					<xsl:for-each select="material_ingredient">
																						<tr onclick="showDetail(this, '4', false, null);">
																							<td class="fa fa-caret-right fa-lg fa-fw"></td>
																							<td><xsl:value-of select="./ingredient_name"/></td>
																							<td><xsl:value-of select="./cas_number"/></td>
																							<td><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="in_final_container"/></xsl:call-template></td>
																							<td class="out">
															<fieldset>
																<legend>Animal and / or Human Sourced Materials Details&#160;<xsl:value-of select="position()"/></legend>
																<div class="row">
																	<div class="col-md-6">
																	<strong>Material Name:&#160;<span class="normalWeight mouseHover"><xsl:value-of select="./ingredient_name"/></span></strong>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-3">
																		<strong>Chemical Abstract Services:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="./cas_number"/></span></strong>
																	</div>
																	<div class="col-md-3">
																		<strong>Standard:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="./cas_number"/></span></strong>
																	</div>
																	<div class="col-md-3">
																		<strong>Present in final Container?&#160;
																		<span style="font-weight: normal;" class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="in_final_container"/></xsl:call-template></span></strong>
																	</div>
																</div>

															</fieldset>
																							</td>
																						</tr>
																					</xsl:for-each>
																				</tbody>
																				</table>
																			</div>
																			</xsl:if>
																				</div>
																				<div class="row">
																				<div class="form-group col-md-12">
																				<br/>
																				<strong>E.&#160;Container Types, Package Size and Shelf Life</strong>
																				</div>
																			<div class="col-md-12">
																				<table class="table table-bordered table-hover table-condensed table-striped table-container-details" id="expand-table-143">
																				<thead>
																					<tr>
																						<th style="width:2%"></th>
																						<th>Container Type</th>
																						<th>Package Size</th>
																						<th class="out">Hidden</th>
																					</tr>
																				</thead>
																				<tbody>
																					<xsl:for-each select="container_group/container_details">
																						<tr onclick="showDetail(this, '3', false, null);">
																							<td class="fa fa-caret-right fa-lg fa-fw"></td>
																							<td><xsl:value-of select="container_type"/></td>
																							<td><xsl:value-of select="package_size"/></td>
																							<td class="out">
															<fieldset>
																<legend>Container Type Details&#160;<xsl:value-of select="position()"/></legend>
																<div class="row">
																	<div class="col-md-12">
																	<strong>Container Type:&#160;</strong><span class="mouseHover"><xsl:value-of select="container_type"/></span>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-12">
																	<strong>Package Size:&#160;</strong><span class="normalWeight mouseHover"><xsl:value-of select="package_size"/></span>
																	</div>
																</div>
																<div class="row">
																</div>
																<div class="row">
																	<div class="col-md-6">
																		<strong>Shelf Life:&#160;</strong>
																		<span class="mouseHover"><xsl:value-of select="shelf_life_number"/></span>&#160;
																		<span class="mouseHover"><xsl:apply-templates select="shelf_life_unit" /></span>
																	</div>
																	<div class="col-md-6">
																		<strong>Temperature Range From:&#160;</strong>
																		<span class="normalWeight mouseHover"><xsl:value-of select="temperature_min"/></span>&#160;&#160;
																		<strong>To:&#160;</strong>
																		<span class="normalWeight mouseHover"><xsl:value-of select="temperature_max"/></span>&#160;<strong>Celsius</strong>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-12">
																		<strong>Other Shelf Life Considerations:&#160;</strong>
																	</div>
																	<div class="col-md-12">
																		<div class="col-xs-10">
																		<span class="mouseHover"><xsl:value-of select="other_shelf_life_considerations"/></span>
																		</div>
																	</div>
																</div>
															</fieldset>
																							</td>
																						</tr>
																					</xsl:for-each>
																				</tbody>
																				</table>
																			</div>
																				</div>
																				<div class="row">
																				<div class="form-group col-md-12">
																				<br/>
																				<strong>F.&#160;Routes of Administration</strong>
																				</div>
																				<div class="col-md-12">
																				<div class="col-xs-11">
																					<ol>
																					<xsl:for-each select="roa_group/roa_details">
																						<li><xsl:value-of select="roa"/>
																							<xsl:if test="roa_other != ''">:&#160;<xsl:value-of select="roa_other"/></xsl:if>
																						</li>
																					</xsl:for-each>
																					</ol>
																				</div>
																			</div>
																				</div>
																				<div class="row">
																				<div class="form-group col-md-12">
																				<br/>
																				<strong>G.&#160;Countries of manufacture for this product</strong>
																				</div>
																				<div class="col-md-12">
																					<div class="col-xs-11">
																					<ol>
																					<xsl:for-each select="country_group/country_manufacturer">
																						<li><xsl:value-of select="current()"/></li>
																					</xsl:for-each>
																					</ol>
																					</div>
																				</div>
																				</div>
																			</div>
																		</div>
																	</section>
																</div>
															</fieldset>
															</td>
													</tr>
												</xsl:for-each>
											</tbody>
											</table>
										</div>
										<div class="out" id="tabpanel1" role="tabpanel">
											<table class="table table-bordered table-hover table-condensed table-striped table-appendix">
											<thead>
												<tr>
													<th style="width:1%;"></th>
													<th style="width:97%;"><strong>Animal / Human Sourced</strong></th>
													<th class="out" style="width:0%;"></th>
												</tr>
											</thead>
											<tbody>
												<xsl:for-each select="appendix4_group">
													<tr onclick="showDetail(this, '2', true, myTables['appendix'])">
														<td class="fa fa-caret-right fa-lg fa-fw"></td>
														<td><xsl:value-of select="ingredient_name"/></td>
														<td class="out"> 
															<fieldset>
																<legend>Human / Animal Sourced Record&#160;<xsl:value-of select="ingredient_id"/></legend>
																<div class="row">
																	<div class="col-md-12">
																	<strong>Ingredient or Material Name:&#160;<span style="font-weight: normal;" class="mouseHover"><xsl:value-of select="./ingredient_name"/></span></strong>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-12">
																		<strong>Source From:&#160;</strong>
																	<xsl:if test="human_sourced = 'Y'">
																	<div class="col-md-12">
																		<span class="mouseHover" style="margin-left:45px;">Human</span>
																	</div>
																	</xsl:if>
																	<xsl:if test="animal_sourced = 'Y'">
																	<div class="col-md-12">
																		<span class="mouseHover" style="margin-left:45px;">Animal</span>
																	</div>
																	</xsl:if>
																	</div>
																</div>
																<xsl:if test=" ./human_sourced = 'Y' or ./animal_sourced = 'Y'">
																<div class="row">
																	<div class="panel-default" style="margin-left:10px; margin-right:10px;">
																		<header><h3 style="font-weight:300; padding-left:5px">Tissues or Fluids sources</h3></header>
																		<div class="panel-body">
																			<table class="table table-bordered table-hover table-condensed table-striped table-tissues">
																				<thead>
																					<tr>
																						<th style="background-color:white !important;">System</th>
																						<th style="background-color:white !important;">System Details</th>
																						<th style="background-color:white !important;">Other Details</th>
																					</tr>
																				</thead>
																				<tbody>
																					<xsl:for-each select="tissues_fluids_section/*">
																						<tr >
																							<td><span  class="mouseHover"><xsl:call-template name="converter"><xsl:with-param name="value" select="name(.)"/></xsl:call-template></span></td>
																							<td>
																								<xsl:for-each select="*">
																									<span class="mouseHover">
																									<xsl:if test=" . = 'Y'">
																										<xsl:variable name="temp" select="name(.)"/>
																										<xsl:if test="$temp != 'other_nervous_details' and $temp != 'other_digestive_details' and $temp != 'other_musculo_skeletal_details' and $temp != 'other_reproductive_details' and $temp != 'other_cardio_respiratory_details' and $temp != 'other_immune_details' and $temp != 'other_skin_glandular_details' and $temp != 'other_fluids_tissues_details'">
																											<xsl:call-template name="converter"><xsl:with-param name="value" select="$temp"/></xsl:call-template><br/>
																										</xsl:if>
																									</xsl:if>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td><span class="mouseHover"><xsl:value-of select="*[self::other_nervous_details or self::other_digestive_details or self::other_musculo_skeletal_details or self::other_reproductive_details or self::other_cardio_respiratory_details or self::other_immune_details or self::other_skin_glandular_details or self::other_fluids_tissues_details]"/></span></td>
																						</tr>
																					</xsl:for-each>
																				</tbody>
																				</table>
																		</div>
																		<xsl:if test="animal_sourced = 'Y'">
																			<header><h3 style="font-weight:300; padding-left:5px">Animal Sources</h3></header>
																			<div class="panel-body">
																			<table class="table table-bordered table-hover table-condensed table-striped table-animal">
																			<thead>
																					<th style="background-color:white !important;"><strong>Animal Type</strong></th>
																					<th style="background-color:white !important;"><strong>Animal Type Details</strong></th>
																			</thead>
																			<tbody>
																				<xsl:for-each select="animal_sourced_section/animal_src_record">
																				<tr>
																					<td><span class="mouseHover"><xsl:value-of select="animal_type"/></span></td>
																					<td><span class="mouseHover"><xsl:value-of select="animal_detail"/></span></td>
																				</tr>
																				</xsl:for-each>
																			</tbody>
																			</table>
																			<div class="row"><br/>
																			  <div class="col-md-3">
																			  	<strong>Is age of animals known?&#160;
																				<span style="font-weight:normal;" class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_animal_age_known"/></xsl:call-template></span></strong>
																			  </div>
																			  <div class="col-md-3">
																			  	<xsl:if test="animal_sourced_section/is_animal_age_known = 'Y'">
																			  	<strong>Age of animals in months:&#160;<span style="font-weight:normal;" class="mouseHover"><xsl:value-of select="animal_sourced_section/animal_age"/></span></strong>
																				</xsl:if>
																			  </div>
																			  <div class="col-md-6">
																			  	<strong>Controlled Population:&#160;<span style="font-weight:normal;" class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_controlled_pop"/></xsl:call-template></span></strong>
																			  </div>
																			</div>
																			<div class="row"><br/>
																			  <div class="col-md-6">
																			  	<strong>Cell line:&#160;<span style="font-weight:normal;" class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_cell_line"/></xsl:call-template></span></strong>
																			  </div>
																			  <div class="col-md-6">
																			  	<strong>Biotechnology Derived Animal:&#160;<span style="font-weight:normal;" class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_biotech_derived"/></xsl:call-template></span></strong>
																			  </div><br/>
																			</div>
																			<div class="row"><br/><header><h3 style="font-weight:300; padding-left:5px">Animal Countries of Origin</h3></header></div>
																			<div class="col-xs-12">
																				<div class="col-xs-10">
																					<ol>
																				<xsl:for-each select="animal_sourced_section/country_origin_list/country_origin">
																					<li><xsl:value-of select="country_with_unknown"/>
																						<xsl:if test="unknown_country_details != ''">:&#160;<xsl:value-of select="unknown_country_details"/></xsl:if>
																					</li>
																				</xsl:for-each>
																					</ol>
																				</div>
																			</div>
																			</div>
																		</xsl:if>

																	</div>
																</div>
																</xsl:if>
															</fieldset>
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template name="upperCase">
		<xsl:param name="string" select="/.."/>
		<xsl:value-of select="translate($string, $smallcase, $uppercase)" />
	</xsl:template>
	<xsl:template name="YesNoUnknow">
		<xsl:param name="value" select="/.."/>
		<xsl:choose>
		<xsl:when test="$value = 'Y'">
			<xsl:value-of select="'Yes'"/>
		</xsl:when>
		<xsl:when test="$value = 'N'">
			<xsl:value-of select="'No'"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="'UNKNOWN'"/>
		</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="CapitalFirstLetter">
		<xsl:param name="value" select="/.."/>
		<xsl:value-of select="concat(translate(substring($value,1,1), $smallcase, $uppercase), translate(substring($value, 2), $uppercase, $smallcase), ' '[not(last())])"/>
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
			<xsl:when test=" 'nervous_system' = $value"><xsl:value-of select="'Nervous System'"/></xsl:when>
			<xsl:when test=" 'digestive_system' = $value"><xsl:value-of select="'Digestive'"/></xsl:when>
			<xsl:when test=" 'musculo_system' = $value"><xsl:value-of select="'Musculo-Skeletal'"/></xsl:when>
			<xsl:when test=" 'reproductive_system' = $value"><xsl:value-of select="'Reproductive'"/></xsl:when>
			<xsl:when test=" 'cardio_system' = $value"><xsl:value-of select="'Cardio-Respiratory'"/></xsl:when>
			<xsl:when test=" 'immune_system' = $value"><xsl:value-of select="'Immune'"/></xsl:when>
			<xsl:when test=" 'skin_system' = $value"><xsl:value-of select="'Skin and Glandular'"/></xsl:when>
			<xsl:when test=" 'other_system' = $value"><xsl:value-of select="'Other Tissues or Fluids'"/></xsl:when>

			<xsl:when test=" 'brain' = $value"><xsl:value-of select="'brain'"/></xsl:when>
			<xsl:when test=" 'brain_stem' = $value"><xsl:value-of select="'brain stem'"/></xsl:when>
			<xsl:when test=" 'cerebellum' = $value"><xsl:value-of select="'cerebellum'"/></xsl:when>
			<xsl:when test=" 'cerebrospinal_fluid' = $value"><xsl:value-of select="'erebrospinal fluid'"/></xsl:when>
			<xsl:when test=" 'dorsal_root_ganglia' = $value"><xsl:value-of select="'dorsal root ganglia'"/></xsl:when>
			<xsl:when test=" 'dura_mater' = $value"><xsl:value-of select="'dura mater'"/></xsl:when>
			<xsl:when test=" 'hypothalmus' = $value"><xsl:value-of select="'hypothalamus'"/></xsl:when>
			<xsl:when test=" 'retina_optic' = $value"><xsl:value-of select="'retina or optic nerve'"/></xsl:when>
			<xsl:when test=" 'spinal_cord' = $value"><xsl:value-of select="'spinal cord'"/></xsl:when>
			<xsl:when test=" 'trigerminal_ganglia' = $value"><xsl:value-of select="'trigerminal ganglia'"/></xsl:when>
			<xsl:when test=" 'other_nervous' = $value"><xsl:value-of select="'other nervous system'"/></xsl:when>

			<xsl:when test=" 'appendix' = $value"><xsl:value-of select="'appendix'"/></xsl:when>
			<xsl:when test=" 'bile' = $value"><xsl:value-of select="'bile'"/></xsl:when>
			<xsl:when test=" 'distal_ileum' = $value"><xsl:value-of select="'distal ileum'"/></xsl:when>
			<xsl:when test=" 'large_intestine' = $value"><xsl:value-of select="'large intestine'"/></xsl:when>
			<xsl:when test=" 'saliva_salivary' = $value"><xsl:value-of select="'saliva or salivary gland'"/></xsl:when>
			<xsl:when test=" 'small_intestine' = $value"><xsl:value-of select="'small intestine other than distal ileum'"/></xsl:when>
			<xsl:when test=" 'stomach' = $value"><xsl:value-of select="'stomach'"/></xsl:when>
			<xsl:when test=" 'other_digestive' = $value"><xsl:value-of select="'other digestive system'"/></xsl:when>

			<xsl:when test=" 'abdomen' = $value"><xsl:value-of select="'abdomen'"/></xsl:when>
			<xsl:when test=" 'skull' = $value"><xsl:value-of select="'skull'"/></xsl:when>
			<xsl:when test=" 'bones' = $value"><xsl:value-of select="'bones other than vertebral column or skull'"/></xsl:when>
			<xsl:when test=" 'collagen' = $value"><xsl:value-of select="'collagen'"/></xsl:when>
			<xsl:when test=" 'tendons_ligaments' = $value"><xsl:value-of select="'tendons or ligaments'"/></xsl:when>
			<xsl:when test=" 'vertebral_column' = $value"><xsl:value-of select="'vertebral column'"/></xsl:when>
			<xsl:when test=" 'muscle' = $value"><xsl:value-of select="'muscle'"/></xsl:when>
			<xsl:when test=" 'other_musculo_skeletal' = $value"><xsl:value-of select="'other musculo-skeletal system'"/></xsl:when>

			<xsl:when test=" 'milk_products' = $value"><xsl:value-of select="'milk or milk products'"/></xsl:when>
			<xsl:when test=" 'kidney' = $value"><xsl:value-of select="'kidney'"/></xsl:when>
			<xsl:when test=" 'colostrum' = $value"><xsl:value-of select="'colostrum'"/></xsl:when>
			<xsl:when test=" 'mammary_glands' = $value"><xsl:value-of select="'mammary glands'"/></xsl:when>
			<xsl:when test=" 'ovaries' = $value"><xsl:value-of select="'ovaries'"/></xsl:when>
			<xsl:when test=" 'placenta' = $value"><xsl:value-of select="'placenta'"/></xsl:when>
			<xsl:when test=" 'placental_fluid' = $value"><xsl:value-of select="'placental fluid'"/></xsl:when>
			<xsl:when test=" 'semen' = $value"><xsl:value-of select="'semen'"/></xsl:when>
			<xsl:when test=" 'testes' = $value"><xsl:value-of select="'testes'"/></xsl:when>
			<xsl:when test=" 'urine' = $value"><xsl:value-of select="'urine'"/></xsl:when>
			<xsl:when test=" 'other_reproductive' = $value"><xsl:value-of select="'other reproductive system'"/></xsl:when>

			<xsl:when test=" 'heart_pericardium' = $value"><xsl:value-of select="'Heart or pericardium'"/></xsl:when>
			<xsl:when test=" 'lung' = $value"><xsl:value-of select="'lung'"/></xsl:when>
			<xsl:when test=" 'nasal_fluid' = $value"><xsl:value-of select="'nasal fluid'"/></xsl:when>
			<xsl:when test=" 'trachea' = $value"><xsl:value-of select="'trachea'"/></xsl:when>
			<xsl:when test=" 'placental_fluid' = $value"><xsl:value-of select="'placental fluid'"/></xsl:when>
			<xsl:when test=" 'other_cardio_respiratory' = $value"><xsl:value-of select="'other cardio-respiratory system'"/></xsl:when>

			<xsl:when test=" 'lymph_nodes' = $value"><xsl:value-of select="'lymph nodes'"/></xsl:when>
			<xsl:when test=" 'spleen' = $value"><xsl:value-of select="'spleen'"/></xsl:when>
			<xsl:when test=" 'thymus' = $value"><xsl:value-of select="'thymus'"/></xsl:when>
			<xsl:when test=" 'tonsils' = $value"><xsl:value-of select="'tonsils'"/></xsl:when>
			<xsl:when test=" 'other_immune' = $value"><xsl:value-of select="'other immune system'"/></xsl:when>

			<xsl:when test=" 'adrenal_gland' = $value"><xsl:value-of select="'adrenal gland or tissue'"/></xsl:when>
			<xsl:when test=" 'hair_hooves_feathers' = $value"><xsl:value-of select="'hair, feathers, hooves'"/></xsl:when>
			<xsl:when test=" 'liver' = $value"><xsl:value-of select="'liver'"/></xsl:when>
			<xsl:when test=" 'pancreas' = $value"><xsl:value-of select="'pancreas'"/></xsl:when>
			<xsl:when test=" 'pituitary' = $value"><xsl:value-of select="'pituitary gland'"/></xsl:when>
			<xsl:when test=" 'skin_hides' = $value"><xsl:value-of select="'skin or hides'"/></xsl:when>
			<xsl:when test=" 'thyroid_parathyroid' = $value"><xsl:value-of select="'thyroid or parathyroid'"/></xsl:when>
			<xsl:when test=" 'other_skin_glandular' = $value"><xsl:value-of select="'other skin or glandular system'"/></xsl:when>

			<xsl:when test=" 'adipose' = $value"><xsl:value-of select="'adipose or omentum'"/></xsl:when>
			<xsl:when test=" 'ascites' = $value"><xsl:value-of select="'acscites'"/></xsl:when>
			<xsl:when test=" 'antler_velvet' = $value"><xsl:value-of select="'antler velvet'"/></xsl:when>
			<xsl:when test=" 'serum' = $value"><xsl:value-of select="'serum'"/></xsl:when>
			<xsl:when test=" 'whole_blood' = $value"><xsl:value-of select="'whole blood'"/></xsl:when>
			<xsl:when test=" 'plasma' = $value"><xsl:value-of select="'plasma'"/></xsl:when>
			<xsl:when test=" 'embryonic_tissue' = $value"><xsl:value-of select="'embryonic tissue'"/></xsl:when>
			<xsl:when test=" 'fetal_tissue' = $value"><xsl:value-of select="'fetal tissue'"/></xsl:when>
			<xsl:when test=" 'bone_marrow' = $value"><xsl:value-of select="'Wyombone marrowing'"/></xsl:when>
			<xsl:when test=" 'eyes_cornea' = $value"><xsl:value-of select="'eyes or cornea'"/></xsl:when>
			<xsl:when test=" 'gall_bladder' = $value"><xsl:value-of select="'gall bladder'"/></xsl:when>
			<xsl:when test=" 'other_fluids_tissues' = $value"><xsl:value-of select="'other types of tissues or fluids'"/></xsl:when>

			<xsl:when test=" 'acute_alcohol' = $value"><xsl:value-of select="'Acute Alcoholism'"/></xsl:when>
			<xsl:when test=" 'acute_anxiety' = $value"><xsl:value-of select="'Acute anxiety state'"/></xsl:when>
			<xsl:when test=" 'acute_infectious' = $value"><xsl:value-of select="'Acute infectious respiratory syndromes'"/></xsl:when>
			<xsl:when test=" 'acute_inflammatory' = $value"><xsl:value-of select="'Acute inflammatory and debilitating arthiritis'"/></xsl:when>
			<xsl:when test=" 'acute_psychotic' = $value"><xsl:value-of select="'Acute psychotic conditions'"/></xsl:when>
			<xsl:when test=" 'addiction' = $value"><xsl:value-of select="'Addiction (except nicotine addiction)'"/></xsl:when>
			<xsl:when test=" 'ateriosclerosis' = $value"><xsl:value-of select="'Ateriosclerosis'"/></xsl:when>
			<xsl:when test=" 'appendicitis' = $value"><xsl:value-of select="'Appendicitis'"/></xsl:when>
			<xsl:when test=" 'asthma' = $value"><xsl:value-of select="'Asthma'"/></xsl:when>
			<xsl:when test=" 'cancer' = $value"><xsl:value-of select="'Cancer'"/></xsl:when>
			<xsl:when test=" 'congest_heart_fail' = $value"><xsl:value-of select="'Congestive heart failure'"/></xsl:when>
			<xsl:when test=" 'convulsions' = $value"><xsl:value-of select="'Convulsions'"/></xsl:when>
			<xsl:when test=" 'dementia' = $value"><xsl:value-of select="'Dementia'"/></xsl:when>
			<xsl:when test=" 'depression' = $value"><xsl:value-of select="'Depresssion'"/></xsl:when>
			<xsl:when test=" 'diabetes' = $value"><xsl:value-of select="'Diabetes'"/></xsl:when>
			<xsl:when test=" 'gangrene' = $value"><xsl:value-of select="'Gangrene'"/></xsl:when>
			<xsl:when test=" 'glaucoma' = $value"><xsl:value-of select="'Glaucoma'"/></xsl:when>
			<xsl:when test=" 'haematologic_bleeding' = $value"><xsl:value-of select="'Haematologic bleeding disorders'"/></xsl:when>
			<xsl:when test=" 'hepatitis' = $value"><xsl:value-of select="'Hepatitis'"/></xsl:when>
			<xsl:when test=" 'hypertension' = $value"><xsl:value-of select="'Hypertension'"/></xsl:when>
			<xsl:when test=" 'nausea_pregnancy' = $value"><xsl:value-of select="'Nausea and vomiting of pregnancy'"/></xsl:when>
			<xsl:when test=" 'obesity' = $value"><xsl:value-of select="'Obesity'"/></xsl:when>
			<xsl:when test=" 'rheumatic_fever' = $value"><xsl:value-of select="'Rheumatic fever'"/></xsl:when>
			<xsl:when test=" 'septicemia' = $value"><xsl:value-of select="'Septicemia'"/></xsl:when>
			<xsl:when test=" 'sex_transmit_disease' = $value"><xsl:value-of select="'Sexually transmitted disease'"/></xsl:when>
			<xsl:when test=" 'strangulated_hernia' = $value"><xsl:value-of select="'Strangulated hernia'"/></xsl:when>
			<xsl:when test=" 'thrombotic_embolic_disorder' = $value"><xsl:value-of select="'Thrombotic and Embolic Disorder'"/></xsl:when>
			<xsl:when test=" 'thyroid_disease' = $value"><xsl:value-of select="'Thyroid disease'"/></xsl:when>
			<xsl:when test=" 'ulcer_gastro' = $value"><xsl:value-of select="'Ulcer of gastro-intestinal tract'"/></xsl:when>
			<xsl:when test=" 'hospital' = $value"><xsl:value-of select="'Hospital'"/></xsl:when>
			<xsl:when test=" 'food_processing' = $value"><xsl:value-of select="'Food Processing'"/></xsl:when>
			<xsl:when test=" 'medical_instruments' = $value"><xsl:value-of select="'Medical Instruments'"/></xsl:when>
			<xsl:when test=" 'domestic' = $value"><xsl:value-of select="'Domestic'"/></xsl:when>
			<xsl:when test=" 'barn' = $value"><xsl:value-of select="'Barn'"/></xsl:when>
			<xsl:when test=" 'institutional_industrial' = $value"><xsl:value-of select="'Institutional / Industrial'"/></xsl:when>
			<xsl:otherwise>
				Can't find the value: <xsl:value-of select="$value"/>
			</xsl:otherwise>
		</xsl:choose>		
	</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="no" externalpreview="yes" url="file:///c:/Users/hcuser/Downloads/hcreppi-2019-06-11-1000.xml" htmlbaseurl="" outputurl="file:///c:/SPM/test/product.html" processortype="saxon8"
		          useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath=""
		          postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="">
			<parameterValue name="cssFile" value="'file:///C:/Users/hcuser/git/XSLT/Pharma-Bio-REP/v_3_0/Style-Sheets/ip400-1.css'"/>
			<parameterValue name="labelFile" value="'file:///C:/Users/hcuser/git/XSLT/Regulatory-Enrolment-Process-REP/v_1_0/Style-Sheets/hp-ip400-labels.xml'"/>
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