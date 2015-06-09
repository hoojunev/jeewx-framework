<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="gov.platform.security.web.utils.MenuUtils"%>

<%
MenuUtils.findURLMappingTopMenus();
%>



<div class="navbar navbar-static-top">
	<div class="navbar-inner">
		<ul class="nav" style=" display: inline-block;" id="highlight">
			<c:forEach items="${topMenus}" var="topMenu">
				<li class="${topMenu.active?'active':''}"><a class="navbar-brand" href="${resourceHost}${topMenu.menuURI}">${topMenu.name}</a></li>
			</c:forEach>  	
		</ul>
		
		
	</div>

</div>

