<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Invoice Information</title>
</head>
<body>

<g:form action="invoiceList">
<g:render template="invoiceSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="invoiceList" value="Search"/></td>
</tr>
</table>

<g:render template="invoiceSearchResult"></g:render>
</g:form>

</body>
</html>