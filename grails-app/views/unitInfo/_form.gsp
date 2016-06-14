<%@ page import="urbandevelopmentinformation.UnitInfo" %>



<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unId', 'error')} required">
	<label for="unId">
		<g:message code="unitInfo.unId.label" default="Un Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unId" type="number" value="${unitInfoInstance.unId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unflId', 'error')} required">
	<label for="unflId">
		<g:message code="unitInfo.unflId.label" default="Unfl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unflId" type="number" value="${unitInfoInstance.unflId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unCode', 'error')} required">
	<label for="unCode">
		<g:message code="unitInfo.unCode.label" default="Un Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unCode" required="" value="${unitInfoInstance?.unCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unName', 'error')} required">
	<label for="unName">
		<g:message code="unitInfo.unName.label" default="Un Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unName" required="" value="${unitInfoInstance?.unName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unUseType', 'error')} required">
	<label for="unUseType">
		<g:message code="unitInfo.unUseType.label" default="Un Use Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unUseType" required="" value="${unitInfoInstance?.unUseType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unNumberOfFloorUnit', 'error')} required">
	<label for="unNumberOfFloorUnit">
		<g:message code="unitInfo.unNumberOfFloorUnit.label" default="Un Number Of Floor Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unNumberOfFloorUnit" value="${fieldValue(bean: unitInfoInstance, field: 'unNumberOfFloorUnit')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unTotalUnitArea', 'error')} required">
	<label for="unTotalUnitArea">
		<g:message code="unitInfo.unTotalUnitArea.label" default="Un Total Unit Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unTotalUnitArea" value="${fieldValue(bean: unitInfoInstance, field: 'unTotalUnitArea')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unTotalHeight', 'error')} required">
	<label for="unTotalHeight">
		<g:message code="unitInfo.unTotalHeight.label" default="Un Total Height" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unTotalHeight" value="${fieldValue(bean: unitInfoInstance, field: 'unTotalHeight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unCenterLongitude', 'error')} required">
	<label for="unCenterLongitude">
		<g:message code="unitInfo.unCenterLongitude.label" default="Un Center Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unCenterLongitude" value="${fieldValue(bean: unitInfoInstance, field: 'unCenterLongitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unCenterLatitude', 'error')} required">
	<label for="unCenterLatitude">
		<g:message code="unitInfo.unCenterLatitude.label" default="Un Center Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="unCenterLatitude" value="${fieldValue(bean: unitInfoInstance, field: 'unCenterLatitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unLayoutPicture', 'error')} required">
	<label for="unLayoutPicture">
		<g:message code="unitInfo.unLayoutPicture.label" default="Un Layout Picture" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="unLayoutPicture" name="unLayoutPicture" />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'unRemark', 'error')} required">
	<label for="unRemark">
		<g:message code="unitInfo.unRemark.label" default="Un Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unRemark" required="" value="${unitInfoInstance?.unRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'ownership', 'error')} ">
	<label for="ownership">
		<g:message code="unitInfo.ownership.label" default="Ownership" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.ownership?}" var="o">
    <li><g:link controller="unitInfoOwnershipInfo" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoOwnershipInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'unitInfoOwnershipInfo.label', default: 'UnitInfoOwnershipInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'authorizationInfo', 'error')} ">
	<label for="authorizationInfo">
		<g:message code="unitInfo.authorizationInfo.label" default="Authorization Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.authorizationInfo?}" var="a">
    <li><g:link controller="unitInfoAuthorizationInfo" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoAuthorizationInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'unitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'utilityInfo', 'error')} ">
	<label for="utilityInfo">
		<g:message code="unitInfo.utilityInfo.label" default="Utility Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.utilityInfo?}" var="u">
    <li><g:link controller="unitInfoUtilityInfo" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoUtilityInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'unitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'billingInfo', 'error')} ">
	<label for="billingInfo">
		<g:message code="unitInfo.billingInfo.label" default="Billing Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.billingInfo?}" var="b">
    <li><g:link controller="unitInfoBillingInfo" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoBillingInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'unitInfoBillingInfo.label', default: 'UnitInfoBillingInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'paymentInfo', 'error')} ">
	<label for="paymentInfo">
		<g:message code="unitInfo.paymentInfo.label" default="Payment Info" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitInfoInstance?.paymentInfo?}" var="p">
    <li><g:link controller="unitInfoPaymentInfo" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="unitInfoPaymentInfo" action="create" params="['unitInfo.id': unitInfoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'unitInfoPaymentInfo.label', default: 'UnitInfoPaymentInfo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<g:message code="unitInfo.floorInfo.label" default="Floor Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${unitInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>

