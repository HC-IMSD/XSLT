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
.list-unstyled {
    padding-left: 0;
    list-style: none;
}
summary {
  display: list-item !important;
  list-style-type: none;
  list-style-type: disclosure-closed;
  visibility: visible !important; }

details:not([open]) details summary, details .out details summary {
  display: none !important; }

details {
  margin-bottom: .25em; }
  details summary {
    border: 1px solid #ddd;
    border-radius: 4px;
    color: #295376;
    padding: 5px 15px; }
    details summary:focus, details summary:hover {
      background-color: transparent;
      color: #0535d2;
      text-decoration: underline; }
  details[open] {
    border: 1px solid #ddd;
    border-radius: 4px; }
    details[open] > summary {
      border: 0;
      border-bottom: 1px solid #ddd;
      border-bottom-left-radius: 0;
      border-bottom-right-radius: 0;
      list-style-type: disclosure-open;
      margin-bottom: .25em; }
  details:not([open]) {
    visibility: hidden; }
    details:not([open]) > details,
    details:not([open]) > * {
      display: none; }
  details.alert:not([open]) {
    visibility: visible; }
.no-details details[open] > summary:before, .no-details[dir="rtl"] details[open] > summary:before {
  content: "\25BC\a0"; }

.no-details details > summary:before {
  content: "\25BA\a0";
  font-size: 84%; }

.no-details {
  /* Right to left (RTL) CSS */ }
  .no-details details > summary:before {
    /* Add the closed pointer */ }
  .no-details details[open] {
    display: block; }
    .no-details details[open] > summary:before {
      /* Add the opened pointer */ }
  .no-details details summary {
    display: list-item !important; }
  .no-details[dir="rtl"] details > summary:before {
    /* Add the close pointer */
    content: "\25C4\a0"; }
  .no-details[dir="rtl"] details[open] > summary:before {
    /* Add the opened pointer */ }

.pull-right {
	float: right;
}
.btn-sm, .btn-group-sm > .btn {
  padding: 5px 10px;
  font-size: 14px;
  line-height: 1.5;
  border-radius: 3px; }
