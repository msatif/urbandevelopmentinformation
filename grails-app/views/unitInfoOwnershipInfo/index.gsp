
<%@ page import="urbandevelopmentinformation.UnitInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitInfoOwnershipInfo.label', default: 'UnitInfoOwnershipInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unitInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-unitInfoOwnershipInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="owId" title="${message(code: 'unitInfoOwnershipInfo.owId.label', default: 'Ow Id')}" />
					
						<g:sortableColumn property="owAddressId" title="${message(code: 'unitInfoOwnershipInfo.owAddressId.label', default: 'Ow Address Id')}" />
					
						<g:sortableColumn property="owFullName" title="${message(code: 'unitInfoOwnershipInfo.owFullName.label', default: 'Ow Full Name')}" />
					
						<g:sortableColumn property="owType" title="${message(code: 'unitInfoOwnershipInfo.owType.label', default: 'Ow Type')}" />
					
						<g:sortableColumn property="owAppliedDate" title="${message(code: 'unitInfoOwnershipInfo.owAppliedDate.label', default: 'Ow Applied Date')}" />
					
						<g:sortableColumn property="owLastModifiedDate" title="${message(code: 'unitInfoOwnershipInfo.owLastModifiedDate.label', default: 'Ow Last Modified Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unitInfoOwnershipInfoInstanceList}" status="i" var="unitInfoOwnershipInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${unitInfoOwnershipInfoInstance.id}">${fieldValue(bean: unitInfoOwnershipInfoInstance, field: "owId")}</g:link></td>
					
						<td>${fieldValue(bean: unitInfoOwnershipInfoInstance, field: "owAddressId")}</td>
					
						<td>${fieldValue(bean: unitInfoOwnershipInfoInstance, field: "owFullName")}</td>
					
						<td>${fieldValue(bean: unitInfoOwnershipInfoInstance, field: "owType")}</td>
					
						<td><g:formatDate date="${unitInfoOwnershipInfoInstance.owAppliedDate}" /></td>
					
						<td><g:formatDate date="${unitInfoOwnershipInfoInstance.owLastModifiedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unitInfoOwnershipInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
