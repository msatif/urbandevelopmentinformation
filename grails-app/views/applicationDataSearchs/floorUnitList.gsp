<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Floor Units Information</title>
</head>
<body>

<g:form action="floorUnitList">
<g:render template="floorUnitSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="floorUnitList" value="Search"/></td>
</tr>
</table>

<g:render template="floorUnitSearchResult"></g:render>
</g:form>

</body>
</html>