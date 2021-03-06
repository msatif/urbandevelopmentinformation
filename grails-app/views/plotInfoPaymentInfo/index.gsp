
<%@ page import="urbandevelopmentinformation.PlotInfoPaymentInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'plotInfoPaymentInfo.label', default: 'PlotInfoPaymentInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-plotInfoPaymentInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-plotInfoPaymentInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="paPlId" title="${message(code: 'plotInfoPaymentInfo.paPlId.label', default: 'Pa Pl Id')}" />
					
						<g:sortableColumn property="paId" title="${message(code: 'plotInfoPaymentInfo.paId.label', default: 'Pa Id')}" />
					
						<g:sortableColumn property="paBiId" title="${message(code: 'plotInfoPaymentInfo.paBiId.label', default: 'Pa Bi Id')}" />
					
						<g:sortableColumn property="paCreaterAddressId" title="${message(code: 'plotInfoPaymentInfo.paCreaterAddressId.label', default: 'Pa Creater Address Id')}" />
					
						<g:sortableColumn property="paCreaterName" title="${message(code: 'plotInfoPaymentInfo.paCreaterName.label', default: 'Pa Creater Name')}" />
					
						<g:sortableColumn property="pyCreaterAuthority" title="${message(code: 'plotInfoPaymentInfo.pyCreaterAuthority.label', default: 'Py Creater Authority')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${plotInfoPaymentInfoInstanceList}" status="i" var="plotInfoPaymentInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${plotInfoPaymentInfoInstance.id}">${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paPlId")}</g:link></td>
					
						<td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paId")}</td>
					
						<td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paBiId")}</td>
					
						<td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paCreaterAddressId")}</td>
					
						<td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "paCreaterName")}</td>
					
						<td>${fieldValue(bean: plotInfoPaymentInfoInstance, field: "pyCreaterAuthority")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${plotInfoPaymentInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
