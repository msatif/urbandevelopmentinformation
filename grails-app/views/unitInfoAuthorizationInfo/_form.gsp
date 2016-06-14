<%@ page import="urbandevelopmentinformation.UnitInfoAuthorizationInfo" %>



<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auId', 'error')} required">
	<label for="auId">
		<g:message code="unitInfoAuthorizationInfo.auId.label" default="Au Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auId" type="number" value="${unitInfoAuthorizationInfoInstance.auId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auAddressId', 'error')} required">
	<label for="auAddressId">
		<g:message code="unitInfoAuthorizationInfo.auAddressId.label" default="Au Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auAddressId" type="number" value="${unitInfoAuthorizationInfoInstance.auAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auAppliedDate', 'error')} required">
	<label for="auAppliedDate">
		<g:message code="unitInfoAuthorizationInfo.auAppliedDate.label" default="Au Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auAppliedDate" precision="day"  value="${unitInfoAuthorizationInfoInstance?.auAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auApprovalDate', 'error')} required">
	<label for="auApprovalDate">
		<g:message code="unitInfoAuthorizationInfo.auApprovalDate.label" default="Au Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auApprovalDate" precision="day"  value="${unitInfoAuthorizationInfoInstance?.auApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auPublishDate', 'error')} required">
	<label for="auPublishDate">
		<g:message code="unitInfoAuthorizationInfo.auPublishDate.label" default="Au Publish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auPublishDate" precision="day"  value="${unitInfoAuthorizationInfoInstance?.auPublishDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auCode', 'error')} required">
	<label for="auCode">
		<g:message code="unitInfoAuthorizationInfo.auCode.label" default="Au Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auCode" required="" value="${unitInfoAuthorizationInfoInstance?.auCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auName', 'error')} required">
	<label for="auName">
		<g:message code="unitInfoAuthorizationInfo.auName.label" default="Au Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auName" required="" value="${unitInfoAuthorizationInfoInstance?.auName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auType', 'error')} required">
	<label for="auType">
		<g:message code="unitInfoAuthorizationInfo.auType.label" default="Au Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auType" required="" value="${unitInfoAuthorizationInfoInstance?.auType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auNumber', 'error')} required">
	<label for="auNumber">
		<g:message code="unitInfoAuthorizationInfo.auNumber.label" default="Au Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auNumber" required="" value="${unitInfoAuthorizationInfoInstance?.auNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auServiceCode', 'error')} required">
	<label for="auServiceCode">
		<g:message code="unitInfoAuthorizationInfo.auServiceCode.label" default="Au Service Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auServiceCode" required="" value="${unitInfoAuthorizationInfoInstance?.auServiceCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auServiceName', 'error')} required">
	<label for="auServiceName">
		<g:message code="unitInfoAuthorizationInfo.auServiceName.label" default="Au Service Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auServiceName" required="" value="${unitInfoAuthorizationInfoInstance?.auServiceName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auApplicationCopy', 'error')} required">
	<label for="auApplicationCopy">
		<g:message code="unitInfoAuthorizationInfo.auApplicationCopy.label" default="Au Application Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApplicationCopy" name="auApplicationCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auApprovedCopy', 'error')} required">
	<label for="auApprovedCopy">
		<g:message code="unitInfoAuthorizationInfo.auApprovedCopy.label" default="Au Approved Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApprovedCopy" name="auApprovedCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auRemark', 'error')} required">
	<label for="auRemark">
		<g:message code="unitInfoAuthorizationInfo.auRemark.label" default="Au Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auRemark" required="" value="${unitInfoAuthorizationInfoInstance?.auRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'auUnId', 'error')} required">
	<label for="auUnId">
		<g:message code="unitInfoAuthorizationInfo.auUnId.label" default="Au Un Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auUnId" type="number" value="${unitInfoAuthorizationInfoInstance.auUnId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoAuthorizationInfoInstance, field: 'unitInfo', 'error')} required">
	<label for="unitInfo">
		<g:message code="unitInfoAuthorizationInfo.unitInfo.label" default="Unit Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitInfo" name="unitInfo.id" from="${urbandevelopmentinformation.UnitInfo.list()}" optionKey="id" required="" value="${unitInfoAuthorizationInfoInstance?.unitInfo?.id}" class="many-to-one"/>

</div>

