<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Plot Id</td>
 <td>Plot Address Id</td>   
 <td>Plot Code</td>         
 <td>Plot Number</td>   
 <td>Plot Utilities</td>   
 <td>Plot Layout Picture</td>         
 <td>Plot Utility LocationMap</td>  
 
            
</tr>
 </thead>
 
<g:each in="${plots}" var="plotOb" status="i">

<tr>
<td><a href="#"> ${plotOb.plId} </a></td>
<td>${plotOb.plAddressId}</td>
<td>${plotOb.plCode}</td>
<td>${plotOb.plNumber}</td>
<td>${plotOb.plUtilities}</td>
<td>${plotOb.plLayoutPicture}</td>
<td>${plotOb.plUtilityLocationMap}</td>


  </tr>
</g:each>

</table>

