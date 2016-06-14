<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Floor Utility Information</title>
</head>
<body>

<g:form action="floorUtilityList">
<g:render template="floorUtilitySearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="floorUtilityList" value="Search"/></td>
</tr>
</table>

<g:render template="floorUtilitySearchResult"></g:render>
</g:form>

</body>
</html>