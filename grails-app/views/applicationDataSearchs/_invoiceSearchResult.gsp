<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Utility Name</td>
 <td>Authority Id</td>   
 
            
</tr>
 </thead>
 
<g:each in="${invoices}" var="invoiceOb" status="i">

<tr>
<td><a href="#"> ${invoiceOb.utilityName} </a></td>
<td>${invoiceOb.authorityId}</td>


  </tr>
</g:each>

</table>

 