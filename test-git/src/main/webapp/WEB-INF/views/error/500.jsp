<%@ page contentType="text/html;charset=utf-8" isErrorPage="true"%>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<%
	
	response.setStatus(500);
	if(exception != null) {
		Logger logger = LoggerFactory.getLogger("gov.zsoft.500.jsp");
		logger.error(exception.getMessage(), exception);	
	}
%>
<tiles:putAttribute name="Html_Title">500 - 操作失败</tiles:putAttribute>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

	<div>
		
		<h1>操作失败，请稍后再试</h1>
		<label class="error">${exception.message}</label>
	</div>
	<div>
		<a href="javascript:history.back();">返回</a>
	</div>
</tiles:putAttribute>
</tiles:insertDefinition>
