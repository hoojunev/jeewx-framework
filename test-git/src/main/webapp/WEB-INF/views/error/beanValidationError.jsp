<%@ page contentType="text/html;charset=utf-8" isErrorPage="true"%>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory"%>
<%@ page import="javax.validation.ConstraintViolationException"%>
<%@ page import="javax.validation.ConstraintViolation"%>
<%@ page import="java.util.Set"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<%
response.setStatus(200);
Logger logger = LoggerFactory.getLogger("timeout.jsp");
logger.error(exception.getMessage(), exception);

String errorMessage = "";
ConstraintViolationException ex = (ConstraintViolationException) exception;
Set<ConstraintViolation<?>> cvs = ex.getConstraintViolations();
if (cvs != null) {
	for (ConstraintViolation<?> cv : cvs) {
		errorMessage += cv.getMessage() + " \n";
	}
} else {
	errorMessage = ex.getMessage();
}
%>
<tiles:putAttribute name="Html_Title">数据不符合逻辑</tiles:putAttribute>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
	<h2>数据不符合逻辑：</h2>
	<label class="error"><%=errorMessage%></label>
	<p>
		<a href="javascript:history.back();">返回</a>
	</p>
</tiles:putAttribute>
</tiles:insertDefinition>
