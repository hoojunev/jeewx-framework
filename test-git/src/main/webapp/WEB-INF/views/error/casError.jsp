<%@ page contentType="text/html;charset=utf-8" isErrorPage="true"%>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%
	//设置返回码200，避免浏览器自带的错误页面
	response.setStatus(200);
	
%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

	<div>
		
		<h1>登录错误</h1>
		
	</div>
	<div>
		<a href="${ctx}/logoutRunTimeRedirect">重新登录</a>
	</div>
</tiles:putAttribute>
</tiles:insertDefinition>
