<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Urban Management System</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 25em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
<b> <p>Application Public Data Search </p> </b>
<p>Data Search:</p> 
<table>
	<tr>
	<td><g:link controller="applicationDataSearchs" action="addressLocationPublicList"><input type="button" value="<g:message code="registered.addressLocation.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="addressList"><input type="button" value="<g:message code="registered.addess.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="loadAllRegisterUser"> <input type="button" value="<g:message code="registered.userregistration.label"/>"></g:link></td> 
	</tr>
</table>   
   
<table>	
<thead>Registered Plot:
</thead>
	<tr>
	<td><g:link controller="plotInfo" action="index"><input type="button" value="<g:message code="registered.plotinfo.label"/>"></g:link></td>
	<td><g:link controller="plotInfoOwnershipInfo" action="index"><input type="button" value="<g:message code="registered.ownershipinfo.label"/>"></g:link></td>
	<td><g:link controller="plotInfoAuthorizationInfo" action="index"><input type="button" value="<g:message code="registered.authorizationinfo.label"/>"></g:link></td>
	</tr> 
	<tr>
	<td><g:link controller="plotInfoUtilityInfo" action="index"><input type="button" value="<g:message code="registered.utilityinfo.label"/>"></g:link></td>
	<td><g:link controller="applicationDataSearchs" action="plotBillingList"><input type="button" value="<g:message code="registered.billinginfo.label"/>"></g:link></td>
	<td><g:link controller="applicationDataSearchs" action="plotPaymentList"><input type="button" value="<g:message code="registered.paymentinfo.label"/>"></g:link></td> 
	</tr>
</table>

<table>
<thead>Registered Building:</thead>
	<tr>
	<td><g:link controller="applicationDataSearchs" action="buildingList"><input type="button" value="<g:message code="registered.buildinginfo.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="addressLocationList"><input type="button" value="<g:message code="registered.ownershipinfo.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="addressList"><input type="button" value="<g:message code="registered.authorizationinfo.label"/>"></g:link></td>
	
	</tr>
	<tr>
	<td><g:link controller="applicationDataSearchs" action="plotList"><input type="button" value="<g:message code="registered.utilityinfo.label"/>"></g:link></td>  
	<td><g:link controller="applicationDataSearchs" action="buildingList"><input type="button" value="<g:message code="registered.billinginfo.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="addressLocationList"><input type="button" value="<g:message code="registered.paymentinfo.label"/>"></g:link></td> 
	</tr>
	</table>
	
	<table>
<thead>Registered Floor:</thead>
	<tr>
	<td><g:link controller="applicationDataSearchs" action="addressLocationList"><input type="button" value="<g:message code="registered.floorinfo.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="addressLocationList"><input type="button" value="<g:message code="registered.ownershipinfo.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="addressList"><input type="button" value="<g:message code="registered.authorizationinfo.label"/>"></g:link></td>
	</tr>
	<tr>
	<td><g:link controller="applicationDataSearchs" action="plotList"><input type="button" value="<g:message code="registered.utilityinfo.label"/>"></g:link></td>  
	<td><g:link controller="applicationDataSearchs" action="buildingList"><input type="button" value="<g:message code="registered.billinginfo.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="addressLocationList"><input type="button" value="<g:message code="registered.paymentinfo.label"/>"></g:link></td> 
	</tr>
	
   </table>
   
 <table>
 <thead>Registered Unit:
</thead>
	<tr>
	
	<td><g:link controller="applicationDataSearchs" action="addressList"><input type="button" value="<g:message code="registered.unitinfo.label"/>"></g:link></td> 
    <td><g:link controller="applicationDataSearchs" action="addressLocationList"><input type="button" value="<g:message code="registered.ownershipinfo.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="addressList"><input type="button" value="<g:message code="registered.authorizationinfo.label"/>"></g:link></td>
	</tr>
	<tr>
	<td><g:link controller="applicationDataSearchs" action="plotList"><input type="button" value="<g:message code="registered.utilityinfo.label"/>"></g:link></td>  
	<td><g:link controller="applicationDataSearchs" action="buildingList"><input type="button" value="<g:message code="registered.billinginfo.label"/>"></g:link></td> 
	<td><g:link controller="applicationDataSearchs" action="addressLocationList"><input type="button" value="<g:message code="registered.paymentinfo.label"/>"></g:link></td> 
	</tr>
		
</table>

<p>GIS Data Search: </p> 		
<table>
  <tr>
	<td><g:link controller="webmaps" action="geoserverApplication">Geoserver Application</g:link></td>   
	<td><g:link controller="webmaps" action="createVectorLayer">Vector Layer</g:link></td>   
	</tr>
</table>   

</body>
</html>
