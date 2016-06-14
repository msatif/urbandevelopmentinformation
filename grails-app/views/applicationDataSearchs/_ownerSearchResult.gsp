<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>ownerId</td>
 <td>addressId</td> 
 <td>firstName</td>
 <td>middleName</td> 
 <td>lastName</td>
 <td>birthDate</td> 
 <td>birthCertificateImage</td>
 <td>passportNumber</td> 
 <td>passportExpairDate</td>
 <td>nationalIdentificationNumber</td> 
 <td>Union Code</td>
 <td>Union Name</td> 
 <td>Village Code</td> 
 <td>Village Name</td>
 <td>Postal Code zip Code</td> 
 <td>Postal Name zip Name</td>
 <td>taxIdentificationNumber</td> 
 <td>professionType</td>
 <td>professionInstitute</td>  
 <td>professionPosition</td>  
 <td>professionalRemark</td>  
 <td>status</td>  
 <td>educationLevel</td>  
 <td>educationInstitute</td>  
 <td>educationResult</td>  
 <td>educationPassingYear</td>  
 <td>fatherFirstName</td>  
 <td>fatherMiddleName</td>  
 <td>fatherLastName</td> 
 <td>fatherBirthDate</td>  
 <td>fatherNationalIdentificationNumber</td>  
 <td>motherFirstName</td>  
 <td>motherMiddleName</td>  
 <td>motherLastName</td>
 <td>motherNationalIdentificationNumber</td>  
 <td>motherBirthDate</td>  

 
  
 
            
</tr>
 </thead>
 
<g:each in="${owners}" var="ownerOb" status="i">

<tr>
<td><a href="#"> ${ownerOb.ownerId} </a></td>
<td>${ownerOb.addressId}</td>
<td>${ownerOb.firstName}</td>
<td>${ownerOb.middleName}</td>
<td>${ownerOb.lastName}</td>
<td>${ownerOb.birthDate}</td>
<td>${ownerOb.birthCertificateImage}</td>
<td>${ownerOb.passportNumber}</td>
<td>${ownerOb.passportIssueDate}</td>
<td>${ownerOb.passportExpairDate}</td>
<td>${ownerOb.nationalIdentificationNumber}</td>
<td>${ownerOb.unionCode}</td>
<td>${ownerOb.unionName}</td>
<td>${ownerOb.villageCode}</td>
<td>${ownerOb.villageName}</td>
<td>${ownerOb.postalCodezipCode}</td>
<td>${ownerOb.postalNamezipName}</td>
<td>${ownerOb.taxIdentificationNumber}</td>
<td>${ownerOb.professionType}</td>
<td>${ownerOb.professionInstitute}</td>
<td>${ownerOb.professionPosition}</td>
<td>${ownerOb.professionalRemark}</td>
<td>${ownerOb.status}</td>
<td>${ownerOb.educationLevel}</td>
<td>${ownerOb.educationInstitute}</td>
<td>${ownerOb.educationResult}</td>
<td>${ownerOb.educationPassingYear}</td>
<td>${ownerOb.fatherFirstName}</td>
<td>${ownerOb.fatherMiddleName}</td>
<td>${ownerOb.fatherLastName}</td>
<td>${ownerOb.fatherBirthDate}</td>
<td>${ownerOb.fatherNationalIdentificationNumber}</td>
<td>${ownerOb.motherFirstName}</td>
<td>${ownerOb.motherMiddleName}</td>
<td>${ownerOb.motherLastName}</td>
<td>${ownerOb.motherNationalIdentificationNumber}</td>
<td>${ownerOb.motherBirthDate}</td>






  </tr>
</g:each>

</table>