.btn-info {
  color: #fff;
  background-color: #4d4d4d;
  border-color: #1a1a1a; }
  .btn-info:active, .btn-info.active,
  .open > .btn-info.dropdown-toggle {
    background-image: none; }
.text-info {
  color: #31708f; }

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
		if(window.navigator.userAgent.indexOf('MSIE ') > 0){
			$('details > summary').each(function(idx){
				$(this).on("click", toggleDetails);
			});
		}else{
			$('details > summary > span').each(function(idx){
				$(this).remove();
			})
		}
	});
	function toggleDetails(){
		var parent = $(this).parent()[0];
		if(parent.getAttribute( 'open' ) !== null){ 
			parent.removeAttribute('open');
			parent.className = parent.className.replace( " open", "" );
			var element = $(this).find("span")[0];
			element.className = element.className.replace('fa-caret-down', 'fa-caret-right');
		}else{
			parent.setAttribute('open'); 
			parent.className +=' open';
			var element = $(this).find("span")[0];
			element.className = element.className.replace('fa-caret-right', 'fa-caret-down');
		}
	}
        function expandAll(theClass){
            $('details').filter(function(){return ! $(this).attr('open')}).attr('open','open');
			if(window.navigator.userAgent.indexOf('MSIE ') > 0){
				$('details > summary > span').each(function(){
					this.className = this.className.replace('fa-caret-right', 'fa-caret-down');
				});
			}
        }
        function collapseAll(theClass){
            $('details').filter(function(){return $(this).attr('open')}).removeAttr('open');
			if(window.navigator.userAgent.indexOf('MSIE ') > 0){
				$('details > summary > span').each(function(){
					this.className = this.className.replace('fa-caret-down', 'fa-caret-right');
				});
			}
        }
				</script>
			</head>
            <body typeof="WebPage">
				<xsl:if test="count(DRUG_PRODUCT_ENROL) &gt; 0"> <xsl:apply-templates select="DRUG_PRODUCT_ENROL"></xsl:apply-templates> </xsl:if>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="DRUG_PRODUCT_ENROL">
		<h1>Product Information Template: Regulatory Enrolment Process (REP)</h1>
		<div class="row">
            <div class="pull-right btn btn-info btn-sm btn-group-sm active" id="expand_collapse_top_btns">
                <button id="btn_expandAll_top" onclick="expandAll('expandableForm')">
                &#160;+&#160;Expand All
                </button>&#160;
                <button id="btn_collapseAll_top" onclick="collapseAll('expandableForm')">
                &#160;-&#160;Collapse All
                </button>
            </div>
		</div>
		<div class="well well-sm" >
			<table border="1" cellspacing="2" cellpadding="2" style="table-layout: fixed; width: 100%;word-wrap: break-word;"  class="table dataTable table-bordered table-hover table-condensed table-striped ">
				<tr>
					<th style="text-align: center;font-weight:bold;">Company ID</th>
					<th style="text-align: center;font-weight:bold;">Dossier ID</th>
					<th style="text-align: center;font-weight:bold;">Dossier Type</th>
					<th style="text-align: center;font-weight:bold;">Date Last Saved</th>
				</tr>
				<tr>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:value-of select="company_id" /></span> </td>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:value-of select="dossier_id" /></span> </td>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:value-of select="dossier_type" /></span> </td>
					<td style="text-align: center;"> <span class="mouseHover"><xsl:value-of select="date_saved" /></span> </td>
				</tr>
			</table>
		</div>
		<section>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h2 class="panel-title">Product Information</h2>
				</div>
					<div class="well well-sm" >
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Product Name</strong>
								<div class="col-xs-12"><span class="mouseHover"><xsl:value-of select="product_name"/></span></div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Proper, Common or Non-Proprietary Name</strong>
								<div class="col-xs-12"><span class="mouseHover"><xsl:value-of select="proper_name"/></span></div>
							</div>
						</div>
						<xsl:if test="dossier_type/@id = 'D26' ">
						<div style="clear:both;"></div>
						<div class="row">
							<ul class="list-unstyled col-xs-12">
								<li>
									<details>
										<summary class="form-group"><span class=" fa fa-lg fa-fw fa-caret-right"></span>&#160;<strong style="padding-left:2% width:98%;">Clinical Trial</strong></summary>
										<div class="col-xs-12">
											<strong>Protocol number: </strong><span class="mouseHover"><xsl:value-of select="protocol_number"/></span>
										</div>
										<div class="col-xs-12">
											<strong>Protocol Title</strong>
										</div>
										<div class="col-xs-12">
											<div class="col-xs-11">
												<span class="mouseHover"><xsl:value-of select="protocol_title"/></span>
											</div>
										</div>
										<div class="col-xs-12">
											<strong>Anticipated Clinical Trial Composition</strong>
										</div>
										<div class="col-xs-12">
											<div class="col-xs-12">
												<xsl:for-each select="composition/*">
													<xsl:if test=" current() = 'Y'">
															<div class="col-xs-12">
																<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
																<span class="mouseHover"><xsl:call-template name="converter"><xsl:with-param name="value" select="name()"/></xsl:call-template></span>
															</div>
													</xsl:if>
												</xsl:for-each>
											</div>
										</div>
										<div class="col-xs-12">
											<strong>Phase of Clinical Trial</strong>
										</div>
										<div class="col-xs-12">
											<div class="col-xs-12">
												<xsl:for-each select="phase/*">
													<xsl:if test=" current() = 'Y' and name() != 'other'">
															<div class="col-xs-12">
																<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
																<span class="mouseHover"><xsl:call-template name="converter"><xsl:with-param name="value" select="name()"/></xsl:call-template></span>
															</div>
													</xsl:if>
												</xsl:for-each>
												<xsl:if test="phase/other = 'Y'">
													&#160;&#160;&#160;&#160;&#160;&#160;other: &#160; <span class="mouseHover"><xsl:value-of select="phase/other_details"/></span>
												</xsl:if>
											</div>
										</div>
										<div class="col-xs-12">
											<strong>Information regarding Research Ethics Board that has refused to approve the protocol and/or informed consent form enclosed? </strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_reb_info_refused"/></xsl:call-template></span>
										</div>
										<div class="col-xs-12">
											<strong>Are clinical trial drugs imported into Canada?&#160;</strong>
											<xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="are_drugs_imported"/></xsl:call-template>
										</div>
										<xsl:if test="are_drugs_imported = 'Y'">
										<div class="col-xs-12">
										<p class="text-info">A letter of authorization signed by the clinical trial sponsor must be provided in section 1.2.1 for a third party to import the new drug(s) described in this clinical trial application or amendment. If the importer has not changed when a clinical trial application amendment (CTA-A) is filed, a letter of authorization does not need to be submitted.</p>
										</div>
										</xsl:if>
									</details>
								</li>
							</ul>
						</div>
						</xsl:if>
						<xsl:if test="dossier_type/@id != 'D26'">
						<div class="row">
							<div class="col-xs-12">
								<strong>Address to which the Drug Notification Form (DNF)/Notice of Compliance (NOC) are to be sent(when required):</strong>
							</div>
							<xsl:choose>
							<xsl:when test="manufacturer = 'Y' or mailing = 'Y' or this_activity = 'Y' or importer = 'Y'">
								<xsl:if test="manufacturer = 'Y'">
									<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="manufacturer"/></xsl:call-template>
									<span class="mouseHover">Manufacturer/Sponsor</span>
									</div>
								</xsl:if>
								<xsl:if test="mailing = 'Y'">
									<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="mailing"/></xsl:call-template>
									<span class="mouseHover">Regulatory Mailing / Annual Contact</span>
									</div>
								</xsl:if>
								<xsl:if test="this_activity = 'Y'">
									<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="this_activity"/></xsl:call-template>
									<span class="mouseHover">Contact for this Regulatory Activity</span>
									</div>
								</xsl:if>
								<xsl:if test="importer = 'Y'">
									<div class="col-xs-12">
									<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="importer"/></xsl:call-template>
									<span class="mouseHover">Canadian Importer</span>
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
						</xsl:if>
						<div style="clear:both;"></div>
						<xsl:if test="dossier_type/@id != 'D26'">
						<div class="row">
							<ul class="list-unstyled col-xs-12">
								<li>
									<details>
										<summary class="form-group"><span class=" fa fa-lg fa-fw fa-caret-right"></span>&#160;<strong style="padding-left:2% width:98%;">Importer</strong></summary>
										<table class="table dataTable table-bordered table-hover table-condensed table-striped" id="importCompany" border="1" cellspacing="2" cellpadding="2">
												<thead>
												<tr>
													<th style="width:15px;"></th>
													<th ><strong>Importer Company ID</strong></th>
													<th style="width:70%;"><strong>Importer Company Name</strong></th>
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
															<legend><h4>&#160;&#160;&#160;&#160;Importer Record&#160;<xsl:value-of select="position()"/></h4></legend>
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
																			<div class="form-group col-md-6"><strong>Postal Code: &#160;</strong><span class="mouseHover"><xsl:value-of select="postal_code"/></span></div>
																			</div>

																		</div>
														</fieldset>
													</td></tr></table>
													</td>
												</tr>
												</xsl:for-each>
												</tbody>
											</table>
									</details>
								</li>
							</ul>
						</div>
						</xsl:if>
						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Drug Use:&#160;</strong>
								<span class="mouseHover"><xsl:value-of select="drug_use"/></span>
								
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
											<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
											<span class="mouseHover"><xsl:call-template name="converter"><xsl:with-param name="value" select="name()"/></xsl:call-template></span>
										</div>
										</div>
								</xsl:if>
							</xsl:for-each>
							</div>
							</div>
						</xsl:if>

						<xsl:if test="drug_use/@id ='VET'">
							<div style="clear:both;"></div>
							<div class="row">
							<ul class="list-unstyled col-xs-12">
								<li>
									<details>
										<summary class="form-group"><span class=" fa fa-lg fa-fw fa-caret-right"></span>&#160;<strong style="padding-left:2% width:98%;">Species and subtypes recommended for use</strong></summary>
														<table class="table dataTable table-bordered table-hover table-condensed table-striped " id="importCompany" border="1" cellspacing="2" cellpadding="2">
															<thead>
															<tr>
																<th style="width:15px;"></th>
																<th style="width:15%;"><strong>Species and subtypes recommended for use</strong></th>
																<th style="width:70%;"><strong>Is this used for the treatment of food-producing animals?</strong></th>
																<th style="width:15%;">Withdrawal time</th>
																<th class="out">Hidden</th>
															</tr>
															</thead>
															<tbody>
															<xsl:for-each select="species_record">
															<tr onclick="showDetail(this, '4', false, myTables['importer']);">
																<td class="fa fa-caret-right fa-lg fa-fw" style="width:15px;"></td>
																<td><span class="mouseHover"><xsl:value-of select="species" /></span> </td>
																<td><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_treat_food_prod_animal" /></xsl:call-template></span> </td>
																<td><span class="mouseHover"><xsl:value-of select="withdrawal_days"/>&#160;days&#160;and&#160;<xsl:value-of select="withdrawal_hours"/>&#160;hours</span></td>
																<td class="out"><table><tr data-detail="true"><td colspan="4">
																	<fieldset>
																		<legend><h4>&#160;&#160;&#160;&#160;Importer Record&#160;<xsl:value-of select="position()"/></h4></legend>
																		<div class="well well-sm">
																						<div class="row">
																						<div class="form-group col-md-6">
																							<strong>Species :&#160;</strong><span class="mouseHover"><xsl:value-of select="Species"/></span>
																						</div>
																						<div class="form-group col-md-6">
																							<strong>Subtypes :&#160;</strong><span class="mouseHover"><xsl:value-of select="subtypes"/></span>
																						</div>
																						<div class="form-group col-md-12"><strong>Is this used for the treatment of food-producing animals?&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_treat_food_prod_animal"/></xsl:call-template></span></div>
																						<div class="form-group col-md-12"><strong>Withdrawal time:&#160;</strong>
																							<span class="mouseHover"><xsl:value-of select="withdrawal_days"/></span>
																							&#160;days and&#160;<span><xsl:value-of select="withdrawal_hours"/></span>&#160;hours
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
									</details>
								</li>
							 </ul>
							</div>
						</xsl:if>
						<div style="clear:both;"></div>
						<div class="row">
							<ul class="list-unstyled col-xs-12">
								<li>
									<details>
										<summary class="form-group"><span class=" fa fa-lg fa-fw fa-caret-right"></span>&#160;<strong style="padding-left:2% width:98%;">Schedule and Prescription status (check all that apply): The product is</strong></summary>
										<xsl:choose>
										<xsl:when test=" is_sched_c ='Y' or is_sched_d = 'Y' or is_prescription_drug_list = 'Y' or is_prescription_drug_list = 'Y' or is_regulated_cdsa = 'Y' or is_non_prescription_drug = 'Y' or is_sched_a = 'Y'">
											<xsl:if test="is_sched_c = 'Y'">
											<div class="col-xs-12">
												<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
												<span class="mouseHover">included in Schedule C (radiopharmacurticals) to the Food and Drugs Act</span>
											</div>
											</xsl:if>
											<xsl:if test="is_sched_d = 'Y'">
											<div class="col-xs-12">
												<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
												<span class="mouseHover">included in Schedule D (biologicals) to the Food and Drugs Act</span>
											</div>
											</xsl:if>
											<xsl:if test="is_prescription_drug_list = 'Y'">
											<div class="col-xs-12">
												<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
												<span class="mouseHover">on the Prescription Drug List</span>
											</div>
											</xsl:if>
											<xsl:if test="is_regulated_cdsa = 'Y'">
											<div class="col-xs-12">
												<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
												<span class="mouseHover">regulated under the Controlled Drugs and Substances Act</span>
											</div>
											</xsl:if>
											<xsl:if test="is_non_prescription_drug = 'Y'">
											<div class="col-xs-12">
												<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
												<span class="mouseHover">a non-prescription drug</span>
											</div>
											</xsl:if>
											<xsl:if test="is_sched_a = 'Y'">
											<div class="col-xs-12">
												<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
												<span class="mouseHover">a non-prescription drug to which one or more Schedule A claims apply</span>
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
												<xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>
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
									</details>
								</li>
							</ul>
						</div>

						<div class="row">
							<div class="col-xs-12 form-group">
								<strong>Proposed Indication/Use/Dosage (including maximum daily dose)</strong>
								<div class="col-xs-12">
									<span class="mouseHover"><xsl:value-of select="proposed_indication"/></span>
								</div>
							</div>
						</div>
					</div>
					<div style="clear:both;"></div>
					<div class="row">
