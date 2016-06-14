<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Registered Payment Information</title>
</head>
<body>

<g:form action="paymentList">
<g:render template="paymentSearchForm"></g:render>
<table>
<tr>
<td><g:submitButton name="paymentList" value="Search"/></td>
</tr>
</table>

<g:render template="paymentSearchResult"></g:render>
</g:form>

</body>
</html>