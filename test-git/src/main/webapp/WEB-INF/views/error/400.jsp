<%@ page contentType="text/html;charset=utf-8" isErrorPage="true"%>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%
	response.setStatus(400);
	if(exception != null) {
		Logger logger = LoggerFactory.getLogger("gov.zsoft.400.jsp");
		logger.error(exception.getMessage(), exception);	
	}
%>
<tiles:putAttribute name="Html_Title">400 - 无效请求</tiles:putAttribute>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<h2>400 - 无效请求.</h2>
	<p>
		<a href="javascript:history.back();">返回</a>
	</p>
</tiles:putAttribute>
</tiles:insertDefinition>