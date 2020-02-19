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
				<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" type="text/css" rel="stylesheet" />
				<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" />
				<style>
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
    background-color: transparent;
    display: table;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
.table tbody tr td, .table tbody tr th, .table tfoot tr td, .table tfoot tr th, .table thead tr td, .table thead tr th {
    padding: 8px;
    line-height: 1.4375;
    vertical-align: top;
    border-top: 1px solid #ddd;
}
thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}
table.dataTable, table.dataTable td, table.dataTable th {
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
td, th {
    padding: 0
}
table.dataTable {
    border-collapse: separate;
    border-spacing: 0;
    margin: 0 auto;
    width: 100% !important;
}
table.dataTable, table.dataTable td, table.dataTable th {
    -webkit-box-sizing: content-box;
    -moz-box-sizing: content-box;
    box-sizing: content-box;
}
.panel .table-responsive:last-child .table:last-child, .panel .table:last-child {
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
}
.dataTables_wrapper .dataTables_scroll, table.dataTable {
    clear: both;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
.table-striped tbody tr:nth-child(odd) {
    background-color: #f5f5f5;
}
table.dataTable tbody tr {
    background-color: #fff;
}
.row {
    margin-left: -15px;
    margin-right: 15px;
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
.col-md-12 {
	width: 100%;
}
.col-xs-6 {
    width: 48%;
}
.col-md-5 {
    width: 40%;
}
.col-xs-2 {
    width: 16.6666666667%;
}
.col-xs-1 {
    width: 8.3333333333%
}
.col-xs-11 {
    width: 91.6666666667%
}

legend {
    padding-inline-start: 2px;
    padding-inline-end: 2px;
    display: block;
    width: 100%;
    padding: 0;
    margin-bottom: 23px;
    font-size: 24px;
    line-height: inherit;
    color: #333;
    border: 0;
    border-bottom: 0;
    float: left;
}
.form-group {
    margin-bottom: 15px;
}
.col-md-6 {
    width: 48%;
}
.col-xs-3 {
    width: 25%;
}
.col-md-3{
	width:25%;
}
.col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9 {
    float: left;
}
.alert-info, .label-info, .label-info[href]:active, .label-info[href]:focus, .label-info[href]:hover, details.alert.alert-info, details.alert[open].alert-info
 {
    background: #d7faff;
    border-color: #269abc;
}
.alert-danger, .alert-info, .alert-success, .alert-warning, .label-danger, .label-danger[href]:active, .label-danger[href]:focus, .label-danger[href]:hover, .label-default, .label-default[href]:active, .label-default[href]:focus, .label-default[href]:hover, .label-info, .label-info[href]:active, .label-info[href]:focus, .label-info[href]:hover, .label-primary, .label-primary[href]:active, .label-primary[href]:focus, .label-primary[href]:hover, .label-success, .label-success[href]:active, .label-success[href]:focus, .label-success[href]:hover, .label-warning, .label-warning[href]:active, .label-warning[href]:focus, .label-warning[href]:hover {
    color: #000;
}
.alert-warning, .label-warning, .label-warning[href]:active, .label-warning[href]:focus, .label-warning[href]:hover, details.alert.alert-warning, details.alert[open].alert-warning {
    background: #f9f4d4;
    border-color: #f90;
}
.alert-success, .label-success, .label-success[href]:active, .label-success[href]:focus, .label-success[href]:hover, details.alert.alert-success, details.alert[open].alert-success {
    background: #d8eeca;
    border-color: #278400;
}
.alert, .label {
    border-radius: 0;
    border-style: solid;
    border-width: 0 0 0 4px;
}
.alert {
    padding: 15px;
    margin-bottom: 23px;
    border: 1px solid transparent;
}
ul {
    display: block;
	float:left;
    list-style-type: disc;
    margin-left: 1em;
    margin-right: 1em;
    <!-- margin-inline-start: 0px; -->
    <!-- margin-inline-end: 0px; -->
    padding-left: 40px;
}
ol, ul {
    margin-top: 0;
    margin-bottom: 11.5px;
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
span.normalWeight {
	font-weight: 100;
}
.padLeft3 {
	padding-left: 3px;
}
.nowrap {
	white-space: nowrap;
}
.out {
    display: none !important;
}
.nav {
    margin-bottom: 0;
    padding-left: 0;
    list-style: none
}

.nav:after, .nav:before {
    content: " ";
    display: table
}
.nav:after {
    clear: both
}

.nav > li {
    position: relative;
    display: block
}

.nav > li > a {
    position: relative;
    display: block;
    padding: 10px 15px
}
.nav > li > a:focus, .nav > li > a:hover {
    text-decoration: none;
    background-color: #eee
}

.nav > li.disabled > a {
    color: #767676
}

.nav > li.disabled > a:focus, .nav > li.disabled > a:hover {
    color: #767676;
    text-decoration: none;
    background-color: transparent;
    cursor: not-allowed
}

.nav .open > a, .nav .open > a:focus, .nav .open > a:hover {
    background-color: #eee;
    border-color: #295376
}

.nav .nav-divider {
    height: 1px;
    margin: 10.5px 0;
    overflow: hidden;
    background-color: #e5e5e5
}

.nav > li > a > img {
    max-width: none
}

.nav-tabs {
    border-bottom: 1px solid #ddd
}

.nav-tabs > li {
    float: left;
    margin-bottom: -2px
}

.nav-tabs > li > a {
    margin-right: 2px;
    line-height: 1.4375;
    border: 1px solid transparent;
    border-radius: 4px 4px 0 0
}

.nav-tabs > li > a:hover {
    border-color: #eee #eee #ddd
}

.nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover {
    color: #555;
    background-color: #fff;
    border: 1px solid #ddd;
    border-bottom-color: transparent;
    cursor: default
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box
}

</xsl:text>
				</style>
				<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
				<script src="https://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js" type="text/javascript" charset="utf-8"></script>
				<script type="text/javascript">
					var myTables = {'formulation': [{'class':'.table-ingredients', 'sortCols':[[1,'asc'],[3,'asc']], 'columnDefs':[{ "orderable": false, "targets": [0] }]},
													{'class':'.table-container', 'sortCols':[[1,'asc']], 'columnDefs':[{ "orderable": false, "targets": [0] }]},
													{'class':'.table-container-details', 'sortCols':[[1,'asc']], 'columnDefs':[{ "orderable": false, "targets": [0] }]}],
									'appendix': [{'class':'.table-tissues','sortCols':[[0,'asc']], 'columnDefs':[]},
												 {'class':'.table-animal','sortCols':[[0,'asc']], 'columnDefs':[]}
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
						var next = $(e).closest('tr').next();
						var hasDetail = $(next).attr('data-detail');
						if( hasDetail ){
							$(next).remove();
							var child =$(e).find(".fa-caret-down");
							child.removeClass('fa-caret-down');
							child.addClass('fa-caret-right');
						} else {
							var value = $(e).children()[$(e).children().length - 1].innerHTML;
							var $nodeTbl = $(value);
							var $nodeTr = $nodeTbl.find('tr')[0];
							$(e).closest('tr').after($nodeTr);
							var nodeTd = $(e).closest('tr').next().children()[0];
							if(initChild){
								$.each(tables, function(index, e){
									var nodeTable = $(nodeTd).find(e['class']);
									initSubtable(nodeTable, e['sortCols'], e['columnDefs']);
								});
							}
							var child =$(e).closest('tr').children().first();
							$(child).removeClass('fa-caret-right');
							$(child).addClass('fa-caret-down');
						}
					};
					function initSubtable(node, sortCols, columnDefs){
						$(node).dataTable({
							"paging": false,
							"info" : false,
							"order": sortCols, //[[1,"asc"],[3,"asc"]],
							"ordering": true,
							"searching": false,
							"columnDefs": columnDefs
						}); 
					};
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
				{ 'width': '15%', "targets": [2] },{ 'width': '10%', "targets": [3,4] },{ 'width': '0', "targets": [5] }
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
		<h1>Mod&#232;le d'information sure le produit: Processus d'inscription r&#233;glementaire (PIR) <xsl:if test="software_version != ''">(Version: <xsl:value-of select="software_version"/>)</xsl:if></h1>
		<div class="well well-sm" >
			<table border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;">
				<tr>
					<th style="text-align: center;font-weight:bold;">Numéro de la compagnie</th>
					<th style="text-align: center;font-weight:bold;">Numéro de dossier</th>
					<th style="text-align: center;font-weight:bold;">Date de la derni&#232;re enregistrement</th>
				</tr>
				<tr>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:value-of select="company_id" /></span> </td>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:value-of select="dossier_id" /></span> </td>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:value-of select="date_saved" /></span> </td>
				</tr>
			</table>
		</div>
		<section>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2 class="panel-title">Information sur le produit</h2>
				</div>
					<div class="well well-sm" >
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Type de dossier:&#160;</strong>
								<span class="mouseHover"><xsl:value-of select="dossier_type"/></span>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Nom du produit </strong>
								<div class="col-xs-12"><span class="mouseHover"><xsl:value-of select="product_name"/></span></div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Nom propre, nom usuel ou nom g&#233;n&#233;rique</strong>
								<div class="col-xs-12"><span class="mouseHover"><xsl:value-of select="proper_name"/></span></div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<strong>Adresse o&#249; le formulaire de d&#233;claration de m&#233;dicament (FDM)/l'avis de conformit&#233; (AC) doivent &#234;tre envoy&#233;s (lorsque n&#233;cessaire):</strong>
							</div>
							<xsl:choose>
							<xsl:when test="manufacturer = 'Y' or mailing = 'Y' or this_activity = 'Y' or importer = 'Y'">
								<xsl:if test="manufacturer = 'Y'">
									<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="manufacturer"/></xsl:call-template>
									<span style="margin-left:40px;" class="mouseHover">Fabricant / Promoteur</span>
									</div>
								</xsl:if>
								<xsl:if test="mailing = 'Y'">
									<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="mailing"/></xsl:call-template>
									<span style="margin-left:40px;" class="mouseHover">Courrier r&#233;glementaire / contact annuel</span>
									</div>
								</xsl:if>
								<xsl:if test="this_activity = 'Y'">
									<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="this_activity"/></xsl:call-template>
									<span style="margin-left:40px;" class="mouseHover">Personne-ressource pour cette activit&#233; r&#233;glementaire</span>
									</div>
								</xsl:if>
								<xsl:if test="importer = 'Y'">
									<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="importer"/></xsl:call-template>
									<span style="margin-left:40px;" class="mouseHover">Importateur canadien</span>
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
							<strong>Importateur</strong>
							<table class="table dataTable table-hover table-condensed table-striped " id="importCompany" border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;">
								<thead>
								<tr>
									<th style="width:15px;"></th>
									<th ><strong>Numéro de la compagnie de l'importateur</strong></th>
									<th style="width:70%;"><strong>Nom d'entreprise de l'importateur</strong></th>
									<th class="out">Hidden</th>
								</tr>
								</thead>
								<tbody>
								<xsl:for-each select="/DRUG_PRODUCT_ENROL/importer_record">
								<tr onclick="showDetail(this, '3', false, myTables['importer']);">
									<td class="fa fa-caret-right fa-lg fa-fw" style="width:15px;"></td>
									<td><span class="mouseHover"><xsl:value-of select="importer_company_id" /></span> </td>
									<td><span class="mouseHover"><xsl:value-of select="importer_company_name" /></span> </td>
									<td class="out"><table><tr data-detail="true"><td colspan="3">
										<fieldset>
<!--											<legend><h4>&#160;&#160;&#160;&#160;Enregistrement d'importateur&#160;<xsl:value-of select="position()"/></h4></legend>-->
											<div>
												<section class="panel panel-default">
													<div class="panel-body">
														<div class="well well-sm">
															<div class="row">
															<div class="form-group col-md-12">
																<strong>Numéro de la compagnie de l'importateur:&#160;</strong><span class="mouseHover"><xsl:value-of select="importer_company_id"/></span>
															</div>
															</div>
															<div class="row">
															<div class="form-group col-md-12"><strong>Nom d'entreprise de l'importateur: &#160;</strong><span class="mouseHover"><xsl:value-of select="importer_company_name"/></span></div>
															</div>
															<div class="row">
															<div class="form-group col-md-12"><strong>Rue: &#160;</strong><span class="mouseHover"><xsl:value-of select="street_address"/></span></div>
															</div>
															<div class="row">
															<div class="form-group col-md-6"><strong>Ville: &#160;</strong><span class="mouseHover"><xsl:value-of select="city"/></span></div>
															<div class="form-group col-md-6"><strong>Pays: &#160;</strong><span class="mouseHover"><xsl:value-of select="country"/></span></div>
															</div>
															<div class="row">
															<div class="form-group col-md-6"><strong>Province: &#160;</strong>
																<xsl:choose>
																<xsl:when test="(country/@id = 'CAN') or (country/@id = 'USA')">
																	<xsl:value-of select="province_lov"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="province_text"/>
																</xsl:otherwise>
																</xsl:choose>
															</div>
															<div class="form-group col-md-6"><strong>Code postale: &#160;</strong><span class="mouseHover"><xsl:value-of select="postal_code"/></span></div>
															<div class="form-group col-md-6"><strong>No. de téléphone: &#160;</strong><span class="mouseHover"><xsl:value-of select="phone_num"/></span></div>
															<div class="form-group col-md-6"><strong>Numéro de l'extension: &#160;</strong><span class="mouseHover"><xsl:value-of select="phone_ext"/></span></div>
															<div class="form-group col-md-6"><strong>No. de fax : &#160;</strong><span class="mouseHover"><xsl:value-of select="fax_num"/></span></div>
															<div class="form-group col-md-6"><strong>Courriel: &#160;</strong><span class="mouseHover"><xsl:value-of select="email"/></span></div>
															<div class="form-group col-md-6"><strong>Identificateur  d'acheminement: &#160;</strong><span class="mouseHover"><xsl:value-of select="routing_id"/></span></div>
															</div>

														</div>
													</div>
												</section>
											</div>
										</fieldset>
									</td></tr></table>
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
								<strong>Usage du m&#233;dicament:&#160;</strong>
								<span class="mouseHover"><xsl:value-of select="drug_use"/></span>
								
							</div>
						</div>
						<xsl:if test="drug_use/@id = 'DISINFECT'">
							<div class="row">
								<div class="col-xs-12">
								<div class="col-xs-12">
									<strong>Type de d&#233;sinfectant:</strong>
								</div>
								</div>
							</div>
							<div class="row">
							<div class="col-xs-12">
							<xsl:for-each select="disinfectant_type/*">
								<xsl:if test=" current() = 'Y'">
										<div class="col-xs-12">
										<div class="col-xs-12">
											<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
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
								<strong>Statut sur l'annexe et prescription (s&#233;lectionner tout ce qui s'applique): le produit est</strong>
							</div>
							<xsl:choose>
							<xsl:when test=" is_sched_c ='Y' or is_sched_d = 'Y' or is_prescription_drug_list = 'Y' or is_prescription_drug_list = 'Y' or is_regulated_cdsa = 'Y' or is_non_prescription_drug = 'Y' or is_sched_a = 'Y'">
								<xsl:if test="is_sched_c = 'Y'">
								<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
									<span class="mouseHover">dans l'annexe C (produits radiopharmaceutiques) de la Loi sur les aliments et drogues</span>
								</div>
								</xsl:if>
								<xsl:if test="is_sched_d = 'Y'">
								<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
									<span class="mouseHover">figurant &#224; l'annexe D (produits biologiques) de la Loi sur les aliments et drogues</span>
								</div>
								</xsl:if>
								<xsl:if test="is_prescription_drug_list = 'Y'">
								<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
									<span class="mouseHover">sur la liste des m&#233;dicaments sur ordonnance</span>
								</div>
								</xsl:if>
								<xsl:if test="is_regulated_cdsa = 'Y'">
								<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
									<span class="mouseHover">r&#233;glement&#233; en vertu de la Loi r&#233;glementant certaines drogues et autres substances</span>
								</div>
								</xsl:if>
								<xsl:if test="is_non_prescription_drug = 'Y'">
								<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
									<span class="mouseHover">un m&#233;dicament sans ordonnance</span>
								</div>
								</xsl:if>
								<xsl:if test="is_sched_a = 'Y'">
								<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
									<span class="mouseHover">un m&#233;dicament sans ordonnance auquel une ou plusieurs des r&#233;clamations de l'Annexe A s'appliquent</span>
								</div>
								<xsl:if test="is_sched_a = 'Y'">

								<div class="row">
								<div class="col-xs-11" style="margin-left:60px;">
									<strong>Annexe A d&#233;tails des all&#233;gations</strong>
									<div class="panel panel-body" style="border: 1px solid black;">
										<div class="row">
											<div class="col-xs-12">Fournissez les informations ci-dessous pour les produits sans ordonnance qui ont associ&#233; des revendications de l'annexe A seulement.</div>
										</div>
										<div class="row">
										<div class="col-xs-12">
										<div class="col-xs-12">
										<strong>Num&#233;ro d'identification du m&#233;dicament (DIN), si existant</strong>
											:&#160;&#160;<span class="mouseHover"><xsl:value-of select="schedule_a_group/din_number"/></span>
										</div>
										</div>
										</div>
										<div class="row">
										<div class="col-xs-12">
										<div class="col-xs-12">
												<strong>Cochez la maladie ou le trouble vis&#233; par les all&#233;gations (au moins une)</strong>
										</div>
										</div>
										</div>
										<div class="row">
											<div class="col-xs-12">
													<xsl:for-each select="schedule_a_group/*">
													<xsl:if test="current() = 'Y'">
													<div class="col-xs-12">
													<div class="col-xs-12">
														<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
														<span class="mouseHover"><xsl:call-template name="converter"><xsl:with-param name="value" select="name()"/></xsl:call-template></span>
													</div>
													</div>
													</xsl:if>
													</xsl:for-each>
											</div>
										</div>
										<div class="col-xs-12">
											<strong>Indiquer les all&#233;gations/indications de l'annexe A associ&#233;es avec ce produit</strong>
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
								<xsl:if test="is_drug_admin = 'Y'">
								<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
									<span class="mouseHover">un médicament qui peut être vendu sans ordonnance, mais doit être administré uniquement sous la surveillance d’un praticien</span>
								</div>
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
								<strong>Indication/emploi/posologie propos&#233; (y compris la dose quotidienne maximale)</strong>
								<div class="col-xs-12">
									<span class="mouseHover"><xsl:value-of select="proposed_indication"/></span>
								</div>
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
										<li onclick="selectedTab(1);" tabindex="0" id="tab1"><a href="#tabpanel1"><strong>Ingr&#233;dient ou mat&#233;riel source humaine ou d'animale</strong></a>
										</li>
									</ul>
									<div style="clear:both;"></div>
									<div class="tabpanels">
										<div id="tabpanel0" class="active">
											<table class="table table-hover table-condensed table-striped table-formulation" border="1">
											<thead>
												<tr>
													<th style="width:2%;"></th>
													<th style="width:8%;"><strong>Numéro</strong></th>
													<th style="width:70%;"><strong>Nom de la formulation</strong></th>
													<th style="width:20%;"><strong>Forme posologique</strong></th>
													<th class="out"></th>
												</tr>
											</thead>
											<tbody>
												<xsl:for-each select="formulation_group/formulation_details">
													<tr onclick="showDetail(this, '4', true, myTables['formulation']);">
														<td class="fa fa-caret-right fa-lg fa-fw"></td>
														<td><xsl:value-of select="formulation_id"/></td>
														<td><xsl:value-of select="formulation_name"/></td>
														<td><xsl:value-of select="dosage_form_group/dosage_form"/></td>
														<td class="out"><table><tr data-detail="true"><td colspan="4">
															<fieldset>
																<legend><h4>&#160;&#160;&#160;&#160;Enregistrement de la formulation&#160;<xsl:value-of select="formulation_id"/></h4></legend>
																<div>
																	<section class="panel panel-default">
																		<div class="panel-body">
																			<div class="well well-sm">
																				<div class="row">
																				<div class="form-group col-md-12">
																				<strong>A. Nom de la formulation:&#160;</strong><span class="mouseHover"><xsl:value-of select="formulation_name"/></span>
																				</div>
																				</div>
																				<div class="row">
																				<div class="form-group col-md-12">
																				<strong>B. Forme posologique:&#160;</strong><span class="mouseHover"><xsl:value-of select="dosage_form_group/dosage_form"/></span>&#160;<span><xsl:value-of select="dosage_form_group/dosage_form_other"/></span>
																				</div>
																				</div>
																				<div class="row">
																				<div class="form-group col-md-12">
																				<strong>C.&#160;Ingr&#233;dients</strong>
																				<br/>
																					<div class="row">
																						<div class="col-md-12">
																							<table class="table table-hover table-condensed table-striped table-ingredients" border="1" >
																							<thead>
																								<tr>
																									<th style="width:2%"></th>
																									<th>Numéro</th>
																									<th>R&#244;le</th>
																									<th>Variante</th>
																									<th>Ingr&#233;dient</th>
																									<th>Quantities</th>
																									<th>Par</th>
																									<th>Calcul&#233; comme base</th>
																									<th>Nanomat&#233;riau</th>
																									<th>Source humaine ou animale</th>
																									<th class="out">Hide</th>
																								</tr>
																							</thead>
								<tbody>
																								<xsl:for-each select="formulation_ingredient">
																								<tr onclick="showDetail(this, '10', false, null);">
																									<td class="fa fa-caret-right fa-lg fa-fw" style="border:0px; width:23px;"></td>
																									<td><xsl:value-of select="ingredient_id"/></td>
																									<td><xsl:value-of select="ingredient_role"/></td>
																									<td><xsl:value-of select="variant_name"/></td>
																									<td><xsl:value-of select="ingredient_name"/></td>
																									<td><xsl:choose><xsl:when test="strength/operator/@id = 'NGT'">&lt;&#160;</xsl:when><xsl:when test="strength/operator/@id = 'NLT'">&gt;&#160;</xsl:when></xsl:choose>
																									<xsl:value-of select="strength/data1"/><xsl:if test="strength/data2 != ''">&#160;<strong>&#224;</strong>&#160;<xsl:value-of select="strength/data2"/></xsl:if>
																										&#160;<xsl:choose><xsl:when test="units_other = ''"><xsl:value-of select="units"/></xsl:when><xsl:otherwise><xsl:value-of select="units"/></xsl:otherwise></xsl:choose></td>
																									<td><xsl:value-of select="per_value"/>&#160;<xsl:choose><xsl:when test="per_units_other_details = ''"><xsl:value-of select="per_units"/></xsl:when><xsl:otherwise><xsl:value-of select="per_units_other_details"/></xsl:otherwise></xsl:choose>/<xsl:value-of select="per"/></td>
																									<td><xsl:value-of select="is_base_calc"/></td>
																									<td><xsl:choose><xsl:when test="nanomaterial_details = ''"><xsl:value-of select="nanomaterial"/></xsl:when><xsl:otherwise><xsl:value-of select="nanomaterial_details"/></xsl:otherwise></xsl:choose></td>
																									<td><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_human_animal_src"/></xsl:call-template></td>
																									<td class="out"><table><tr data-detail="true"><td colspan="10">
																										<fieldset>
																											<legend>Ingr&#233;dients&#160;<xsl:value-of select="position()"/></legend>
																											<div class="row">
																												<div class="col-md-6">
																												<strong>R&#244;le:&#160;</strong>
																												<span class="mouseHover"><xsl:value-of select="ingredient_role"/></span>
																												</div>
																												<xsl:if test="ingredient_role/@id = 'NONMED'">
																													<div class="col-md-6">
																													<strong>Nom de la variante du formulation:&#160;</strong><span class="mouseHover"><xsl:value-of select="variant_name"/></span>
																													</div>
																													<div class="col-md-6">
																													<strong>But:&#160;</strong><span class="mouseHover"><xsl:value-of select="purpose"/></span>
																													</div>
																												</xsl:if>
																												<div class="col-md-6">
																												<strong>Nom de l'ingr&#233;dient:&#160;</strong><span class="mouseHover"><xsl:value-of select="ingredient_name"/></span>
																												</div>
																											</div>
																											<div class="row">
																												<div class="col-md-6"><strong>Chemical Abstract Services:&#160;</strong><span class="mouseHover"><xsl:value-of select="cas_number"/></span></div>
																												<div class="col-md-6"><strong>Norme:&#160;</strong><span class="mouseHover"><xsl:value-of select="ingred_standard"/></span></div>
																											</div>
																											<div class="row">
																												<div class="col-md-6"><strong>Concentration:&#160;</strong>
																												<span class="mouseHover"><xsl:value-of select="./strength/operator"/></span>&#160;
																												<xsl:if test="strength/operator/@id = 'RA'">
																													<span class="mouseHover"><strong>Limite inf&#233;rieure</strong></span>:&#160;
																												</xsl:if>
																												<span  class="mouseHover"><xsl:value-of select="strength/data1"/></span>&#160;
																												<xsl:if test="strength/operator/@id = 'RA'">&#160;&#160;
																													<span class="mouseHover"><strong>Limite sup&#233;rieure</strong></span>:&#160;
																													<span class="mouseHover"><xsl:value-of select="strength/data2"/></span>&#160;
																												</xsl:if>
																												<xsl:choose>
																												<xsl:when test="units_other != 'null' and units_other != ''">
																													<span class="mouseHover"><xsl:value-of select="units_other"/></span>
																												</xsl:when>
																												<xsl:otherwise>
																													<span class="mouseHover"><xsl:value-of select="units"/></span>
																												</xsl:otherwise>
																												</xsl:choose>
																												
																												</div>
																													<xsl:variable name="perUnit">
																														<xsl:value-of select="per"/>
																													</xsl:variable>
																												<div class="col-md-3">
																													<strong>Per</strong>&#160; <span class="mouseHover"><xsl:value-of select="per"/></span>&#160;
																													<span class="mouseHover"><xsl:value-of select="per_value"/></span>&#160;
																													<xsl:choose>
																													<xsl:when test="per_units_other_details != 'null' and per_units_other_details != ''">
																															<span class="mouseHover"><xsl:value-of select="per_units_other_details"/></span>
																													</xsl:when>
																													<xsl:otherwise>
																															<span class="mouseHover"><xsl:value-of select="per_units"/></span>
																													</xsl:otherwise>
																													</xsl:choose>
																		
																												</div>
																												<xsl:if test="is_base_calc != ''">
																												<div class="col-md-12"><strong>Calcul&#233; comme based?&#160;</strong>
																													<span class="mouseHover"><xsl:value-of select="is_base_calc"/></span>
																												</div>
																												</xsl:if>
																											</div>
																											<div class="row">
																												<div class="col-md-6"><strong>Est-ce un nanomat&#233;riau?&#160;</strong>
																													<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_nanomaterial"/></xsl:call-template></span>
																												</div>
																												<div class="col-md-6"><strong>Source d'animale ou humaine?&#160;</strong>
																													<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_human_animal_src"/></xsl:call-template></span>
																												</div>
																											</div>
																											<xsl:if test="is_nanomaterial = 'Y'">
																											<div class="row">
																												<div class="col-md-12"><strong>Nanomat&#233;riau:&#160;</strong>
																													<span class="mouseHover"><xsl:value-of select="nanomaterial"/></span>
																													<xsl:if test="nanomaterial_details != 'null' and nanomaterial_details != ''">&#160;&#160;
																														<strong>Indiquer le type de nanomat&#233;riau:&#160;</strong>
																														<span class="mouseHover"><xsl:value-of select="nanomaterial_details"/></span>
																													</xsl:if>
																												</div>
																											</div>
																											</xsl:if>
																										</fieldset>
																										</td></tr></table>
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
																				<strong>D.&#160; Est-ce un mat&#233;riel(aux) de source humaine et/ou animale &#233;tait utilis&#233;(s) &#224; l'une ou l'autre &#233;tape de la fabrication du produit?&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_animal_human_material"/></xsl:call-template></span>
																				</div>
																			<xsl:if test="is_animal_human_material = 'Y'">
																			<div class="col-md-12">
																				<table class="table table-hover table-condensed table-striped table-container" id="expand-table-142" border="1">
																				<thead>
																					<tr>
																						<th style="width:2%"></th>
																						<th>Nom du mat&#233;riel</th>
																						<th>Chemical Abstract Services</th>
																						<th>Pr&#233;sence dans le contenant final</th>
																						<th class="out">Hide</th>
																					</tr>
																				</thead>
																				<tbody>
																					<xsl:for-each select="material_ingredient">
																						<tr onclick="showDetail(this, '4', false, null);">
																							<td class="fa fa-caret-right fa-lg fa-fw" style="border:0px; width:23px;"></td>
																							<td><xsl:value-of select="./ingredient_name"/></td>
																							<td><xsl:value-of select="./cas_number"/></td>
																							<td><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="in_final_container"/></xsl:call-template></td>
																							<td class="out"><table><tr data-detail="true"><td colspan="4">
																								<fieldset>
																<legend>D&#233;tail de mat&#233;riaux de source d'animale et/ou humaine&#160;<xsl:value-of select="position()"/></legend>
																<div class="row">
																	<div class="col-md-6">
																	<strong>Nom du mat&#233;riel:&#160;<span class="normalWeight mouseHover"><xsl:value-of select="./ingredient_name"/></span></strong>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-6">
																		<strong>Chemical Abstract Services:&#160;</strong><span class="mouseHover"><xsl:value-of select="./cas_number"/></span>
																	</div>
																	<div class="col-md-6">
																		<strong>Norme:&#160;</strong><span class="mouseHover"><xsl:value-of select="./ingred_standard"/></span>
																	</div>
																	<div class="col-md-6">
																		<strong>Pr&#233;sence dans le contenant final?&#160;</strong>
																		<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="in_final_container"/></xsl:call-template></span>
																	</div>
																</div>

															</fieldset>
																								</td></tr></table>
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
																				<strong>E.&#160;Type de contenant, capacit&#233; de l'emballage et dur&#233;e de vie </strong>
																				</div>
																			<div class="col-md-12">
																				<table class="table table-hover table-condensed table-striped table-container-details" id="expand-table-143" border="1">
																				<thead>
																					<tr>
																						<th style="width:2%"></th>
																						<th>Type de contenant</th>
																						<th>Capacit&#233; de l'emballage</th>
																						<th>Dur&#233;e de vie</th>
																						<th>&#233;cart de temp&#233;rature (Celsius)</th>
																						<th class="out">Hidden</th>
																					</tr>
																				</thead>
																				<tbody>
																					<xsl:for-each select="container_group/container_details">
																						<tr onclick="showDetail(this, '3', false, null);">
																							<td class="fa fa-caret-right fa-lg fa-fw" style="border:0px; width:23px;"></td>
																							<td><xsl:value-of select="container_type"/></td>
																							<td><xsl:value-of select="package_size"/></td>
																							<td><xsl:value-of select="shelf_life_number"/>&#160;<xsl:value-of select="shelf_life_unit"/></td>
																							<td><xsl:value-of select="temperature_min"/><xsl:if test="temperature_max != ''">&#160;&#224;&#160;<xsl:value-of select="temperature_max"/></xsl:if></td>
																							<td class="out"><table><tr data-detail="true"><td colspan="5">
															<fieldset>
																<legend>D&#233;tails sur le type de contenant&#160;<xsl:value-of select="position()"/></legend>
																<div class="row">
																	<div class="col-md-12">
																	<strong>Type de contenant:&#160;</strong><span class="mouseHover"><xsl:value-of select="container_type"/></span>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-12">
																	<strong>Capacit&#233; de l'emballage:&#160;</strong><span class="normalWeight mouseHover"><xsl:value-of select="package_size"/></span>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-6">
																		<strong>Dur&#233;e de vie:&#160;</strong>
																		<span class="mouseHover"><xsl:value-of select="shelf_life_number"/></span>&#160;
																		<span class="mouseHover"><xsl:apply-templates select="shelf_life_unit" /></span>
																	</div>
																	<div class="col-md-6">
																		<strong>&#233;cart de temp&#233;rature de:&#160;</strong>
																		<span class="normalWeight mouseHover"><xsl:value-of select="temperature_min"/></span>&#160;&#160;
																		<strong>&#224;:&#160;</strong>
																		<span class="normalWeight mouseHover"><xsl:value-of select="temperature_max"/></span>&#160;<strong>Celsius</strong>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-12">
																		<strong>Autres consid&#233;rations relatives &#224; la dur&#233;e de vie:&#160;</strong>
																	</div>
																	<div class="col-md-12">
																		<div class="col-xs-10">
																		<span class="mouseHover"><xsl:value-of select="other_shelf_life_considerations"/></span>
																		</div>
																	</div>
																</div>
															</fieldset>
																								</td></tr></table>
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
																				<strong>F.&#160;Voie d'administration</strong>
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
																				<strong>G.&#160;Pays de fabricatin pour ce produit</strong>
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
															</td></tr></table>
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
											</table>
										</div>
										<div class="out" id="tabpanel1" role="tabpanel">
											<table class="table table-hover table-condensed table-striped table-appendix" border="1">
											<thead>
												<tr>
													<th></th>
													<th>Nom</th>
													<th>Source de</th>
													<th>Syst&#232;me</th>
													<th>Syst&#232;me d&#233;tails</th>
													<th class="out"></th>
												</tr>
											</thead>
											<tbody>
												<xsl:for-each select="appendix4_group">
													<tr onclick="showDetail(this, '2', true, myTables['appendix'])">
														<td class="fa fa-caret-right fa-lg fa-fw" style="border:0px; width:23px;"></td>
														<td><xsl:value-of select="ingredient_name"/></td>
														<td><xsl:if test="human_sourced = 'Y'">Humaine</xsl:if><xsl:if test="human_sourced = 'Y' and animal_sourced = 'Y'"><br/></xsl:if><xsl:if test="animal_sourced = 'Y'">Animale</xsl:if></td>
														<td>
															<xsl:for-each select="tissues_fluids_section/*">
																<xsl:call-template name="converter"><xsl:with-param name="value" select="name(.)"/></xsl:call-template>
															</xsl:for-each>
														</td>
														<td>
															<xsl:for-each select="tissues_fluids_section/*">
																<xsl:for-each select="./*">
																<xsl:if test=" . = 'Y'">
																	<xsl:variable name="temp" select="name(.)"/>
																	<xsl:if test="$temp != 'other_nervous_details' and $temp != 'other_digestive_details' and $temp != 'other_musculo_skeletal_details' and $temp != 'other_reproductive_details' and $temp != 'other_cardio_respiratory_details' and $temp != 'other_immune_details' and $temp != 'other_skin_glandular_details' and $temp != 'other_fluids_tissues_details'">
																		<xsl:call-template name="converter"><xsl:with-param name="value" select="$temp"/></xsl:call-template><br/>
																	</xsl:if>
																</xsl:if>
																</xsl:for-each>
															</xsl:for-each>
														</td>
														<td class="out"> <table><tr data-detail="true"><td colspan="5">
															<fieldset>
																<legend>L'ingr&#233;dient ou mat&#233;riel&#160;<xsl:value-of select="ingredient_id"/></legend>
																<div class="row">
																	<div class="col-md-12">
																	<strong>Nom de l'ingr&#233;dient ou mat&#233;riel:&#160;</strong><span class="mouseHover"><xsl:value-of select="./ingredient_name"/></span>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-12">
																		<strong>Source de:&#160;</strong>
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
																		<header><h3 style="font-weight:300; padding-left:5px">Origine des tissus ou fluides</h3></header>
																		<div class="panel-body">
																			<table class="table table-hover table-condensed table-striped table-tissues" border="1">
																				<thead>
																					<tr>
																						<th style="background-color:white !important;">Syst&#232;me</th>
																						<th style="background-color:white !important;">Details du syst&#232;me</th>
																						<th style="background-color:white !important;">Autre d&#233;tails</th>
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
																			<header><h3 style="font-weight:300; padding-left:5px">Sources d'animales</h3></header>
																			<div class="panel-body">
																			<table class="table table-hover table-condensed table-striped table-animal" border="1">
																			<thead>
																					<th style="background-color:white !important;"><strong>Type d'animal</strong></th>
																					<th style="background-color:white !important;"><strong>D&#233;tails du type d'animal</strong></th>
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
																			  	<strong>L'&#226;ge des animaux est-il connu?&#160;</strong>
																				<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_animal_age_known"/></xsl:call-template></span>
																			  </div>
																			  <div class="col-md-3">
																			  	<xsl:if test="animal_sourced_section/is_animal_age_known = 'Y'">
																			  	<strong>L'&#226;ge des animaux en mois:&#160;</strong><span class="mouseHover"><xsl:value-of select="animal_sourced_section/animal_age"/></span>
																				</xsl:if>&#160;
																			  </div>
																			  <div class="col-md-6">
																			  	<strong>Population contr&#244;l&#233;e:&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_controlled_pop"/></xsl:call-template></span>
																			  </div>
																			</div>
																			<div class="row"><br/>
																			  <div class="col-md-6">
																			  	<strong>Lign&#233;e cellulaire:&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_cell_line"/></xsl:call-template></span>
																			  </div>
																			  <div class="col-md-6">
																			  	<strong>Animal d&#233;riv&#233; de la biotechnologie:&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_biotech_derived"/></xsl:call-template></span>
																			  </div><br/>
																			</div>
																			<div class="row"><br/></div>
																			<div class="row"><header><h3 style="padding-left: 15px; font-weight: 300;">Pays d'origines des animaux</h3></header></div>
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
														</td></tr></table>
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
		<xsl:value-of select="translate(substring($value,1,1), $smallcase, $uppercase)"/>
		<xsl:value-of select="translate(substring($value, 2), $uppercase, $smallcase)"/>
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
			<xsl:when test=" 'nervous_system' = $value"><xsl:value-of select="'Syst&#232;me nerveux'"/></xsl:when>
			<xsl:when test=" 'digestive_system' = $value"><xsl:value-of select="'Digestif'"/></xsl:when>
			<xsl:when test=" 'musculo_system' = $value"><xsl:value-of select="'musculo-squelettique'"/></xsl:when>
			<xsl:when test=" 'reproductive_system' = $value"><xsl:value-of select="'Reproductif'"/></xsl:when>
			<xsl:when test=" 'cardio_system' = $value"><xsl:value-of select="'Cardio-respiratoire'"/></xsl:when>
			<xsl:when test=" 'immune_system' = $value"><xsl:value-of select="'Immunitaire'"/></xsl:when>
			<xsl:when test=" 'skin_system' = $value"><xsl:value-of select="'Peau et glandulaire'"/></xsl:when>
			<xsl:when test=" 'other_system' = $value"><xsl:value-of select="'Autre tissues ou fluids'"/></xsl:when>

			<xsl:when test=" 'brain' = $value"><xsl:value-of select="'Cerveau'"/></xsl:when>
			<xsl:when test=" 'brain_stem' = $value"><xsl:value-of select="'Tronc c&#233;r&#233;bral'"/></xsl:when>
			<xsl:when test=" 'cerebellum' = $value"><xsl:value-of select="'Cervelet'"/></xsl:when>
			<xsl:when test=" 'cerebrospinal_fluid' = $value"><xsl:value-of select="'Liquide c&#233;phalorachidien'"/></xsl:when>
			<xsl:when test=" 'dorsal_root_ganglia' = $value"><xsl:value-of select="'Ganglion de la racine dorsale'"/></xsl:when>
			<xsl:when test=" 'dura_mater' = $value"><xsl:value-of select="'Dure-m&#232;re'"/></xsl:when>
			<xsl:when test=" 'hypothalmus' = $value"><xsl:value-of select="'hypothalamus'"/></xsl:when>
			<xsl:when test=" 'retina_optic' = $value"><xsl:value-of select="'R&#233;tine/nerf optique'"/></xsl:when>
			<xsl:when test=" 'spinal_cord' = $value"><xsl:value-of select="'Moelle &#233;pini&#232;re'"/></xsl:when>
			<xsl:when test=" 'trigerminal_ganglia' = $value"><xsl:value-of select="'Ganglion de Gasser'"/></xsl:when>
			<xsl:when test=" 'other_nervous' = $value"><xsl:value-of select="'Autre syst&#232;me nerveux '"/></xsl:when>

			<xsl:when test=" 'appendix' = $value"><xsl:value-of select="'Appendice'"/></xsl:when>
			<xsl:when test=" 'bile' = $value"><xsl:value-of select="'Bile'"/></xsl:when>
			<xsl:when test=" 'distal_ileum' = $value"><xsl:value-of select="'Il&#233;on distal'"/></xsl:when>
			<xsl:when test=" 'large_intestine' = $value"><xsl:value-of select="'Gros intestin'"/></xsl:when>
			<xsl:when test=" 'saliva_salivary' = $value"><xsl:value-of select="'Salive ou glande salivaire'"/></xsl:when>
			<xsl:when test=" 'small_intestine' = $value"><xsl:value-of select="'Intestin gr&#234;le, autre que lil&#233;on distal'"/></xsl:when>
			<xsl:when test=" 'stomach' = $value"><xsl:value-of select="'Estomac'"/></xsl:when>
			<xsl:when test=" 'other_digestive' = $value"><xsl:value-of select="'Autre syst&#232;me digestif'"/></xsl:when>

			<xsl:when test=" 'abdomen' = $value"><xsl:value-of select="'Abdomen'"/></xsl:when>
			<xsl:when test=" 'skull' = $value"><xsl:value-of select="'Cr&#226;ne'"/></xsl:when>
			<xsl:when test=" 'bones' = $value"><xsl:value-of select="'Os (autre que la colonne vert&#233;brale et le cr&#226;ne)'"/></xsl:when>
			<xsl:when test=" 'collagen' = $value"><xsl:value-of select="'collag&#232;ne'"/></xsl:when>
			<xsl:when test=" 'tendons_ligaments' = $value"><xsl:value-of select="'Tendons ou ligaments'"/></xsl:when>
			<xsl:when test=" 'vertebral_column' = $value"><xsl:value-of select="'Colonne vert&#233;brale'"/></xsl:when>
			<xsl:when test=" 'muscle' = $value"><xsl:value-of select="'Muscle'"/></xsl:when>
			<xsl:when test=" 'other_musculo_skeletal' = $value"><xsl:value-of select="'autre syst&#232;me musculo-squelettique'"/></xsl:when>

			<xsl:when test=" 'milk_products' = $value"><xsl:value-of select="'Lait/Produits laitiers'"/></xsl:when>
			<xsl:when test=" 'kidney' = $value"><xsl:value-of select="'Reins'"/></xsl:when>
			<xsl:when test=" 'colostrum' = $value"><xsl:value-of select="'colostrum'"/></xsl:when>
			<xsl:when test=" 'mammary_glands' = $value"><xsl:value-of select="'Glandes mammaires'"/></xsl:when>
			<xsl:when test=" 'ovaries' = $value"><xsl:value-of select="'Ovaires'"/></xsl:when>
			<xsl:when test=" 'placenta' = $value"><xsl:value-of select="'placenta'"/></xsl:when>
			<xsl:when test=" 'placental_fluid' = $value"><xsl:value-of select="'Fluide de placenta'"/></xsl:when>
			<xsl:when test=" 'semen' = $value"><xsl:value-of select="'Sperme'"/></xsl:when>
			<xsl:when test=" 'testes' = $value"><xsl:value-of select="'Testicules'"/></xsl:when>
			<xsl:when test=" 'urine' = $value"><xsl:value-of select="'Sang'"/></xsl:when>
			<xsl:when test=" 'other_reproductive' = $value"><xsl:value-of select="'Autre syst&#232;me r&#233;productif et urinaire'"/></xsl:when>

			<xsl:when test=" 'heart_pericardium' = $value"><xsl:value-of select="'Coeur/p&#233;ricarde'"/></xsl:when>
			<xsl:when test=" 'lung' = $value"><xsl:value-of select="'Poumon'"/></xsl:when>
			<xsl:when test=" 'nasal_fluid' = $value"><xsl:value-of select="'Fluide nasal'"/></xsl:when>
			<xsl:when test=" 'trachea' = $value"><xsl:value-of select="'Trach&#233;e'"/></xsl:when>
			<xsl:when test=" 'placental_fluid' = $value"><xsl:value-of select="'Fluide de placenta'"/></xsl:when>
			<xsl:when test=" 'other_cardio_respiratory' = $value"><xsl:value-of select="'Autre syst&#232;me cardio-respiratoire'"/></xsl:when>

			<xsl:when test=" 'lymph_nodes' = $value"><xsl:value-of select="'Ganglions lymphatiques'"/></xsl:when>
			<xsl:when test=" 'spleen' = $value"><xsl:value-of select="'Rate'"/></xsl:when>
			<xsl:when test=" 'thymus' = $value"><xsl:value-of select="'Thymus'"/></xsl:when>
			<xsl:when test=" 'tonsils' = $value"><xsl:value-of select="'Amygdales'"/></xsl:when>
			<xsl:when test=" 'other_immune' = $value"><xsl:value-of select="'Autre syst&#232;me immunitaire'"/></xsl:when>

			<xsl:when test=" 'adrenal_gland' = $value"><xsl:value-of select="'Glande ou tissu surr&#233;nalien'"/></xsl:when>
			<xsl:when test=" 'hair_hooves_feathers' = $value"><xsl:value-of select="'Cheveu, plumes, sabots'"/></xsl:when>
			<xsl:when test=" 'liver' = $value"><xsl:value-of select="'Foie'"/></xsl:when>
			<xsl:when test=" 'pancreas' = $value"><xsl:value-of select="'Pancr&#233;as'"/></xsl:when>
			<xsl:when test=" 'pituitary' = $value"><xsl:value-of select="'Hypophyse'"/></xsl:when>
			<xsl:when test=" 'skin_hides' = $value"><xsl:value-of select="'Peau ou cuirs'"/></xsl:when>
			<xsl:when test=" 'thyroid_parathyroid' = $value"><xsl:value-of select="'Thyro&#207;de/parathyro&#207;de'"/></xsl:when>
			<xsl:when test=" 'other_skin_glandular' = $value"><xsl:value-of select="'Autre peau ou syst&#232;me glandulaire'"/></xsl:when>

			<xsl:when test=" 'adipose' = $value"><xsl:value-of select="'Tissu adipeux ou &#233;piploon'"/></xsl:when>
			<xsl:when test=" 'ascites' = $value"><xsl:value-of select="'Acscite'"/></xsl:when>
			<xsl:when test=" 'antler_velvet' = $value"><xsl:value-of select="'Velours de cervid&#233;'"/></xsl:when>
			<xsl:when test=" 'serum' = $value"><xsl:value-of select="'S&#233;rum'"/></xsl:when>
			<xsl:when test=" 'whole_blood' = $value"><xsl:value-of select="'Sang entier '"/></xsl:when>
			<xsl:when test=" 'plasma' = $value"><xsl:value-of select="'Plasma'"/></xsl:when>
			<xsl:when test=" 'embryonic_tissue' = $value"><xsl:value-of select="'Tissu embryonnaire'"/></xsl:when>
			<xsl:when test=" 'fetal_tissue' = $value"><xsl:value-of select="'Tissu foetal'"/></xsl:when>
			<xsl:when test=" 'bone_marrow' = $value"><xsl:value-of select="'?Moelle osseuse'"/></xsl:when>
			<xsl:when test=" 'eyes_cornea' = $value"><xsl:value-of select="'Yeux/corn&#233;e'"/></xsl:when>
			<xsl:when test=" 'gall_bladder' = $value"><xsl:value-of select="'V&#233;sicule biliaire'"/></xsl:when>
			<xsl:when test=" 'other_fluids_tissues' = $value"><xsl:value-of select="'Autre types de tissus ou fuildes'"/></xsl:when>

			<xsl:when test=" 'acute_alcohol' = $value"><xsl:value-of select="'Alcoolisme aigu'"/></xsl:when>
			<xsl:when test=" 'acute_anxiety' = $value"><xsl:value-of select="'&#233;tat anxieux aigu'"/></xsl:when>
			<xsl:when test=" 'acute_infectious' = $value"><xsl:value-of select="'Syndromes respiratoires infectieux aigus'"/></xsl:when>
			<xsl:when test=" 'acute_inflammatory' = $value"><xsl:value-of select="'Arthrite aigu&#235;, inflammatoire et d&#233;bilitante'"/></xsl:when>
			<xsl:when test=" 'acute_psychotic' = $value"><xsl:value-of select="'Troubles psychotiques aigus'"/></xsl:when>
			<xsl:when test=" 'addiction' = $value"><xsl:value-of select="'D&#233;pendance (sauf la d&#233;pendance &#224; la nicotine)'"/></xsl:when>
			<xsl:when test=" 'ateriosclerosis' = $value"><xsl:value-of select="'Art&#233;rioscl&#233;rose'"/></xsl:when>
			<xsl:when test=" 'appendicitis' = $value"><xsl:value-of select="'Appendicite'"/></xsl:when>
			<xsl:when test=" 'asthma' = $value"><xsl:value-of select="'Asthme'"/></xsl:when>
			<xsl:when test=" 'cancer' = $value"><xsl:value-of select="'Cancer'"/></xsl:when>
			<xsl:when test=" 'congest_heart_fail' = $value"><xsl:value-of select="'Insuffisance cardiaque congestive'"/></xsl:when>
			<xsl:when test=" 'convulsions' = $value"><xsl:value-of select="'Convulsions'"/></xsl:when>
			<xsl:when test=" 'dementia' = $value"><xsl:value-of select="'D&#233;mence'"/></xsl:when>
			<xsl:when test=" 'depression' = $value"><xsl:value-of select="'D&#233;presssion'"/></xsl:when>
			<xsl:when test=" 'diabetes' = $value"><xsl:value-of select="'Diab&#232;te'"/></xsl:when>
			<xsl:when test=" 'gangrene' = $value"><xsl:value-of select="'Gangr&#232;ne'"/></xsl:when>
			<xsl:when test=" 'glaucoma' = $value"><xsl:value-of select="'Glaucome'"/></xsl:when>
			<xsl:when test=" 'haematologic_bleeding' = $value"><xsl:value-of select="'Affections h&#233;matologiques h&#233;morragiques'"/></xsl:when>
			<xsl:when test=" 'hepatitis' = $value"><xsl:value-of select="'H&#233;patite'"/></xsl:when>
			<xsl:when test=" 'hypertension' = $value"><xsl:value-of select="'Hypertension'"/></xsl:when>
			<xsl:when test=" 'nausea_pregnancy' = $value"><xsl:value-of select="'Naus&#233;es et vomissements li&#233;s &#224; la grossesse'"/></xsl:when>
			<xsl:when test=" 'obesity' = $value"><xsl:value-of select="'Ob&#233;sit&#233;'"/></xsl:when>
			<xsl:when test=" 'rheumatic_fever' = $value"><xsl:value-of select="'Fi&#232;vre rhumatismale'"/></xsl:when>
			<xsl:when test=" 'septicemia' = $value"><xsl:value-of select="'Septic&#233;mie'"/></xsl:when>
			<xsl:when test=" 'sex_transmit_disease' = $value"><xsl:value-of select="'Maladies transmises sexuellement'"/></xsl:when>
			<xsl:when test=" 'strangulated_hernia' = $value"><xsl:value-of select="'Hernie &#233;trangl&#233;e'"/></xsl:when>
			<xsl:when test=" 'thrombotic_embolic_disorder' = $value"><xsl:value-of select="'Maladies thrombotiques et emboliques'"/></xsl:when>
			<xsl:when test=" 'thyroid_disease' = $value"><xsl:value-of select="'Maladie thyro&#207;dienne'"/></xsl:when>
			<xsl:when test=" 'ulcer_gastro' = $value"><xsl:value-of select="'Ulc&#232;res des voies gastro-intestinales'"/></xsl:when>
			<xsl:when test=" 'hospital' = $value"><xsl:value-of select="'H&#244;pitale'"/></xsl:when>
			<xsl:when test=" 'food_processing' = $value"><xsl:value-of select="'Pr&#233;paration des aliments'"/></xsl:when>
			<xsl:when test=" 'medical_instruments' = $value"><xsl:value-of select="'Instruments m&#233;dicaux'"/></xsl:when>
			<xsl:when test=" 'domestic' = $value"><xsl:value-of select="'Domestique'"/></xsl:when>
			<xsl:when test=" 'barn' = $value"><xsl:value-of select="'Grange'"/></xsl:when>
			<xsl:when test=" 'institutional_industrial' = $value"><xsl:value-of select="'Institutionnel ou industriel'"/></xsl:when>
			<xsl:otherwise>
				Can't find the value: <xsl:value-of select="$value"/>
			</xsl:otherwise>
		</xsl:choose>		
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
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="no" externalpreview="yes" url="file:///k:/DATA/hcreppi-2020-02-18-1129.xml" htmlbaseurl="" outputurl="file:///c:/SPM/test/product.html" processortype="saxon8" useresolver="yes"
		          profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext=""
		          validateoutput="no" validator="internal" customvalidator="">
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