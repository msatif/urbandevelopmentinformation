<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Owners Information</title>
</head>
<body>

<g:form action="ownerList">
<g:render template="ownerSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="ownerList" value="Search"/></td>
</tr>
</table>

<g:render template="ownerSearchResult"></g:render>
</g:form>

</body>
</html>