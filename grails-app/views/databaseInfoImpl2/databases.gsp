<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Database Connection</title>
</head>
<body>


<table border="2">


<tr>
 <td><h5>Database Connection Info:</h5></td>        
</tr>


<g:each in="${databaseMetadataInfoTO}" var="nconn">

<tr>
 <td>
Database Schema Name: ${databaseMetadataInfoTO.SchemaName}
 </td>
 </tr>
 <tr>
 <td>
 Database Product Name: ${databaseMetadataInfoTO.DatabaseProductName}
 </td>
 </tr>
 <tr>
 <td>
 Database Product Version: ${databaseMetadataInfoTO. DatabaseProductVersion}
 </td>
 </tr>
  <tr>
 <td>
 JDBC Major Version: ${databaseMetadataInfoTO.JDBCMajorVersion}
 </td>
 </tr>
   <tr>
 <td>
 JDBC Minor Version: ${databaseMetadataInfoTO.JDBCMinorVersion}
 </td>
 </tr>
</g:each>
<table>
<tr>
<td><g:message code="database.schema.name"/> :Schema Name</td> 
</tr>
<tr>
<td><g:message code="database.product.name"/></td>
</tr>
<tr>

<td><g:message code="database.product.version"/></td>
</tr>
<tr>
<td><g:message code="database.major.version"/> </td>
</tr>
<tr>
<td><g:message code="database.minor.version"/></td>

</tr>

</table>


</table>

</body>
</html>