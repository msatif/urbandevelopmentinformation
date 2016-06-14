<h1> Search Result:${counter}</h1>
<table border="1">
<thead>
<tr>
 <td>Payment Id</td>
 <td>Billing Id</td> 
 <td>Billing Payment Type</td>
 <td>Billing Payment Date</td> 
 <td>Billing Payment Reference Number</td>
 <td>Billing Payment Copy</td> 
 <td>Billing Payment Remark</td>
 <td>Billing Paid Amount</td>   
 
            
</tr>
 </thead>
 
<g:each in="${payments}" var="paymentOb" status="i">

<tr>
<td><a href="#"> ${paymentOb.bipaymentId} </a></td>
<td>${paymentOb.biId}</td>
<td>${paymentOb.biPaymentType}</td>
<td>${paymentOb.biPaymentDate}</td>
<td>${paymentOb.biPaymentReferenceNumber}</td>
<td>${paymentOb.biPaymentCopy}</td>
<td>${paymentOb.biPaymentRemark}</td>
<td>${paymentOb.biPaymentRemark}</td>
<td>${paymentOb.biPaidAmount}</td>







  </tr>
</g:each>

</table>

 