<ul class="list-unstyled col-xs-12">
	<li>
		<details>
			<summary class="form-group"><span class=" fa fa-lg fa-fw fa-caret-right"></span>&#160;<strong style="width:98%;">Formulation</strong></summary>
				<table class="table table-bordered table-hover table-condensed table-striped table-formulation">
				<thead>
					<tr>
						<th style="width:2%;"></th>
						<th style="width:8%;"><strong>ID</strong></th>
						<th style="width:70%;"><strong>Formulation Name</strong></th>
						<th style="width:20%;"><strong>Dosage Form</strong></th>
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
									<legend><h4>&#160;&#160;&#160;&#160;Formulation Record&#160;<xsl:value-of select="formulation_id"/></h4></legend>
									<div class="well well-sm">
												<div class="row">
												<div class="form-group col-md-12">
												<strong>A. Formulation Name:&#160;</strong><span class="mouseHover"><xsl:value-of select="formulation_name"/></span>
												</div>
												</div>
												<div class="row">
												<div class="form-group col-md-12">
												<strong>B. Dosage Form:&#160;</strong><span class="mouseHover"><xsl:value-of select="dosage_form_group/dosage_form"/></span>&#160;<span><xsl:value-of select="dosage_form_group/dosage_form_other"/></span>
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
																	<th>ID</th>
																	<th>Role</th>
																	<th>Variant</th>
																	<th>Ingredient</th>
																	<th>Quantities</th>
																	<th>Per</th>
																	<th>Calculated as base</th>
																	<th>Nanomaterial</th>
																	<th>Human or Animal Sourced</th>
																	<th class="out">Hide</th>
																</tr>
															</thead>
