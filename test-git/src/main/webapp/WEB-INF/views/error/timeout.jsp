<%@ page contentType="text/html;charset=utf-8" isErrorPage="true"%>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory"%>
<%@ page import="javax.validation.ConstraintViolationException"%>
<%@ page import="javax.validation.ConstraintViolation"%>
<%@ page import="java.util.Set"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


<%

if(exception != null) {
	Logger logger = LoggerFactory.getLogger("timeout.jsp");
	logger.error(exception.getMessage(), exception);	
}
%>
<tiles:putAttribute name="Html_Title">503 - 操作超时</tiles:putAttribute>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<h2>系统繁忙，请稍候再试。</h2>
	
	<p>
		<a href="javascript:history.back();">返回</a>
	</p>
</tiles:putAttribute>
</tiles:insertDefinition>
