<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>owner Id</td>
 <td>owner address Id</td> 
 <td>owner Full Name</td>
 <td>owner Type</td> 
 <td>owner Applied Date</td>
 <td>owner Last Modified Date</td> 
 
          
</tr>
 </thead>
 
<g:each in="${ownerships}" var="ownershipOb" status="i">

<tr>
<td><a href="#"> ${ownershipOb.owId} </a></td>
<td>${ownershipOb.owAddressId}</td>
<td>${ownershipOb.owFullName}</td>
<td>${ownershipOb.owType}</td>
<td>${ownershipOb.owAppliedDate}</td>
<td>${ownershipOb.owLastModifiedDate}</td>
<td>${ownershipOb.owApprovedDate}</td>
<td>${ownershipOb.owStatus}</td>






  </tr>
</g:each>

</table>

