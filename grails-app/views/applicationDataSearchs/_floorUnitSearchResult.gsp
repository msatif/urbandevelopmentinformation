<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Floor Unit Id</td>
 <td>Floor Id</td>   
 <td>Floor Unit Code</td>         
 <td>Floor Unit User Type</td>  
 <td>Floor Unit Name</td>  
<td> Floor Number Of Floor Unit</td>
<td>Building Total Unit Area </td>
            
</tr>
 </thead>
 
<g:each in="${floorUnits}" var="floorUnitOb" status="i">

<tr>
<td><a href="#"> ${floorUnitOb.floorUnitId} </a></td>
<td>${floorUnitOb.floorId}</td>
<td>${floorUnitOb.floorUnitCode}</td>
<td>${floorUnitOb.floorUnitUserType}</td>
<td>${floorUnitOb.floorUnitName}</td>
<td>${floorUnitOb.flNumberOfFloorUnit}</td>
<td>${floorUnitOb.buTotalUnitArea}</td>

  </tr>
</g:each>

</table>
