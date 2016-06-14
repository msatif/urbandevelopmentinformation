<%@ page import="urbandevelopmentinformation.FloorInfo" %>



<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flId', 'error')} required">
	<label for="flId">
		<g:message code="floorInfo.flId.label" default="Fl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flId" type="number" value="${floorInfoInstance.flId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flBuId', 'error')} required">
	<label for="flBuId">
		<g:message code="floorInfo.flBuId.label" default="Fl Bu Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flBuId" type="number" value="${floorInfoInstance.flBuId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flCode', 'error')} required">
	<label for="flCode">
		<g:message code="floorInfo.flCode.label" default="Fl Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="flCode" required="" value="${floorInfoInstance?.flCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flName', 'error')} required">
	<label for="flName">
		<g:message code="floorInfo.flName.label" default="Fl Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="flName" required="" value="${floorInfoInstance?.flName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flUseType', 'error')} required">
	<label for="flUseType">
		<g:message code="floorInfo.flUseType.label" default="Fl Use Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="flUseType" required="" value="${floorInfoInstance?.flUseType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flNumberOfFloorUnit', 'error')} required">
	<label for="flNumberOfFloorUnit">
		<g:message code="floorInfo.flNumberOfFloorUnit.label" default="Fl Number Of Floor Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flNumberOfFloorUnit" value="${fieldValue(bean: floorInfoInstance, field: 'flNumberOfFloorUnit')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flTotalFloorArea', 'error')} required">
	<label for="flTotalFloorArea">
		<g:message code="floorInfo.flTotalFloorArea.label" default="Fl Total Floor Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flTotalFloorArea" value="${fieldValue(bean: floorInfoInstance, field: 'flTotalFloorArea')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flTotalFloorHeight', 'error')} required">
	<label for="flTotalFloorHeight">
		<g:message code="floorInfo.flTotalFloorHeight.label" default="Fl Total Floor Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flTotalFloorHeight" value="${fieldValue(bean: floorInfoInstance, field: 'flTotalFloorHeight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flCenterLongitude', 'error')} required">
	<label for="flCenterLongitude">
		<g:message code="floorInfo.flCenterLongitude.label" default="Fl Center Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flCenterLongitude" value="${fieldValue(bean: floorInfoInstance, field: 'flCenterLongitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flCenterLatitude', 'error')} required">
	<label for="flCenterLatitude">
		<g:message code="floorInfo.flCenterLatitude.label" default="Fl Center Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="flCenterLatitude" value="${fieldValue(bean: floorInfoInstance, field: 'flCenterLatitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flLayoutPicture', 'error')} required">
	<label for="flLayoutPicture">
		<g:message code="floorInfo.flLayoutPicture.label" default="Fl Layout Picture" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="flLayoutPicture" name="flLayoutPicture" />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'flRemark', 'error')} required">
	<label for="flRemark">
		<g:message code="floorInfo.flRemark.label" default="Fl Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="flRemark" required="" value="${floorInfoInstance?.flRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'ownership', 'error')} ">
	<label for="ownership">
		<g:message code="floorInfo.ownership.label" default="Ownership" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${floorInfoInstance?.ownership?}" var="o">
    <li><g:link controller="floorInfoOwnershipInfo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="floorInfoOwnershipInfo" action="create" params="['floorInfo.id': floorInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'floorInfoOwnershipInfo.label', default: 'FloorInfoOwnershipInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'authorizationInfo', 'error')} ">
	<label for="authorizationInfo">
		<g:message code="floorInfo.authorizationInfo.label" default="Authorization Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${floorInfoInstance?.authorizationInfo?}" var="a">
    <li><g:link controller="floorInfoAuthorizationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="floorInfoAuthorizationInfo" action="create" params="['floorInfo.id': floorInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'floorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'utilityInfo', 'error')} ">
	<label for="utilityInfo">
		<g:message code="floorInfo.utilityInfo.label" default="Utility Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${floorInfoInstance?.utilityInfo?}" var="u">
    <li><g:link controller="floorInfoUtilityInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="floorInfoUtilityInfo" action="create" params="['floorInfo.id': floorInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'floorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'billingInfo', 'error')} ">
	<label for="billingInfo">
		<g:message code="floorInfo.billingInfo.label" default="Billing Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${floorInfoInstance?.billingInfo?}" var="b">
    <li><g:link controller="floorInfoBillingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="floorInfoBillingInfo" action="create" params="['floorInfo.id': floorInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'floorInfoBillingInfo.label', default: 'FloorInfoBillingInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'paymentInfo', 'error')} ">
	<label for="paymentInfo">
		<g:message code="floorInfo.paymentInfo.label" default="Payment Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${floorInfoInstance?.paymentInfo?}" var="p">
    <li><g:link controller="floorInfoPaymentInfo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="floorInfoPaymentInfo" action="create" params="['floorInfo.id': floorInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'floorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'unitInfo', 'error')} ">
	<label for="unitInfo">
		<g:message code="floorInfo.unitInfo.label" default="Unit Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${floorInfoInstance?.unitInfo?}" var="u">
    <li><g:link controller="unitInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfo" action="create" params="['floorInfo.id': floorInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'unitInfo.label', default: 'UnitInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoInstance, field: 'buildingInfo', 'error')} required">
	<label for="buildingInfo">
		<g:message code="floorInfo.buildingInfo.label" default="Building Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingInfo" name="buildingInfo.id" from="${urbandevelopmentinformation.BuildingInfo.list()}" optionKey="id" required="" value="${floorInfoInstance?.buildingInfo?.id}" class="many-to-one"/>

</div>

