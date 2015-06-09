<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="z" uri="http://gov.zsoft.com/zsoftTags"%> 
<%@ page import="gov.platform.security.web.utils.MenuUtils"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

<%
MenuUtils.getWebPrincipal();
%>

<div class="header">
	
	
	<div class="header-container">
		<div class="row-fluid">
			<div class="span6 header-text"><c:if test="${z:getMessage('subsystem.logo')!='subsystem.logo'}">   
    		<img src="${resourcePath}${z:getMessage('subsystem.logo')}" class="header-log" />
    			
		</c:if>
		
    	${z:getFullModeMessage("subsystem.name","秉政开发框架系统")}</div>
			
				<shiro:user>
				<div class="text-right topmenu">
			
					用户:${currentName}[${currentAccount}]
					<span class="topmenusep">|</span>
					<a href="${ctx}/security/userinfo/view" class="topmenu">
					我的配置</a>
					<span class="topmenusep">|</span>
					<a href="${ctx}/logoutRunTimeRedirect" class="topmenulast">
					退出系统</a>
				</div>
				</shiro:user>
			
		</div>
	</div>
</div>
