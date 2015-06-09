<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@page import="gov.platform.security.web.utils.MenuUtils"%>

<%
MenuUtils.findURLMappingLeftMenus();
%>

	<style>
	
.sub-menu {
   
    margin: 0;
    padding: 0;
    
}
.sub-menu li {
    display: inline;
   
}
.sub-menu li a {
  
    padding-left: 32px;
    padding-right: 8px;
    padding-top: 8px;
    padding-bottom: 8px;
   
}
.menu {
  font-size: 14px;
  
}
	</style>
<div class="menu">
<ul class="nav nav-list">
	<c:forEach items="${currentMenus}" var="menu">
		<li class="${menu.active?'active':''}">
		<c:if test="${not empty menu.menuURI}">   
    	<a href="${ctx}${menu.menuURI}">${menu.name}</a>
		</c:if> 
		<c:if test="${empty menu.menuURI}">   
    	${menu.name}
		</c:if>
		</li>
		<ul class="nav nav-list sub-menu ">
			<c:forEach items="${menu.children}" var="leafMenu">
				<li class="${leafMenu.active?'active':''}"><a href="${ctx}${leafMenu.menuURI}">${leafMenu.name}</a></li>	
			</c:forEach>
			
		</ul>

	</c:forEach>
</ul>
</div>
