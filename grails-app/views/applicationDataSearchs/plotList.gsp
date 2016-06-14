<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Plot Information</title>
</head>
<body>

<g:form action="plotList">
<g:render template="plotSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="plotList" value="Search"/></td>
</tr>
</table>

<g:render template="plotSearchResult"></g:render>
</g:form>

</body>
</html>