<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Utility Id</td>
 <td>Authority Id</td>   
 <td>Utility Code</td>         
 <td>Utility User Type</td>  
 <td>Utility Name</td>  
            
</tr>
 </thead>
 
<g:each in="${floorUtilitys}" var="floorUtilityOb" status="i">

<tr>
<td><a href="#"> ${floorUtilityOb.utilityId} </a></td>
<td>${floorUtilityOb.authorityId}</td>
<td>${floorUtilityOb.utilityCode}</td>
<td>${floorUtilityOb.utilityUserType}</td>
<td>${floorUtilityOb.utilityName}</td>

  </tr>
</g:each>

</table>

