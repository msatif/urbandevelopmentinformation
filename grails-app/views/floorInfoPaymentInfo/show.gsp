
<%@ page import="urbandevelopmentinformation.FloorInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-floorInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-floorInfoPaymentInfo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list floorInfoPaymentInfo">
			
				<g:if test="${floorInfoPaymentInfoInstance?.paBiId}">
				<li class="fieldcontain">
					<span id="paBiId-label" class="property-label"><g:message code="floorInfoPaymentInfo.paBiId.label" default="Pa Bi Id" /></span>
					
						<span class="property-value" aria-labelledby="paBiId-label"><g:fieldValue bean="${floorInfoPaymentInfoInstance}" field="paBiId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoPaymentInfoInstance?.paType}">
				<li class="fieldcontain">
					<span id="paType-label" class="property-label"><g:message code="floorInfoPaymentInfo.paType.label" default="Pa Type" /></span>
					
						<span class="property-value" aria-labelledby="paType-label"><g:fieldValue bean="${floorInfoPaymentInfoInstance}" field="paType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoPaymentInfoInstance?.paDate}">
				<li class="fieldcontain">
					<span id="paDate-label" class="property-label"><g:message code="floorInfoPaymentInfo.paDate.label" default="Pa Date" /></span>
					
						<span class="property-value" aria-labelledby="paDate-label"><g:formatDate date="${floorInfoPaymentInfoInstance?.paDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoPaymentInfoInstance?.paRefNumber}">
				<li class="fieldcontain">
					<span id="paRefNumber-label" class="property-label"><g:message code="floorInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" /></span>
					
						<span class="property-value" aria-labelledby="paRefNumber-label"><g:fieldValue bean="${floorInfoPaymentInfoInstance}" field="paRefNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoPaymentInfoInstance?.paTotalAmount}">
				<li class="fieldcontain">
					<span id="paTotalAmount-label" class="property-label"><g:message code="floorInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="paTotalAmount-label"><g:fieldValue bean="${floorInfoPaymentInfoInstance}" field="paTotalAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoPaymentInfoInstance?.paPaidAmount}">
				<li class="fieldcontain">
					<span id="paPaidAmount-label" class="property-label"><g:message code="floorInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" /></span>
					
						<span class="property-value" aria-labelledby="paPaidAmount-label"><g:fieldValue bean="${floorInfoPaymentInfoInstance}" field="paPaidAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoPaymentInfoInstance?.paCopy}">
				<li class="fieldcontain">
					<span id="paCopy-label" class="property-label"><g:message code="floorInfoPaymentInfo.paCopy.label" default="Pa Copy" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoPaymentInfoInstance?.paRemark}">
				<li class="fieldcontain">
					<span id="paRemark-label" class="property-label"><g:message code="floorInfoPaymentInfo.paRemark.label" default="Pa Remark" /></span>
					
						<span class="property-value" aria-labelledby="paRemark-label"><g:fieldValue bean="${floorInfoPaymentInfoInstance}" field="paRemark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${floorInfoPaymentInfoInstance?.floorInfo}">
				<li class="fieldcontain">
					<span id="floorInfo-label" class="property-label"><g:message code="floorInfoPaymentInfo.floorInfo.label" default="Floor Info" /></span>
					
						<span class="property-value" aria-labelledby="floorInfo-label"><g:link controller="floorInfo" action="show" id="${floorInfoPaymentInfoInstance?.floorInfo?.id}">${floorInfoPaymentInfoInstance?.floorInfo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:floorInfoPaymentInfoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${floorInfoPaymentInfoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
