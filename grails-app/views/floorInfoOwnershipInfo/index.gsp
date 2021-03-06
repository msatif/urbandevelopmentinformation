
<%@ page import="urbandevelopmentinformation.FloorInfoOwnershipInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'floorInfoOwnershipInfo.label', default: 'FloorInfoOwnershipInfo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-floorInfoOwnershipInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-floorInfoOwnershipInfo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="owId" title="${message(code: 'floorInfoOwnershipInfo.owId.label', default: 'Ow Id')}" />
					
						<g:sortableColumn property="owAddressId" title="${message(code: 'floorInfoOwnershipInfo.owAddressId.label', default: 'Ow Address Id')}" />
					
						<g:sortableColumn property="owFullName" title="${message(code: 'floorInfoOwnershipInfo.owFullName.label', default: 'Ow Full Name')}" />
					
						<g:sortableColumn property="owType" title="${message(code: 'floorInfoOwnershipInfo.owType.label', default: 'Ow Type')}" />
					
						<g:sortableColumn property="owAppliedDate" title="${message(code: 'floorInfoOwnershipInfo.owAppliedDate.label', default: 'Ow Applied Date')}" />
					
						<g:sortableColumn property="owLastModifiedDate" title="${message(code: 'floorInfoOwnershipInfo.owLastModifiedDate.label', default: 'Ow Last Modified Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${floorInfoOwnershipInfoInstanceList}" status="i" var="floorInfoOwnershipInfoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${floorInfoOwnershipInfoInstance.id}">${fieldValue(bean: floorInfoOwnershipInfoInstance, field: "owId")}</g:link></td>
					
						<td>${fieldValue(bean: floorInfoOwnershipInfoInstance, field: "owAddressId")}</td>
					
						<td>${fieldValue(bean: floorInfoOwnershipInfoInstance, field: "owFullName")}</td>
					
						<td>${fieldValue(bean: floorInfoOwnershipInfoInstance, field: "owType")}</td>
					
						<td><g:formatDate date="${floorInfoOwnershipInfoInstance.owAppliedDate}" /></td>
					
						<td><g:formatDate date="${floorInfoOwnershipInfoInstance.owLastModifiedDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${floorInfoOwnershipInfoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
