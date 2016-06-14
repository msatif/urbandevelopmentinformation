<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Floor Id</td>
 <td>Building Id</td>   
 <td>Floor Code</td>         
 <td>Floor Type</td>  
 <td>Floor Name</td>  
<td> Floor Number Of Floor Unit</td>
<td>Building Total Floor Area</td>
            
</tr>
 </thead>
 
<g:each in="${floors}" var="floorOb" status="i">

<tr>
<td><a href="#"> ${floorOb.flooorId} </a></td>
<td>${floorOb.buildingId}</td>
<td>${floorOb.floorCode}</td>
<td>${floorOb.floorType}</td>
<td>${floorOb.floorName}</td>
<td>${floorOb.flNumberOfFloorUnit}</td>
<td>${floorOb.buTotalFloorArea}</td>

  </tr>
</g:each>

</table>

