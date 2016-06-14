<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Ownership Information</title>
</head>
<body>

<g:form action="ownershipList">
<g:render template="ownershipSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="ownershipList" value="Search"/></td>
</tr>
</table>

<g:render template="ownershipSearchResult"></g:render>
</g:form>

</body>
</html>