<tbody>
																<xsl:for-each select="formulation_ingredient">
																<tr onclick="showDetail(this, '10', false, null);">
																	<td class="fa fa-caret-right fa-lg fa-fw"></td>
																	<td><xsl:value-of select="ingredient_id"/></td>
																	<td><xsl:value-of select="ingredient_role"/></td>
																	<td><xsl:value-of select="variant_name"/></td>
																	<td><xsl:value-of select="ingredient_name"/></td>
																	<td><xsl:choose><xsl:when test="strength/operator/@id = 'NGT'">&lt;&#160;</xsl:when><xsl:when test="strength/operator/@id = 'NLT'">&gt;&#160;</xsl:when></xsl:choose>
																	<xsl:value-of select="strength/data1"/><xsl:if test="strength/data2 != ''">&#160;<strong>To</strong>&#160;<xsl:value-of select="strength/data2"/></xsl:if>
																		&#160;<xsl:choose><xsl:when test="units_other = ''"><xsl:value-of select="units"/></xsl:when><xsl:otherwise><xsl:value-of select="units"/></xsl:otherwise></xsl:choose></td>
																	<td><xsl:value-of select="per_value"/>&#160;<xsl:choose><xsl:when test="per_units_other_details = ''"><xsl:value-of select="per_units"/></xsl:when><xsl:otherwise><xsl:value-of select="per_units_other_details"/></xsl:otherwise></xsl:choose>/<xsl:value-of select="per"/></td>
																	<td><xsl:value-of select="is_base_calc"/></td>
																	<td><xsl:choose>
																	<xsl:when test="is_nanomaterial = 'N'">
																		No
																	</xsl:when>
																	<xsl:otherwise>
																	<xsl:choose><xsl:when test="nanomaterial_details = ''"><xsl:value-of select="nanomaterial"/></xsl:when><xsl:otherwise><xsl:value-of select="nanomaterial_details"/></xsl:otherwise></xsl:choose>
																	</xsl:otherwise>
																	</xsl:choose>
																	</td>
																	<td><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_human_animal_src"/></xsl:call-template></td>
																	<td class="out"><table><tr data-detail="true"><td colspan="10">
																		<fieldset>
																			<legend>Ingredients&#160;<xsl:value-of select="position()"/></legend>
																			<div class="row">
																				<div class="col-md-6">
																				<strong>Role:&#160;</strong>
																				<span class="mouseHover"><xsl:value-of select="ingredient_role"/></span>
																				</div>
																				<xsl:if test="ingredient_role/@id = 'NONMED'">
																					<div class="col-md-6">
																					<strong>Formulation Variant Name:&#160;</strong><span class="mouseHover"><xsl:value-of select="variant_name"/></span>
																					</div>
																					<div class="col-md-6">
																					<strong>Purpose:&#160;</strong><span class="mouseHover"><xsl:value-of select="purpose"/></span>
																					</div>
																				</xsl:if>
																				<div class="col-md-6">
																				<strong>Ingredient Name:&#160;</strong><span class="mouseHover"><xsl:value-of select="ingredient_name"/></span>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-6"><strong>Chemical Abstract Services:&#160;</strong><span class="mouseHover"><xsl:value-of select="cas_number"/></span></div>
																				<div class="col-md-6"><strong>Standard:&#160;</strong><span class="mouseHover"><xsl:value-of select="ingred_standard"/></span></div>
																			</div>
																			<div class="row">
																				<div class="col-md-6"><strong>Strength:&#160;</strong>
																				<span class="mouseHover"><xsl:value-of select="./strength/operator"/></span>&#160;
																				<xsl:if test="strength/operator/@id = 'RA'">
																					<span class="mouseHover"><strong>Lower Limit</strong></span>:&#160;
																				</xsl:if>
																				<span  class="mouseHover"><xsl:value-of select="strength/data1"/></span>&#160;
																				<xsl:if test="strength/operator/@id = 'RA'">&#160;&#160;
																					<span class="mouseHover"><strong>Upper Limit</strong></span>:&#160;
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
																				<div class="col-md-12"><strong>Calculated as Base?&#160;</strong>
																					<span class="mouseHover"><xsl:value-of select="is_base_calc"/></span>
																				</div>
																				</xsl:if>
																			</div>
																			<div class="row">
																				<div class="col-md-6"><strong>Is this a nanomaterial?&#160;</strong>
																					<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_nanomaterial"/></xsl:call-template></span>
																				</div>
																				<div class="col-md-6"><strong>Animal or Human Sourced?&#160;</strong>
																					<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_human_animal_src"/></xsl:call-template></span>
																				</div>
																			</div>
																			<xsl:if test="is_nanomaterial = 'Y'">
																			<div class="row">
																				<div class="col-md-12"><strong>Nanomaterial:&#160;</strong>
																					<span class="mouseHover"><xsl:value-of select="nanomaterial"/></span>
																					<xsl:if test="nanomaterial_details != 'null' and nanomaterial_details != ''">&#160;&#160;
																						<strong>Indicate the type of nanomaterial:&#160;</strong>
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
												<xsl:if test="../../dossier_type/@id = 'D26'">
													<div class="row">
														<div class="col-xs-12">
															<strong>D. From which market(s) is the investigational drug product from?</strong>&#160;
															<xsl:call-template name="converter"><xsl:with-param name="value" select="drug_market"/></xsl:call-template>
														</div>
													</div>
													<xsl:if test="drug_market = 'CANADIAN'">
													<div class="row">
														<div class="col-xs-12">
														<div class="col-xs-12">
															<strong>Drug Identification Number (DIN):</strong>&#160;<xsl:value-of select="din"/>
														</div>
														</div>
													</div>
													</xsl:if>
													<xsl:if test="drug_market = 'FOREIGN'">
													<div class="row">
														<div class="col-xs-12">
															<div class="col-xs-12">
															<h4>List the country(ies) the investigational drug product was obtained from:</h4>
															<div class="col-xs-12">
																<ol>
																<xsl:for-each select="din_country_list">
																	<li><span class="mouseHover"><xsl:value-of select="."/></span></li>
																</xsl:for-each>
																</ol>
															</div>
															</div>
														</div>
													</div>
													</xsl:if>

												</xsl:if>
												<div class="row">
												<div class="form-group col-md-12">
												<strong><xsl:call-template name="getOrder"><xsl:with-param name="order" select="'D'"/><xsl:with-param name="type" select="../../dossier_type/@id"/></xsl:call-template>.
												&#160;Was Animal and/or Human Sourced Material used at any stage in the manufacturing of the drug?&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="is_animal_human_material"/></xsl:call-template></span>
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
															<td class="out"><table><tr data-detail="true"><td colspan="4">
																<fieldset>
								<legend>Animal and / or Human Sourced Materials Details&#160;<xsl:value-of select="position()"/></legend>
								<div class="row">
									<div class="col-md-6">
									<strong>Material Name:&#160;<span class="normalWeight mouseHover"><xsl:value-of select="./ingredient_name"/></span></strong>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<strong>Chemical Abstract Services:&#160;</strong><span class="mouseHover"><xsl:value-of select="./cas_number"/></span>
									</div>
									<div class="col-md-6">
										<strong>Standard:&#160;</strong><span class="mouseHover"><xsl:value-of select="./ingred_standard"/></span>
									</div>
									<div class="col-md-6">
										<strong>Present in final Container?&#160;</strong>
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
												<strong><xsl:call-template name="getOrder"><xsl:with-param name="order" select="'E'"/><xsl:with-param name="type" select="../../dossier_type/@id"/></xsl:call-template>.
												&#160;Container Types, Package Size and Shelf Life</strong>
												</div>
											<div class="col-md-12">
												<table class="table table-bordered table-hover table-condensed table-striped table-container-details" id="expand-table-143">
												<thead>
													<tr>
														<th style="width:2%"></th>
														<th>Container Type</th>
														<th>Package Size</th>
														<th>Shelf Life</th>
														<th>Temperature Range(Celsius)</th>
														<th class="out">Hidden</th>
													</tr>
												</thead>
												<tbody>
													<xsl:for-each select="container_group/container_details">
														<tr onclick="showDetail(this, '3', false, null);">
															<td class="fa fa-caret-right fa-lg fa-fw"></td>
															<td><xsl:value-of select="container_type"/></td>
															<td><xsl:value-of select="package_size"/></td>
															<td><xsl:value-of select="shelf_life_number"/>&#160;<xsl:value-of select="shelf_life_unit"/></td>
															<td><xsl:value-of select="temperature_min"/>&#160;To&#160;<xsl:value-of select="temperature_max"/></td>
															<td class="out"><table><tr data-detail="true"><td colspan="5">
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
												<strong><xsl:call-template name="getOrder"><xsl:with-param name="order" select="'F'"/><xsl:with-param name="type" select="../../dossier_type/@id"/></xsl:call-template>.
												&#160;Routes of Administration</strong>
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
												<strong><xsl:call-template name="getOrder"><xsl:with-param name="order" select="'G'"/><xsl:with-param name="type" select="../../dossier_type/@id"/></xsl:call-template>.
												&#160;Countries of manufacture for this product</strong>
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
								</fieldset>
								</td></tr></table>
							</td>
						</tr>
					</xsl:for-each>
				</tbody>
				</table>
		</details>
	</li>
	<li>
		<details>
			<summary class="form-group"><span class=" fa fa-lg fa-fw fa-caret-right"></span>&#160;<strong style="width:98%;">Human/Animal Sourced Ingredient/Material</strong></summary>
				<table class="table table-bordered table-hover table-condensed table-striped table-appendix">
					<thead>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Sourced from</th>
							<th>System</th>
							<th>System Details</th>
							<th class="out"></th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="appendix4_group">
							<tr onclick="showDetail(this, '2', true, myTables['appendix'])">
								<td class="fa fa-caret-right fa-lg fa-fw"></td>
								<td><xsl:value-of select="ingredient_name"/></td>
								<td>
								<xsl:if test="human_sourced = 'Y'">Human</xsl:if>
								<xsl:if test="human_sourced = 'Y' and animal_sourced = 'Y'"><br/></xsl:if>
								<xsl:if test="animal_sourced = 'Y'">Animal</xsl:if></td>
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
										<legend>Ingredient/Material&#160;<xsl:value-of select="ingredient_id"/></legend>
										<div class="row">
											<div class="col-md-12">
											<strong>Ingredient or Material Name:&#160;</strong><span class="mouseHover"><xsl:value-of select="./ingredient_name"/></span>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<strong>Source From:&#160;</strong>
											<xsl:if test="human_sourced = 'Y'">
											<div class="col-md-12">
												<span class="mouseHover" ><xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>Human</span>
											</div>
											</xsl:if>
											<xsl:if test="animal_sourced = 'Y'">
											<div class="col-md-12">
												<span class="mouseHover" ><xsl:call-template name="hp-checkbox"><xsl:with-param name="value" select="'Y'"/></xsl:call-template>Animal</span>
											</div>
											</xsl:if>
											</div>
										</div>
										<xsl:if test=" ./human_sourced = 'Y' or ./animal_sourced = 'Y'">
										<div class="row">
											<div class="panel-default" style="margin-left:10px; margin-right:10px;">
												<header><h3 style="font-weight:700; padding-left:5px">Tissues or Fluids sources</h3></header>
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
													<header><h3 style="font-weight:700; padding-left:5px">Animal Sources</h3></header>
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
													  	<strong>Is age of animals known?&#160;</strong>
														<span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_animal_age_known"/></xsl:call-template></span>
													  </div>
													  <div class="col-md-3">
													  	<xsl:if test="animal_sourced_section/is_animal_age_known = 'Y'">
													  	<strong>Age of animals in months:&#160;</strong><span class="mouseHover"><xsl:value-of select="animal_sourced_section/animal_age"/></span>
														</xsl:if>&#160;
													  </div>
													  <div class="col-md-6">
													  	<strong>Controlled Population:&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_controlled_pop"/></xsl:call-template></span>
													  </div>
													</div>
													<div class="row"><br/>
													  <div class="col-md-6">
													  	<strong>Cell line:&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_cell_line"/></xsl:call-template></span>
													  </div>
													  <div class="col-md-6">
													  	<strong>Biotechnology Derived Animal:&#160;</strong><span class="mouseHover"><xsl:call-template name="YesNoUnknow"><xsl:with-param name="value" select="animal_sourced_section/is_biotech_derived"/></xsl:call-template></span>
													  </div><br/>
													</div>
													<div class="row"><br/></div>
													<div class="row"><header><h3 style="padding-left: 15px; font-weight: 700;">Animal Countries of Origin</h3></header></div>
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
		</details>
	</li>
