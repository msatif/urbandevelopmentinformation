<%@ page import="urbandevelopmentinformation.AddressLocationInfo" %>
<!DOCTYPE html>
<html>
 <head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'addressLocationInfo.label', default: 'AddressLocationInfo')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
 </head>
 <body>
  <a href="#list-addressLocationInfo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
   <ul>
    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    <li><g:link class="create" action="create"><g:message code="address.location.create.label"/></g:link></li>
   </ul>
  </div>
  
<g:if test="${flash.message}">
<div class="message" role="status">${flash.message}</div>
</g:if>
<fieldset class="form">
<g:form action="list" method="GET">
<g:render template="addressLocationSearchForm"></g:render> 
<g:submitButton name="list" value="Search"/>
</g:form>
</fieldset>
    <div id="list-addressInfo" class="content scaffold-list" role="main">
   <h1><g:message code="address.location.list.label"/>: ${addressLocationInfoInstanceCount}</h1>
   <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
   </g:if>
   <table>
   <thead>
     <tr>
      <g:sortableColumn property="alId" title="${message(code: 'addressLocationInfo.alId.label')}" />
      <g:sortableColumn property="alDivisionName" title="${message(code: 'addressLocationInfo.alDivisionName.label')}" />
      <g:sortableColumn property="alDistictName" title="${message(code: 'addressLocationInfo.alDistictName.label')}" />
      <g:sortableColumn property="alUpzillaOrThanaName" title="${message(code: 'addressLocationInfo.alUpzillaOrThanaName.label')}" />
      <g:sortableColumn property="alUnionName" title="${message(code: 'addressLocationInfo.alUnionName.label')}" />
      <g:sortableColumn property="alRoadName" title="${message(code: 'addressLocationInfo.alRoadName.label')}" />
      <g:sortableColumn property="alType" title="${message(code: 'addressLocationInfo.alType.label')}" />
     
     </tr>
    </thead>
    <tbody>
    <g:each in="${addressLocationInfoInstanceList}" status="i" var="addressLocationInfoInstance">
     <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
     
      <td><g:link action="show" id="${addressLocationInfoInstance.id}">${fieldValue(bean: addressLocationInfoInstance, field: "alId")}</g:link></td>
     
      <td>${fieldValue(bean: addressLocationInfoInstance, field: "alDivisionName")}</td>
      <td>${fieldValue(bean: addressLocationInfoInstance, field: "alDistictName")}</td>
      <td>${fieldValue(bean: addressLocationInfoInstance, field: "alUpzillaOrThanaName")}</td>
      <td>${fieldValue(bean: addressLocationInfoInstance, field: "alUnionName")}</td>
      <td>${fieldValue(bean: addressLocationInfoInstance, field: "alRoadName")}</td>
      <td>${fieldValue(bean: addressLocationInfoInstance, field: "alType")}</td>
     </tr>
    </g:each>
    </tbody>
   </table>
   <div class="pagination">
    <g:paginate total="${addressLocationInfoInstanceCount ?: 0}" />
   </div>
  </div>
 </body>
</html>