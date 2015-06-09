<%@ page contentType="text/html;charset=utf-8" isErrorPage="true"%>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%
response.setStatus(403);
Logger logger = LoggerFactory.getLogger("timeout.jsp");
logger.error(exception.getMessage(), exception);

%>

<tiles:putAttribute name="Html_Title">403 - 无权限</tiles:putAttribute>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<h2>很抱歉，您没有该功能的访问权限。</h2>
	<label class="error">${exception.message}</label>
	<p>
		<a href="javascript:history.back();">返回</a>
	</p>
</tiles:putAttribute>
</tiles:insertDefinition>
