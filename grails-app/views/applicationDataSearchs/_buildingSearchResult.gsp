<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Building Id</td>
 <td>Building Address Id</td>
 <td>Building Plot Id</td>  
 <td>Building Name</td> 
 <td>Building Code</td>         
 <td>Building User Type</td>  
 <td>Building Number Of Floor</td>  
 <td>Building Total Ground Area</td>         
 
  
            
</tr>
 </thead>
 
<g:each in="${buildings}" var="buildingOb" status="i">

<tr>
<td><a href="#"> ${plotOb.buId} </a></td>
<td>${buildingOb.buAddressId}</td>
<td>${buildingOb.buPlId}</td>
<td>${buildingOb.buCode}</td>
<td>${buildingOb.buName}</td>
<td>${buildingOb.buUseType}</td>
<td>${buildingOb.buNumberOfFloor}</td>
<td>${buildingOb.buNumberOfFloorUnit}</td>
<td>${buildingOb.buTotalGroundArea}</td>
<td>${buildingOb.buSetBackFront}</td>
<td>${buildingOb.buSetBackBack}</td>
<td>${buildingOb.buSetBackRight}</td>
<td>${buildingOb.buSetBackLeft}</td>


  </tr>
</g:each>

</table>




