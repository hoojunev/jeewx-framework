<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://gov.zsoft.com/zsoftTags" prefix="z" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>${z:getFullModeMessage("subsystem.name","秉政开发框架系统")}</title>
<link href="${resourcePath}/img/favicon.ico" type="image/x-icon" rel="shortcut icon" />
<link href="${resourcePath}/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${resourcePath}/css/bootstrap.datetimepicker.min.css" type="text/css" rel="stylesheet" />
<link href="${resourcePath}/css/bootstrap.covering.css" type="text/css" rel="stylesheet" />
<link href="${resourcePath}/css/framework.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	
}

.login-container {
	
	width: 998px;
	height: 578px;
	margin: 0 auto;
}

.login-container form {
	margin-bottom: 0;
}

.login-container table {
	margin-bottom: 0;
}

.login-form-pannel {
	position: relative;
	width: 305px;
	height: 250px;
	left: 588px;
	top: 235px;
}

.login-button {
	width: 140px;
}

.loginbg {
	background-color: #CEDFF6;
	vertical-align: middle;
	border-width: 4px;
	border-color: #f1f1f1;
	border-style: solid;
	background-image:
		url(${resourcePath}/img/login_bg.gif);
	background-repeat: no-repeat;
}

</style>

<script>var resourcePath = "${resourcePath}"</script>
 

<script src="${resourcePath}/js/jquery.min.js" type="text/javascript"></script>
<script src="${resourcePath}/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="${resourcePath}/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${resourcePath}/js/bootstrap.datetimepicker.min.js" type="text/javascript"></script>
<script src="${resourcePath}/js/bootstrap.multiselect.min.js" type="text/javascript"></script>
<script src="${resourcePath}/js/framework.js" type="text/javascript"></script>


<script type="text/javascript">
	$(function() {
		$("form").validate();
	});
</script>
</head>
<body>
	<table cellpadding="0" cellspacing="0" border="0"
		style="width: 100%; height: 100%;">
		<tr>
			<td style="width: 100%; vertical-align: middle;" align="center"><!-- begin: 登录对话框 -->
			<table border="0" cellpadding="0" cellspacing="10" width="1010px"
				style="height: 660px" class="loginbg">
				<tr>
					<td width="100%" align="center" style="vertical-align: middle;">
			<form action="${ctx}/login" method="post" autocomplete="off"
				class="form-horizontal">
				<c:if test="${not empty loginMessage}">
				<div class="alert alert-error">${loginMessage}</div>
				</c:if>
				<div>
					<table  cellpadding="0" cellspaccing="0" border="0">
						<colgroup>
							<col width="60px">
							<col>
						</colgroup>
						<tr>
							<td class="text" height="40px"><b>用户名</b></td>
							<td><input type="text" name="username" value="${username}"
								required />
						</tr>
						<tr>
							<td class="text"  height="40px"><b>密 码</b></td>
							<td><input type="password" name="password" required /></td>
						</tr>
						<tr>
							<td colspan="2"></td>
						</tr>
					</table>
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-large login-button">登录</button>
				</div>
			</form>
			</td>
					<td></td>
				</tr>
			</table>
			
		<!-- end: 登录对话框 -->
		</td>
		</tr>
		<tr valign="top">
			<td style="width: 100%; max-height: 100%;"></td>
		</tr>
	</table>
</body>
</html>
