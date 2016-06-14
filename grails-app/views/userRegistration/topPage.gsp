<%@ page import="urbandevelopmentinformation.UserRegistration" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="urbanviewwebapp Login" />
        <title><g:message code="urbanviewwebapp.login.label" args="[entityName]" /></title>
    </head>
    <body>
    <table>
    
    <tr>
    <td><b> <g:message code="urban.development.public" /></b></td>
    <td>
    <g:link controller="userRegistration" action="authenticateWebPortal"><input type="button" value="<g:message code="urban.development.public.web.protal" />"></g:link>
    </td>
    </tr>
    
    <tr>
     <td>
      <b> <g:message code="urban.development.private" /></b>
    </td>
    
    <td>
  <g:link controller="userRegistration" action="login"><input type="button" class="button small blue" value="<g:message code="urban.development.web.application" />"></g:link>
    </td>
    </tr>
      <tr><td></td><td></td></tr>
      <tr>
      <td>
      <b> <g:message code="urban.development.admin" /></b>
    </td>
    
    <td>
      <g:link controller="userRegistration" action="loginAdmin"><input type="button" value="<g:message code="urban.development.web.administrator" />"></g:link>
    </td>
    </tr>

  </table>
  

    </body>
</html>