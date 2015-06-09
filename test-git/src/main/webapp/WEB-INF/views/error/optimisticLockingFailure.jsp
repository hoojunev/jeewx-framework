<%@ page contentType="text/html;charset=utf-8" isErrorPage="true"%>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%
response.setStatus(200);
Logger logger = LoggerFactory.getLogger("timeout.jsp");
logger.error(exception.getMessage(), exception);
%>
<tiles:putAttribute name="Html_Title">409 - 乐观锁失败</tiles:putAttribute>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<h2>很抱歉，您操作的数据已被修改。请重新操作。</h2>
	<p>
		<a href="javascript:history.back();">返回</a>
	</p>
</tiles:putAttribute>
</tiles:insertDefinition>

