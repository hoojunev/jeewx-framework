<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="z" uri="http://gov.zsoft.com/zsoftTags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title><tiles:insertAttribute name="Html_Title" /></title>

<link href="${resourcePath}/img/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<link href="${resourcePath}/css/bootstrap.min.css" type="text/css" rel="stylesheet" />

<link href="${resourcePath}/css/bootstrap.covering.css" type="text/css" rel="stylesheet" />
<link href="${resourcePath}/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" />
<link href="${resourcePath}/css/framework.css" rel="stylesheet" type="text/css" />
<link href="${resourcePath}/css/platform-admin.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]>
    <link href="${resourcePath}/css/bootstrap-ie6.min.css" rel="stylesheet" />
    <link href="${resourcePath}/css/ie.css" rel="stylesheet" />
<![endif]-->
<!--解决breadcrumb在IE8下叠在一起的问题-->
<!--[if lt IE 9]>
    <style>
    .breadcrumb li {
  display: inline-block;
  display: inline;
  text-shadow: 0 1px 0 #ffffff;
  *zoom: 1;
}
    </style>
<![endif]-->

<script>var resourcePath = "${resourcePath}"</script>

<script src="${resourcePath}/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="${resourcePath}/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
<script src="${resourcePath}/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="${resourcePath}/js/bootstrap.min.js" type="text/javascript"></script>

<script src="${resourcePath}/js/bootstrap.multiselect.min.js" type="text/javascript"></script>
<script src="${resourcePath}/js/framework.js" type="text/javascript"></script>

<tiles:insertAttribute name="Html_Head" />	

</head>

<body class="default-body">
	
	<z:templateHeader></z:templateHeader>
	<z:templateTopmenu></z:templateTopmenu>
	
    <div id="default-container" class="container-fluid default-container">
			<div class="menu-container">
				<z:templateLeftmenu></z:templateLeftmenu>
			</div>
			<div class="body-container">
			
				<div class="body-content-container">
					<div class="row-fluid breadcrumbPannel">
						<div class="span5">
							<z:templateBreadcrumb></z:templateBreadcrumb>
						</div>	
						<div class="span7 titleToolbarPannel">
							<tiles:insertAttribute name="titleToolbar" ignore="true" />
						</div>
					</div>
					
					<div class="row-fluid main-content">
						<tiles:insertAttribute name="body" />
					</div>
				</div>
			</div>
		</div>
	
	<z:templateFooter></z:templateFooter>
	<script type="text/javascript">
	
	$(document).ready(function() {
		resizeDefault_Container('default-container');
	});
	
	
	$(window).resize(function() {
	    clearTimeout($.data(this, 'resizeTimer'));
	    $.data(this, 'resizeTimer', setTimeout(function() {
	    	resizeDefault_Container('default-container');
	    }, 200));
	});
	</script>
</body>

</html>