</ul>					</div>

			</div>
		</section>
		<div class="row">
            <div class="pull-right btn btn-info btn-sm btn-group-sm active" id="btn_expand_collapse_btm">
                <button id="btn_expandAll_top" onclick="expandAll('expandableForm')">
                &#160;+&#160;Expand All
                </button>&#160;
                <button id="btn_collapseAll_btm" onclick="collapseAll('expandableForm')">
                &#160;-&#160;Collapse All
                </button>
            </div>
		</div>

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
			<xsl:when test="'female_paediatric' = $value">Female paediatric population (0-18 years of age)</xsl:when>
			<xsl:when test="'male_paediatric' = $value">Male paediatric population (0-18 years of age)</xsl:when>
			<xsl:when test="'female_adult' = $value">Female adult population</xsl:when>
			<xsl:when test="'male_adult' = $value">Male adult population</xsl:when>
			<xsl:when test="'phase_1_bioequivalence' = $value">Phase I - bioequivalence study (7-day administrative target)</xsl:when>
			<xsl:when test="'phase_1_healthy' = $value">Phase I - study in healthy humans (30-day default)</xsl:when>
			<xsl:when test="'phase_1_other' = $value">Phase I - other (30-day default)</xsl:when>
			<xsl:when test="'phase_2' = $value">Phase II (30-day default)</xsl:when>
			<xsl:when test="'phase_3' = $value">Phase III (30-day default)</xsl:when>
			<xsl:when test="'other' = $value">Other:&#160; </xsl:when>
			<xsl:when test="'FOREIGN' = $value">Foreign</xsl:when>
			<xsl:when test="'CANADIAN' = $value">Canadian</xsl:when>
			<xsl:when test="'NOT_MARKETED' = $value">Not Marketed</xsl:when>
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
	<xsl:template name="getOrder">
		<xsl:param name="order" select="/.."/>
		<xsl:param name="type" select="/.."/>
		<xsl:if test=" $type = 'D26'">
			<xsl:value-of select="substring(substring-after('DEFGHI',$order),1,1)"/>
		</xsl:if>
		<xsl:if test=" $type != 'D26'">
			<xsl:value-of select="$order"/>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="no" externalpreview="yes" url="file:///c:/Users/hcuser/Downloads/hcreppi-2019-10-31-1357.xml" htmlbaseurl="" outputurl="file:///c:/SPM/test/product.html" processortype="saxon8"
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