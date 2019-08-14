<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:param name="language" select="&#39;eng&#39;"/>
		<xsl:variable name="smallcase" select="&#39;abcdefghijklmnopqrstuvwxyz&#39;" />
		<xsl:variable name="uppercase" select="&#39;ABCDEFGHIJKLMNOPQRSTUVWXYZ&#39;" />
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
					var myTables = {&#39;formulation&#39;: [{&#39;class&#39;:&#39;.table-ingredients&#39;, &#39;sortCols&#39;:[[1,&#39;asc&#39;],[3,&#39;asc&#39;]], &#39;columnDefs&#39;:[{ "orderable": false, "targets": [0] }]},
													{&#39;class&#39;:&#39;.table-container&#39;, &#39;sortCols&#39;:[[1,&#39;asc&#39;]], &#39;columnDefs&#39;:[{ "orderable": false, "targets": [0] }]},
													{&#39;class&#39;:&#39;.table-container-details&#39;, &#39;sortCols&#39;:[[1,&#39;asc&#39;]], &#39;columnDefs&#39;:[{ "orderable": false, "targets": [0] }]}],
									&#39;appendix&#39;: [{&#39;class&#39;:&#39;.table-tissues&#39;,&#39;sortCols&#39;:[[0,&#39;asc&#39;]], &#39;columnDefs&#39;:[]},
												 {&#39;class&#39;:&#39;.table-animal&#39;,&#39;sortCols&#39;:[[0,&#39;asc&#39;]], &#39;columnDefs&#39;:[]}
									],
									&#39;importer&#39;:[]
									};

					function selectedTab(tab){
						$("ul.nav.nav-tabs li").each(function(index){
							if(tab == index){
								$(this).addClass(&#39;active&#39;);
							} else {
								$(this).removeClass(&#39;active&#39;);
							}
						});
						$(".tabpanels").children().each(function(index){
							if(tab == index){
								this.style.setProperty( &#39;display&#39;, &#39;block&#39;, &#39;important&#39; );
								var table = $(this).find(&#39;.table-appendix&#39;);
								if(table.length > 0){
									var th = $(table).find(&#39;th&#39;)[0];
									$(th).css(&#39;width&#39;, 12);
								}
							} else {
								this.style.setProperty( &#39;display&#39;, &#39;none&#39;, &#39;important&#39; );
							}
						});
					}
					function showDetail(e, colspan, initChild, tables){
						var next = $(e).closest(&#39;tr&#39;).next();
						var hasDetail = $(next).attr(&#39;data-detail&#39;);
						if( hasDetail ){
							$(next).remove();
							var child =$(e).find(".fa-caret-down");
							child.removeClass(&#39;fa-caret-down&#39;);
							child.addClass(&#39;fa-caret-right&#39;);
						} else {
							var value = $(e).children()[$(e).children().length - 1].innerHTML;
							var $nodeTbl = $(value);
							var $nodeTr = $nodeTbl.find(&#39;tr&#39;)[0];
							$(e).closest(&#39;tr&#39;).after($nodeTr);
							var nodeTd = $(e).closest(&#39;tr&#39;).next().children()[0];
							if(initChild){
								$.each(tables, function(index, e){
									var nodeTable = $(nodeTd).find(e[&#39;class&#39;]);
									initSubtable(nodeTable, e[&#39;sortCols&#39;], e[&#39;columnDefs&#39;]);
								});
							}
							var child =$(e).closest(&#39;tr&#39;).children().first();
							$(child).removeClass(&#39;fa-caret-right&#39;);
							$(child).addClass(&#39;fa-caret-down&#39;);
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
				{ &#39;orderable&#39;: false, "targets": [0] }
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
				{ "orderable": false, &#39;width&#39;: &#39;2%&#39;, "targets": [0] },
				{ &#39;width&#39;: &#39;15%&#39;, "targets": [2] },{ &#39;width&#39;: &#39;10%&#39;, "targets": [3,4] },{ &#39;width&#39;: &#39;0&#39;, "targets": [5] }
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
		<h1>Mod&#232;le d&#39;information sure le produit: Processus d&#39;inscription r&#233;glementaire (PIR)</h1>
		<div class="well well-sm" >
			<table border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;">
				<tr>
					<th style="text-align: center;font-weight:bold;">ID d&#39;entreprise</th>
					<th style="text-align: center;font-weight:bold;">ID de dossier</th>
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
								<strong>Adresse o&#249; le formulaire de d&#233;claration de m&#233;dicament (FDM)/l&#39;avis de conformit&#233; (AC) doivent &#234;tre envoy&#233;s (lorsque n&#233;cessaire):</strong>
							</div>
							<xsl:choose>
							<xsl:when test="manufacturer = &#39;Y&#39; or mailing = &#39;Y&#39; or this_activity = &#39;Y&#39; or importer = &#39;Y&#39;">
								<xsl:if test="manufacturer = &#39;Y&#39;">
									<div class="col-xs-12">
									<span style="margin-left:40px;" class="mouseHover">Fabricant / Promoteur</span>
									</div>
								</xsl:if>
								<xsl:if test="mailing = &#39;Y&#39;">
									<div class="col-xs-12">
									<span style="margin-left:40px;" class="mouseHover">Courrier r&#233;glementaire / contact annuel</span>
									</div>
								</xsl:if>
								<xsl:if test="this_activity = &#39;Y&#39;">
									<div class="col-xs-12">
									<span style="margin-left:40px;" class="mouseHover">Personne-ressource pour cette activit&#233; r&#233;glementaire</span>
									</div>
								</xsl:if>
								<xsl:if test="importer = &#39;Y&#39;">
									<div class="col-xs-12">
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
							<table class="table dataTable table-bordered table-hover table-condensed table-striped " id="importCompany" border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;">
								<thead>
								<tr>
									<th style="width:15px;"></th>
									<th ><strong>ID d&#39;entreprise de l&#39;importateur</strong></th>
									<th style="width:70%;"><strong>Nom d&#39;entreprise de l&#39;importateur</strong></th>
									<th class="out">Hidden</th>
								</tr>
								</thead>
								<tbody>
								<xsl:for-each select="/DRUG_PRODUCT_ENROL/importer_record">
								<tr onclick="showDetail(this, &#39;3&#39;, false, myTables[&#39;importer&#39;]);">
									<td class="fa fa-caret-right fa-lg fa-fw" style="width:15px;"></td>
									<td><span class="mouseHover"><xsl:value-of select="importer_company_id" /></span> </td>
									<td><span class="mouseHover"><xsl:value-of select="importer_company_name" /></span> </td>
									<td class="out"><table><tr data-detail="true"><td colspan="3">
										<fieldset>
											<legend><h4>&#160;&#160;&#160;&#160;Enregistrement d'importateur&#160;<xsl:value-of select="position()"/></h4></legend>
											<div>
												<section class="panel panel-default">
													<div class="panel-body">
														<div class="well well-sm">
															<div class="row">
															<div class="form-group col-md-12">
																<strong>ID d&#39;entreprise de l&#39;importateur:&#160;</strong><span class="mouseHover"><xsl:value-of select="importer_company_id"/></span>
															</div>
															</div>
															<div class="row">
															<div class="form-group col-md-12"><strong>Nom d&#39;entreprise de l&#39;importateur: &#160;</strong></div>
															<div class="form-group col-md-12"><span class="mouseHover"><xsl:value-of select="importer_company_name"/></span></div>
															</div>
															<div class="row">
															<div class="form-group col-md-12"><strong>Rue: &#160;</strong></div>
															<div class="form-group col-md-12"><span class="mouseHover"><xsl:value-of select="street_address"/></span></div>
															</div>
															<div class="row">
															<div class="form-group col-md-6"><strong>Ville: &#160;</strong><span class="mouseHover"><xsl:value-of select="city"/></span></div>
															<div class="form-group col-md-6"><strong>Pays: &#160;</strong><span class="mouseHover"><xsl:value-of select="country"/></span></div>
															</div>
															<div class="row">
															<div class="form-group col-md-6"><strong>Province: &#160;</strong>
																<xsl:choose>
																<xsl:when test="(country/@id = &#39;CAN&#39;) or (country/@id = &#39;USA&#39;)">
																	<xsl:value-of select="province_lov"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="province_text"/>
																</xsl:otherwise>
																</xsl:choose>
															</div>
															<div class="form-group col-md-6"><strong>Code postale: &#160;</strong><span class="mouseHover"><xsl:value-of select="postal_code"/></span></div>
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
						<xsl:if test="drug_use/@id = &#39;DISINFECT&#39;">
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
								<xsl:if test=" current() = &#39;Y&#39;">
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
								<strong>Statut sur l&#39;annexe et prescription (s&#233;lectionner tout ce qui s&#39;applique): le produit est</strong>
							</div>
							<xsl:choose>
							<xsl:when test=" is_sched_c =&#39;Y&#39; or is_sched_d = &#39;Y&#39; or is_prescription_drug_list = &#39;Y&#39; or is_prescription_drug_list = &#39;Y&#39; or is_regulated_cdsa = &#39;Y&#39; or is_non_prescription_drug = &#39;Y&#39; or is_sched_a = &#39;Y&#39;">
								<xsl:if test="is_sched_c = &#39;Y&#39;">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">dans l&#39;annexe C (produits radiopharmaceutiques) de la Loi sur les aliments et drogues</span>
								</div>
								</xsl:if>
								<xsl:if test="is_sched_d = &#39;Y&#39;">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">figurant &#224; l&#39;annexe D (produits biologiques) de la Loi sur les aliments et drogues</span>
								</div>
								</xsl:if>
								<xsl:if test="is_prescription_drug_list = &#39;Y&#39;">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">sur la liste des m&#233;dicaments sur ordonnance</span>
								</div>
								</xsl:if>
								<xsl:if test="is_regulated_cdsa = &#39;Y&#39;">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">r&#233;glement&#233; en vertu de la Loi r&#233;glementant certaines drogues et autres substances</span>
								</div>
								</xsl:if>
								<xsl:if test="is_non_prescription_drug = &#39;Y&#39;">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">un m&#233;dicament sans ordonnance</span>
								</div>
								</xsl:if>
								<xsl:if test="is_sched_a = &#39;Y&#39;">
								<div class="col-xs-12">
									<span style="margin-left:45px;" class="mouseHover">un m&#233;dicament sans ordonnance auquel une ou plusieurs des r&#233;clamations de l&#39;Annexe A s&#39;appliquent</span>
								</div>
								<xsl:if test="is_sched_a = &#39;Y&#39;">

								<div class="row">
								<div class="col-xs-11" style="margin-left:60px;">
									<strong>Annexe A d&#233;tails des all&#233;gations</strong>
									<div class="panel panel-body" style="border: 1px solid black;">
										<div class="row">
											<div class="col-xs-12">Fournissez les informations ci-dessous pour les produits sans ordonnance qui ont associ&#233; des revendications de l&#39;annexe A seulement.</div>
										</div>
										<div class="row">
										<div class="col-xs-12">
										<div class="col-xs-12">
										<strong>Num&#233;ro d&#39;identification du m&#233;dicament (DIN), si existant</strong>
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
													<xsl:if test="current() = &#39;Y&#39;">
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
											<strong>Indiquer les all&#233;gations/indications de l&#39;annexe A associ&#233;es avec ce produit</strong>
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
										<li onclick="selectedTab(1);" tabindex="0" id="tab1"><a href="#tabpanel1"><strong>Ingr&#233;dient ou mat&#233;riel source humaine ou d&#39;animale</strong></a>
										</li>
									</ul>
									<div style="clear:both;"></div>
									<div class="tabpanels">
										<div id="tabpanel0" class="active">
											<table class="table table-bordered table-hover table-condensed table-striped table-formulation">
											<thead>
												<tr>
													<th style="width:2%;"></th>
													<th style="width:8%;"><strong>ID</strong></th>
													<th style="width:70%;"><strong>Nom de la formulation</strong></th>
													<th style="width:20%;"><strong>Forme posologie</strong></th>
													<th class="out"></th>
												</tr>
											</thead>
											<tbody>
												<xsl:for-each select="formulation_group/formulation_details">
													<tr onclick="showDetail(this, &#39;4&#39;, true, myTables[&#39;formulation&#39;]);">
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
																				<strong>B. Forme posologie:&#160;</strong><span class="mouseHover"><xsl:value-of select="dosage_form_group/dosage_form"/></span>&#160;<span><xsl:value-of select="dosage_form_group/dosage_form_other"/></span>
																				</div>
																				</div>
																				<div class="row">
																				<div class="form-group col-md-12">
																				<strong>C.&#160;Ingr&#233;dients</strong>
																				<br/>
																					<div class="row">
																						<div class="col-md-12">
																							<table class="table table-bordered table-hover table-condensed table-striped table-ingredients" >
																							<thead>
																								<tr>
																									<th style="width:2%"></th>
																									<th>ID</th>
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
																								<tr onclick="showDetail(this, &#39;10&#39;, false, null);">
																									<td class="fa fa-caret-right fa-lg fa-fw"></td>
																									<td><xsl:value-of select="ingredient_id"/></td>
																									<td><xsl:value-of select="ingredient_role"/></td>
																									<td><xsl:value-of select="variant_name"/></td>
																									<td><xsl:value-of select="ingredient_name"/></td>
																									<td><xsl:choose><xsl:when test="strength/operator/@id = &#39;NGT&#39;">&lt;&#160;</xsl:when><xsl:when test="strength/operator/@id = &#39;NLT&#39;">&gt;&#160;</xsl:when></xsl:choose>
																									<xsl:value-of select="strength/data1"/><xsl:if test="strength/data2 != &#39;&#39;">&#160;<strong>&#224;</strong>&#160;<xsl:value-of select="strength/data2"/></xsl:if>
																										&#160;<xsl:choose><xsl:when test="units_other = &#39;&#39;"><xsl:value-of select="units"/></xsl:when><xsl:otherwise><xsl:value-of select="units"/></xsl:otherwise></xsl:choose></td>
																									<td><xsl:value-of select="per_value"/>&#160;<xsl:choose><xsl:when test="per_units_other_details = &#39;&#39;"><xsl:value-of select="per_units"/></xsl:when><xsl:otherwise><xsl:value-of select="per_units_other_details"/></xsl:otherwise></xsl:choose>/<xsl:value-of select="per"/></td>
																									<td><xsl:value-of select="is_base_calc"/></td>
																									<td><xsl:choose><xsl:when test="nanomaterial_details = &#39;&#39;"><xsl:value-of select="nanomaterial"/></xsl:when><xsl:otherwise><xsl:value-of select="nanomaterial_details"/></xsl:otherwise></xsl:choose></td>
																									<td><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_human_animal_src"/></xsl:call-template></td>
																									<td class="out"><table><tr data-detail="true"><td colspan="10">
																										<fieldset>
																											<legend>Ingr&#233;dients&#160;<xsl:value-of select="position()"/></legend>
																											<div class="row">
																												<div class="col-md-6">
																												<strong>R&#244;le:&#160;</strong>
																												<span class="mouseHover"><xsl:value-of select="ingredient_role"/></span>
																												</div>
																												<xsl:if test="ingredient_role/@id = &#39;NONMED&#39;">
																													<div class="col-md-6">
																													<strong>Nom de la variante du formulation:&#160;</strong><span class="mouseHover"><xsl:value-of select="variant_name"/></span>
																													</div>
																													<div class="col-md-6">
																													<strong>But:&#160;</strong><span class="mouseHover"><xsl:value-of select="purpose"/></span>
																													</div>
																												</xsl:if>
																												<div class="col-md-6">
																												<strong>Nom de l&#39;ingr&#233;dient:&#160;</strong><span class="mouseHover"><xsl:value-of select="ingredient_name"/></span>
																												</div>
																											</div>
																											<div class="row">
																												<div class="col-md-6"><strong>Chemical Abstract Services:&#160;</strong><span class="mouseHover"><xsl:value-of select="cas_number"/></span></div>
																												<div class="col-md-6"><strong>Norme:&#160;</strong><span class="mouseHover"><xsl:value-of select="ingred_standard"/></span></div>
																											</div>
																											<div class="row">
																												<div class="col-md-6"><strong>Concentration:&#160;</strong>
																												<span class="mouseHover"><xsl:value-of select="./strength/operator"/></span>&#160;
																												<xsl:if test="strength/operator/@id = &#39;RA&#39;">
																													<span class="mouseHover"><strong>Limite inf&#233;rieure</strong></span>:&#160;
																												</xsl:if>
																												<span  class="mouseHover"><xsl:value-of select="strength/data1"/></span>&#160;
																												<xsl:if test="strength/operator/@id = &#39;RA&#39;">&#160;&#160;
																													<span class="mouseHover"><strong>Limite sup&#233;rieure</strong></span>:&#160;
																													<span class="mouseHover"><xsl:value-of select="strength/data2"/></span>&#160;
																												</xsl:if>
																												<xsl:choose>
																												<xsl:when test="units_other != &#39;null&#39; and units_other != &#39;&#39;">
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
																													<xsl:when test="per_units_other_details != &#39;null&#39; and per_units_other_details != &#39;&#39;">
																															<span class="mouseHover"><xsl:value-of select="per_units_other_details"/></span>
																													</xsl:when>
																													<xsl:otherwise>
																															<span class="mouseHover"><xsl:value-of select="per_units"/></span>
																													</xsl:otherwise>
																													</xsl:choose>
																		
																												</div>
																												<xsl:if test="is_base_calc != &#39;&#39;">
																												<div class="col-md-12"><strong>Calcul&#233; comme based?&#160;</strong>
																													<span class="mouseHover"><xsl:value-of select="is_base_calc"/></span>
																												</div>
																												</xsl:if>
																											</div>
																											<div class="row">
																												<div class="col-md-6"><strong>Est-ce un nanomat&#233;riau?&#160;</strong>
																													<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_nanomaterial"/></xsl:call-template></span>
																												</div>
																												<div class="col-md-6"><strong>Source d&#39;animale ou humaine?&#160;</strong>
																													<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_human_animal_src"/></xsl:call-template></span>
																												</div>
																											</div>
																											<xsl:if test="is_nanomaterial = &#39;Y&#39;">
																											<div class="row">
																												<div class="col-md-12"><strong>Nanomat&#233;riau:&#160;</strong>
																													<span class="mouseHover"><xsl:value-of select="nanomaterial"/></span>
																													<xsl:if test="nanomaterial_details != &#39;null&#39; and nanomaterial_details != &#39;&#39;">&#160;&#160;
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
																				<strong>D.&#160; Est-ce un mat&#233;riel(aux) de source humaine et/ou animale &#233;tait utilis&#233;(s) &#224; l&#39;une ou l&#39;autre &#233;tape de la fabrication du produit?&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_animal_human_material"/></xsl:call-template></span>
																				</div>
																			<xsl:if test="is_animal_human_material = &#39;Y&#39;">
																			<div class="col-md-12">
																				<table class="table table-bordered table-hover table-condensed table-striped table-container" id="expand-table-142">
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
																						<tr onclick="showDetail(this, &#39;4&#39;, false, null);">
																							<td class="fa fa-caret-right fa-lg fa-fw"></td>
																							<td><xsl:value-of select="./ingredient_name"/></td>
																							<td><xsl:value-of select="./cas_number"/></td>
																							<td><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="in_final_container"/></xsl:call-template></td>
																							<td class="out"><table><tr data-detail="true"><td colspan="4">
																								<fieldset>
																<legend>D&#233;tail de mat&#233;riaux de source d&#39;animale et/ou humaine&#160;<xsl:value-of select="position()"/></legend>
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
																				<strong>E.&#160;Type de contenant, capacit&#233; de l&#39;emballage et dur&#233;e de vie </strong>
																				</div>
																			<div class="col-md-12">
																				<table class="table table-bordered table-hover table-condensed table-striped table-container-details" id="expand-table-143">
																				<thead>
																					<tr>
																						<th style="width:2%"></th>
																						<th>Type de contenant</th>
																						<th>Capacit&#233; de l&#39;emballage</th>
																						<th>Dur&#233;e de vie</th>
																						<th>&#233;cart de temp&#233;rature (Celsius)</th>
																						<th class="out">Hidden</th>
																					</tr>
																				</thead>
																				<tbody>
																					<xsl:for-each select="container_group/container_details">
																						<tr onclick="showDetail(this, &#39;3&#39;, false, null);">
																							<td class="fa fa-caret-right fa-lg fa-fw"></td>
																							<td><xsl:value-of select="container_type"/></td>
																							<td><xsl:value-of select="package_size"/></td>
																							<td><xsl:value-of select="shelf_life_number"/>&#160;<xsl:value-of select="shelf_life_unit"/></td>
																							<td><xsl:value-of select="temperature_min"/>&#160;To&#160;<xsl:value-of select="temperature_max"/></td>
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
																	<strong>Capacit&#233; de l&#39;emballage:&#160;</strong><span class="normalWeight mouseHover"><xsl:value-of select="package_size"/></span>
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
																				<strong>F.&#160;Voie d&#39;administration</strong>
																				</div>
																				<div class="col-md-12">
																				<div class="col-xs-11">
																					<ol>
																					<xsl:for-each select="roa_group/roa_details">
																						<li><xsl:value-of select="roa"/>
																							<xsl:if test="roa_other != &#39;&#39;">:&#160;<xsl:value-of select="roa_other"/></xsl:if>
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
											<table class="table table-bordered table-hover table-condensed table-striped table-appendix">
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
													<tr onclick="showDetail(this, &#39;2&#39;, true, myTables[&#39;appendix&#39;])">
														<td class="fa fa-caret-right fa-lg fa-fw"></td>
														<td><xsl:value-of select="ingredient_name"/></td>
														<td><xsl:if test="human_sourced = &#39;Y&#39;">Humaine</xsl:if><xsl:if test="human_sourced = &#39;Y&#39; and animal_sourced = &#39;Y&#39;"><br/></xsl:if><xsl:if test="animal_sourced = &#39;Y&#39;">Animale</xsl:if></td>
														<td>
															<xsl:for-each select="tissues_fluids_section/*">
																<xsl:call-template name="converter"><xsl:with-param name="value" select="name(.)"/></xsl:call-template>
															</xsl:for-each>
														</td>
														<td>
															<xsl:for-each select="tissues_fluids_section/*">
																<xsl:for-each select="./*">
																<xsl:if test=" . = &#39;Y&#39;">
																	<xsl:variable name="temp" select="name(.)"/>
																	<xsl:if test="$temp != &#39;other_nervous_details&#39; and $temp != &#39;other_digestive_details&#39; and $temp != &#39;other_musculo_skeletal_details&#39; and $temp != &#39;other_reproductive_details&#39; and $temp != &#39;other_cardio_respiratory_details&#39; and $temp != &#39;other_immune_details&#39; and $temp != &#39;other_skin_glandular_details&#39; and $temp != &#39;other_fluids_tissues_details&#39;">
																		<xsl:call-template name="converter"><xsl:with-param name="value" select="$temp"/></xsl:call-template><br/>
																	</xsl:if>
																</xsl:if>
																</xsl:for-each>
															</xsl:for-each>
														</td>
														<td class="out"> <table><tr data-detail="true"><td colspan="5">
															<fieldset>
																<legend>L&#39;ingr&#233;dient ou mat&#233;riel&#160;<xsl:value-of select="ingredient_id"/></legend>
																<div class="row">
																	<div class="col-md-12">
																	<strong>Nom de l&#39;ingr&#233;dient ou mat&#233;riel:&#160;</strong><span class="mouseHover"><xsl:value-of select="./ingredient_name"/></span>
																	</div>
																</div>
																<div class="row">
																	<div class="col-md-12">
																		<strong>Source de:&#160;</strong>
																	<xsl:if test="human_sourced = &#39;Y&#39;">
																	<div class="col-md-12">
																		<span class="mouseHover" style="margin-left:45px;">Human</span>
																	</div>
																	</xsl:if>
																	<xsl:if test="animal_sourced = &#39;Y&#39;">
																	<div class="col-md-12">
																		<span class="mouseHover" style="margin-left:45px;">Animal</span>
																	</div>
																	</xsl:if>
																	</div>
																</div>
																<xsl:if test=" ./human_sourced = &#39;Y&#39; or ./animal_sourced = &#39;Y&#39;">
																<div class="row">
																	<div class="panel-default" style="margin-left:10px; margin-right:10px;">
																		<header><h3 style="font-weight:300; padding-left:5px">Origine des tissus ou fluides</h3></header>
																		<div class="panel-body">
																			<table class="table table-bordered table-hover table-condensed table-striped table-tissues">
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
																									<xsl:if test=" . = &#39;Y&#39;">
																										<xsl:variable name="temp" select="name(.)"/>
																										<xsl:if test="$temp != &#39;other_nervous_details&#39; and $temp != &#39;other_digestive_details&#39; and $temp != &#39;other_musculo_skeletal_details&#39; and $temp != &#39;other_reproductive_details&#39; and $temp != &#39;other_cardio_respiratory_details&#39; and $temp != &#39;other_immune_details&#39; and $temp != &#39;other_skin_glandular_details&#39; and $temp != &#39;other_fluids_tissues_details&#39;">
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
																		<xsl:if test="animal_sourced = &#39;Y&#39;">
																			<header><h3 style="font-weight:300; padding-left:5px">Sources d&#39;animales</h3></header>
																			<div class="panel-body">
																			<table class="table table-bordered table-hover table-condensed table-striped table-animal">
																			<thead>
																					<th style="background-color:white !important;"><strong>Type d&#39;animal</strong></th>
																					<th style="background-color:white !important;"><strong>D&#233;tails du type d&#39;animal</strong></th>
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
																			  	<strong>L&#39;&#226;ge des animaux est-il connu?&#160;</strong>
																				<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_animal_age_known"/></xsl:call-template></span>
																			  </div>
																			  <div class="col-md-3">
																			  	<xsl:if test="animal_sourced_section/is_animal_age_known = &#39;Y&#39;">
																			  	<strong>L&#39;&#226;ge des animaux en mois:&#160;</strong><span class="mouseHover"><xsl:value-of select="animal_sourced_section/animal_age"/></span>
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
																			<div class="row"><header><h3 style="padding-left: 15px; font-weight: 300;">Pays d&#39;origines des animaux</h3></header></div>
																			<div class="col-xs-12">
																				<div class="col-xs-10">
																					<ol>
																				<xsl:for-each select="animal_sourced_section/country_origin_list/country_origin">
																					<li><xsl:value-of select="country_with_unknown"/>
																						<xsl:if test="unknown_country_details != &#39;&#39;">:&#160;<xsl:value-of select="unknown_country_details"/></xsl:if>
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
		<xsl:when test="$value = &#39;Y&#39;">
			<xsl:value-of select="&#39;Yes&#39;"/>
		</xsl:when>
		<xsl:when test="$value = &#39;N&#39;">
			<xsl:value-of select="&#39;No&#39;"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="&#39;UNKNOWN&#39;"/>
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
			<xsl:when test=" &#39;en&#39; = $value">
				<xsl:value-of select="&#39;English&#39;"/>
			</xsl:when>
			<xsl:when test=" &#39;fr&#39; = $value">
				<xsl:value-of select="&#39;French&#39;"/>
			</xsl:when>
			<xsl:when test=" &#39;SALUT_MR&#39; = $value">
				<xsl:value-of select="&#39;Mr.&#39;"/>
			</xsl:when>
			<xsl:when test=" &#39;SALUT_MS&#39; = $value">
				<xsl:value-of select="&#39;Ms.&#39;"/>
			</xsl:when>
			<xsl:when test=" &#39;SALUT_DR&#39; = $value">
				<xsl:value-of select="&#39;Dr.&#39;"/>
			</xsl:when>
			<xsl:when test=" &#39;SALUT_MRS&#39; = $value">
				<xsl:value-of select="&#39;Mrs.&#39;"/>
			</xsl:when>
			<xsl:when test=" &#39;nervous_system&#39; = $value"><xsl:value-of select="&#39;Syst&#232;me nerveux&#39;"/></xsl:when>
			<xsl:when test=" &#39;digestive_system&#39; = $value"><xsl:value-of select="&#39;Digestif&#39;"/></xsl:when>
			<xsl:when test=" &#39;musculo_system&#39; = $value"><xsl:value-of select="&#39;musculo-squelettique&#39;"/></xsl:when>
			<xsl:when test=" &#39;reproductive_system&#39; = $value"><xsl:value-of select="&#39;Reproductif&#39;"/></xsl:when>
			<xsl:when test=" &#39;cardio_system&#39; = $value"><xsl:value-of select="&#39;Cardio-respiratoire&#39;"/></xsl:when>
			<xsl:when test=" &#39;immune_system&#39; = $value"><xsl:value-of select="&#39;Immunitaire&#39;"/></xsl:when>
			<xsl:when test=" &#39;skin_system&#39; = $value"><xsl:value-of select="&#39;Peau et glandulaire&#39;"/></xsl:when>
			<xsl:when test=" &#39;other_system&#39; = $value"><xsl:value-of select="&#39;Autre tissues ou fluids&#39;"/></xsl:when>

			<xsl:when test=" &#39;brain&#39; = $value"><xsl:value-of select="&#39;Cerveau&#39;"/></xsl:when>
			<xsl:when test=" &#39;brain_stem&#39; = $value"><xsl:value-of select="&#39;Tronc c&#233;r&#233;bral&#39;"/></xsl:when>
			<xsl:when test=" &#39;cerebellum&#39; = $value"><xsl:value-of select="&#39;Cervelet&#39;"/></xsl:when>
			<xsl:when test=" &#39;cerebrospinal_fluid&#39; = $value"><xsl:value-of select="&#39;Liquide c&#233;phalorachidien&#39;"/></xsl:when>
			<xsl:when test=" &#39;dorsal_root_ganglia&#39; = $value"><xsl:value-of select="&#39;Ganglion de la racine dorsale&#39;"/></xsl:when>
			<xsl:when test=" &#39;dura_mater&#39; = $value"><xsl:value-of select="&#39;Dure-m&#232;re&#39;"/></xsl:when>
			<xsl:when test=" &#39;hypothalmus&#39; = $value"><xsl:value-of select="&#39;hypothalamus&#39;"/></xsl:when>
			<xsl:when test=" &#39;retina_optic&#39; = $value"><xsl:value-of select="&#39;R&#233;tine/nerf optique&#39;"/></xsl:when>
			<xsl:when test=" &#39;spinal_cord&#39; = $value"><xsl:value-of select="&#39;Moelle &#233;pini&#232;re&#39;"/></xsl:when>
			<xsl:when test=" &#39;trigerminal_ganglia&#39; = $value"><xsl:value-of select="&#39;Ganglion de Gasser&#39;"/></xsl:when>
			<xsl:when test=" &#39;other_nervous&#39; = $value"><xsl:value-of select="&#39;Autre syst&#232;me nerveux &#39;"/></xsl:when>

			<xsl:when test=" &#39;appendix&#39; = $value"><xsl:value-of select="&#39;Appendice&#39;"/></xsl:when>
			<xsl:when test=" &#39;bile&#39; = $value"><xsl:value-of select="&#39;Bile&#39;"/></xsl:when>
			<xsl:when test=" &#39;distal_ileum&#39; = $value"><xsl:value-of select="&#39;Il&#233;on distal&#39;"/></xsl:when>
			<xsl:when test=" &#39;large_intestine&#39; = $value"><xsl:value-of select="&#39;Gros intestin&#39;"/></xsl:when>
			<xsl:when test=" &#39;saliva_salivary&#39; = $value"><xsl:value-of select="&#39;Salive ou glande salivaire&#39;"/></xsl:when>
			<xsl:when test=" &#39;small_intestine&#39; = $value"><xsl:value-of select="&#39;Intestin gr&#234;le, autre que lil&#233;on distal&#39;"/></xsl:when>
			<xsl:when test=" &#39;stomach&#39; = $value"><xsl:value-of select="&#39;Estomac&#39;"/></xsl:when>
			<xsl:when test=" &#39;other_digestive&#39; = $value"><xsl:value-of select="&#39;Autre syst&#232;me digestif&#39;"/></xsl:when>

			<xsl:when test=" &#39;abdomen&#39; = $value"><xsl:value-of select="&#39;Abdomen&#39;"/></xsl:when>
			<xsl:when test=" &#39;skull&#39; = $value"><xsl:value-of select="&#39;Cr&#226;ne&#39;"/></xsl:when>
			<xsl:when test=" &#39;bones&#39; = $value"><xsl:value-of select="&#39;Os (autre que la colonne vert&#233;brale et le cr&#226;ne)&#39;"/></xsl:when>
			<xsl:when test=" &#39;collagen&#39; = $value"><xsl:value-of select="&#39;collag&#232;ne&#39;"/></xsl:when>
			<xsl:when test=" &#39;tendons_ligaments&#39; = $value"><xsl:value-of select="&#39;Tendons ou ligaments&#39;"/></xsl:when>
			<xsl:when test=" &#39;vertebral_column&#39; = $value"><xsl:value-of select="&#39;Colonne vert&#233;brale&#39;"/></xsl:when>
			<xsl:when test=" &#39;muscle&#39; = $value"><xsl:value-of select="&#39;Muscle&#39;"/></xsl:when>
			<xsl:when test=" &#39;other_musculo_skeletal&#39; = $value"><xsl:value-of select="&#39;autre syst&#232;me musculo-squelettique&#39;"/></xsl:when>

			<xsl:when test=" &#39;milk_products&#39; = $value"><xsl:value-of select="&#39;Lait/Produits laitiers&#39;"/></xsl:when>
			<xsl:when test=" &#39;kidney&#39; = $value"><xsl:value-of select="&#39;Reins&#39;"/></xsl:when>
			<xsl:when test=" &#39;colostrum&#39; = $value"><xsl:value-of select="&#39;colostrum&#39;"/></xsl:when>
			<xsl:when test=" &#39;mammary_glands&#39; = $value"><xsl:value-of select="&#39;Glandes mammaires&#39;"/></xsl:when>
			<xsl:when test=" &#39;ovaries&#39; = $value"><xsl:value-of select="&#39;Ovaires&#39;"/></xsl:when>
			<xsl:when test=" &#39;placenta&#39; = $value"><xsl:value-of select="&#39;placenta&#39;"/></xsl:when>
			<xsl:when test=" &#39;placental_fluid&#39; = $value"><xsl:value-of select="&#39;Fluide de placenta&#39;"/></xsl:when>
			<xsl:when test=" &#39;semen&#39; = $value"><xsl:value-of select="&#39;Sperme&#39;"/></xsl:when>
			<xsl:when test=" &#39;testes&#39; = $value"><xsl:value-of select="&#39;Testicules&#39;"/></xsl:when>
			<xsl:when test=" &#39;urine&#39; = $value"><xsl:value-of select="&#39;Sang&#39;"/></xsl:when>
			<xsl:when test=" &#39;other_reproductive&#39; = $value"><xsl:value-of select="&#39;Autre syst&#232;me r&#233;productif et urinaire&#39;"/></xsl:when>

			<xsl:when test=" &#39;heart_pericardium&#39; = $value"><xsl:value-of select="&#39;Coeur/p&#233;ricarde&#39;"/></xsl:when>
			<xsl:when test=" &#39;lung&#39; = $value"><xsl:value-of select="&#39;Poumon&#39;"/></xsl:when>
			<xsl:when test=" &#39;nasal_fluid&#39; = $value"><xsl:value-of select="&#39;Fluide nasal&#39;"/></xsl:when>
			<xsl:when test=" &#39;trachea&#39; = $value"><xsl:value-of select="&#39;Trach&#233;e&#39;"/></xsl:when>
			<xsl:when test=" &#39;placental_fluid&#39; = $value"><xsl:value-of select="&#39;Fluide de placenta&#39;"/></xsl:when>
			<xsl:when test=" &#39;other_cardio_respiratory&#39; = $value"><xsl:value-of select="&#39;Autre syst&#232;me cardio-respiratoire&#39;"/></xsl:when>

			<xsl:when test=" &#39;lymph_nodes&#39; = $value"><xsl:value-of select="&#39;Ganglions lymphatiques&#39;"/></xsl:when>
			<xsl:when test=" &#39;spleen&#39; = $value"><xsl:value-of select="&#39;Rate&#39;"/></xsl:when>
			<xsl:when test=" &#39;thymus&#39; = $value"><xsl:value-of select="&#39;Thymus&#39;"/></xsl:when>
			<xsl:when test=" &#39;tonsils&#39; = $value"><xsl:value-of select="&#39;Amygdales&#39;"/></xsl:when>
			<xsl:when test=" &#39;other_immune&#39; = $value"><xsl:value-of select="&#39;Autre syst&#232;me immunitaire&#39;"/></xsl:when>

			<xsl:when test=" &#39;adrenal_gland&#39; = $value"><xsl:value-of select="&#39;Glande ou tissu surr&#233;nalien&#39;"/></xsl:when>
			<xsl:when test=" &#39;hair_hooves_feathers&#39; = $value"><xsl:value-of select="&#39;Cheveu, plumes, sabots&#39;"/></xsl:when>
			<xsl:when test=" &#39;liver&#39; = $value"><xsl:value-of select="&#39;Foie&#39;"/></xsl:when>
			<xsl:when test=" &#39;pancreas&#39; = $value"><xsl:value-of select="&#39;Pancr&#233;as&#39;"/></xsl:when>
			<xsl:when test=" &#39;pituitary&#39; = $value"><xsl:value-of select="&#39;Hypophyse&#39;"/></xsl:when>
			<xsl:when test=" &#39;skin_hides&#39; = $value"><xsl:value-of select="&#39;Peau ou cuirs&#39;"/></xsl:when>
			<xsl:when test=" &#39;thyroid_parathyroid&#39; = $value"><xsl:value-of select="&#39;Thyro&#207;de/parathyro&#207;de&#39;"/></xsl:when>
			<xsl:when test=" &#39;other_skin_glandular&#39; = $value"><xsl:value-of select="&#39;Autre peau ou syst&#232;me glandulaire&#39;"/></xsl:when>

			<xsl:when test=" &#39;adipose&#39; = $value"><xsl:value-of select="&#39;Tissu adipeux ou &#233;piploon&#39;"/></xsl:when>
			<xsl:when test=" &#39;ascites&#39; = $value"><xsl:value-of select="&#39;Acscite&#39;"/></xsl:when>
			<xsl:when test=" &#39;antler_velvet&#39; = $value"><xsl:value-of select="&#39;Velours de cervid&#233;&#39;"/></xsl:when>
			<xsl:when test=" &#39;serum&#39; = $value"><xsl:value-of select="&#39;S&#233;rum&#39;"/></xsl:when>
			<xsl:when test=" &#39;whole_blood&#39; = $value"><xsl:value-of select="&#39;Sang entier &#39;"/></xsl:when>
			<xsl:when test=" &#39;plasma&#39; = $value"><xsl:value-of select="&#39;Plasma&#39;"/></xsl:when>
			<xsl:when test=" &#39;embryonic_tissue&#39; = $value"><xsl:value-of select="&#39;Tissu embryonnaire&#39;"/></xsl:when>
			<xsl:when test=" &#39;fetal_tissue&#39; = $value"><xsl:value-of select="&#39;Tissu foetal&#39;"/></xsl:when>
			<xsl:when test=" &#39;bone_marrow&#39; = $value"><xsl:value-of select="&#39;?Moelle osseuse&#39;"/></xsl:when>
			<xsl:when test=" &#39;eyes_cornea&#39; = $value"><xsl:value-of select="&#39;Yeux/corn&#233;e&#39;"/></xsl:when>
			<xsl:when test=" &#39;gall_bladder&#39; = $value"><xsl:value-of select="&#39;V&#233;sicule biliaire&#39;"/></xsl:when>
			<xsl:when test=" &#39;other_fluids_tissues&#39; = $value"><xsl:value-of select="&#39;Autre types de tissus ou fuildes&#39;"/></xsl:when>

			<xsl:when test=" &#39;acute_alcohol&#39; = $value"><xsl:value-of select="&#39;Alcoolisme aigu&#39;"/></xsl:when>
			<xsl:when test=" &#39;acute_anxiety&#39; = $value"><xsl:value-of select="&#39;&#233;tat anxieux aigu&#39;"/></xsl:when>
			<xsl:when test=" &#39;acute_infectious&#39; = $value"><xsl:value-of select="&#39;Syndromes respiratoires infectieux aigus&#39;"/></xsl:when>
			<xsl:when test=" &#39;acute_inflammatory&#39; = $value"><xsl:value-of select="&#39;Arthrite aigu&#235;, inflammatoire et d&#233;bilitante&#39;"/></xsl:when>
			<xsl:when test=" &#39;acute_psychotic&#39; = $value"><xsl:value-of select="&#39;Troubles psychotiques aigus&#39;"/></xsl:when>
			<xsl:when test=" &#39;addiction&#39; = $value"><xsl:value-of select="&#39;D&#233;pendance (sauf la d&#233;pendance &#224; la nicotine)&#39;"/></xsl:when>
			<xsl:when test=" &#39;ateriosclerosis&#39; = $value"><xsl:value-of select="&#39;Art&#233;rioscl&#233;rose&#39;"/></xsl:when>
			<xsl:when test=" &#39;appendicitis&#39; = $value"><xsl:value-of select="&#39;Appendicite&#39;"/></xsl:when>
			<xsl:when test=" &#39;asthma&#39; = $value"><xsl:value-of select="&#39;Asthme&#39;"/></xsl:when>
			<xsl:when test=" &#39;cancer&#39; = $value"><xsl:value-of select="&#39;Cancer&#39;"/></xsl:when>
			<xsl:when test=" &#39;congest_heart_fail&#39; = $value"><xsl:value-of select="&#39;Insuffisance cardiaque congestive&#39;"/></xsl:when>
			<xsl:when test=" &#39;convulsions&#39; = $value"><xsl:value-of select="&#39;Convulsions&#39;"/></xsl:when>
			<xsl:when test=" &#39;dementia&#39; = $value"><xsl:value-of select="&#39;D&#233;mence&#39;"/></xsl:when>
			<xsl:when test=" &#39;depression&#39; = $value"><xsl:value-of select="&#39;D&#233;presssion&#39;"/></xsl:when>
			<xsl:when test=" &#39;diabetes&#39; = $value"><xsl:value-of select="&#39;Diab&#232;te&#39;"/></xsl:when>
			<xsl:when test=" &#39;gangrene&#39; = $value"><xsl:value-of select="&#39;Gangr&#232;ne&#39;"/></xsl:when>
			<xsl:when test=" &#39;glaucoma&#39; = $value"><xsl:value-of select="&#39;Glaucome&#39;"/></xsl:when>
			<xsl:when test=" &#39;haematologic_bleeding&#39; = $value"><xsl:value-of select="&#39;Affections h&#233;matologiques h&#233;morragiques&#39;"/></xsl:when>
			<xsl:when test=" &#39;hepatitis&#39; = $value"><xsl:value-of select="&#39;H&#233;patite&#39;"/></xsl:when>
			<xsl:when test=" &#39;hypertension&#39; = $value"><xsl:value-of select="&#39;Hypertension&#39;"/></xsl:when>
			<xsl:when test=" &#39;nausea_pregnancy&#39; = $value"><xsl:value-of select="&#39;Naus&#233;es et vomissements li&#233;s &#224; la grossesse&#39;"/></xsl:when>
			<xsl:when test=" &#39;obesity&#39; = $value"><xsl:value-of select="&#39;Ob&#233;sit&#233;&#39;"/></xsl:when>
			<xsl:when test=" &#39;rheumatic_fever&#39; = $value"><xsl:value-of select="&#39;Fi&#232;vre rhumatismale&#39;"/></xsl:when>
			<xsl:when test=" &#39;septicemia&#39; = $value"><xsl:value-of select="&#39;Septic&#233;mie&#39;"/></xsl:when>
			<xsl:when test=" &#39;sex_transmit_disease&#39; = $value"><xsl:value-of select="&#39;Maladies transmises sexuellement&#39;"/></xsl:when>
			<xsl:when test=" &#39;strangulated_hernia&#39; = $value"><xsl:value-of select="&#39;Hernie &#233;trangl&#233;e&#39;"/></xsl:when>
			<xsl:when test=" &#39;thrombotic_embolic_disorder&#39; = $value"><xsl:value-of select="&#39;Maladies thrombotiques et emboliques&#39;"/></xsl:when>
			<xsl:when test=" &#39;thyroid_disease&#39; = $value"><xsl:value-of select="&#39;Maladie thyro&#207;dienne&#39;"/></xsl:when>
			<xsl:when test=" &#39;ulcer_gastro&#39; = $value"><xsl:value-of select="&#39;Ulc&#232;res des voies gastro-intestinales&#39;"/></xsl:when>
			<xsl:when test=" &#39;hospital&#39; = $value"><xsl:value-of select="&#39;H&#244;pitale&#39;"/></xsl:when>
			<xsl:when test=" &#39;food_processing&#39; = $value"><xsl:value-of select="&#39;Pr&#233;paration des aliments&#39;"/></xsl:when>
			<xsl:when test=" &#39;medical_instruments&#39; = $value"><xsl:value-of select="&#39;Instruments m&#233;dicaux&#39;"/></xsl:when>
			<xsl:when test=" &#39;domestic&#39; = $value"><xsl:value-of select="&#39;Domestique&#39;"/></xsl:when>
			<xsl:when test=" &#39;barn&#39; = $value"><xsl:value-of select="&#39;Grange&#39;"/></xsl:when>
			<xsl:when test=" &#39;institutional_industrial&#39; = $value"><xsl:value-of select="&#39;Institutionnel ou industriel&#39;"/></xsl:when>
			<xsl:otherwise>
				Can&#39;t find the value: <xsl:value-of select="$value"/>
			</xsl:otherwise>
		</xsl:choose>		
	</xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="no" externalpreview="yes" url="file:///c:/Users/hcuser/Downloads/hcreppi-2019-07-02-1521.xml" htmlbaseurl="" outputurl="file:///c:/SPM/test/product.html" processortype="saxon8"
		          useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath=""
		          postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="">
			<parameterValue name="cssFile" value="&#39;file:///C:/Users/hcuser/git/XSLT/Pharma-Bio-REP/v_3_0/Style-Sheets/ip400-1.css&#39;"/>
			<parameterValue name="labelFile" value="&#39;file:///C:/Users/hcuser/git/XSLT/Regulatory-Enrolment-Process-REP/v_1_0/Style-Sheets/hp-ip400-labels.xml&#39;"/>
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