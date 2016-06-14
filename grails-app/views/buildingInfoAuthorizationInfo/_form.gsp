<%@ page import="urbandevelopmentinformation.BuildingInfoAuthorizationInfo" %>



<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auId', 'error')} required">
	<label for="auId">
		<g:message code="buildingInfoAuthorizationInfo.auId.label" default="Au Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auId" type="number" value="${buildingInfoAuthorizationInfoInstance.auId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auAddressId', 'error')} required">
	<label for="auAddressId">
		<g:message code="buildingInfoAuthorizationInfo.auAddressId.label" default="Au Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auAddressId" type="number" value="${buildingInfoAuthorizationInfoInstance.auAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auAppliedDate', 'error')} required">
	<label for="auAppliedDate">
		<g:message code="buildingInfoAuthorizationInfo.auAppliedDate.label" default="Au Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auAppliedDate" precision="day"  value="${buildingInfoAuthorizationInfoInstance?.auAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auApprovalDate', 'error')} required">
	<label for="auApprovalDate">
		<g:message code="buildingInfoAuthorizationInfo.auApprovalDate.label" default="Au Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auApprovalDate" precision="day"  value="${buildingInfoAuthorizationInfoInstance?.auApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auPublishDate', 'error')} required">
	<label for="auPublishDate">
		<g:message code="buildingInfoAuthorizationInfo.auPublishDate.label" default="Au Publish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auPublishDate" precision="day"  value="${buildingInfoAuthorizationInfoInstance?.auPublishDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auCode', 'error')} required">
	<label for="auCode">
		<g:message code="buildingInfoAuthorizationInfo.auCode.label" default="Au Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auCode" required="" value="${buildingInfoAuthorizationInfoInstance?.auCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auName', 'error')} required">
	<label for="auName">
		<g:message code="buildingInfoAuthorizationInfo.auName.label" default="Au Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auName" required="" value="${buildingInfoAuthorizationInfoInstance?.auName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auType', 'error')} required">
	<label for="auType">
		<g:message code="buildingInfoAuthorizationInfo.auType.label" default="Au Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auType" required="" value="${buildingInfoAuthorizationInfoInstance?.auType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auNumber', 'error')} required">
	<label for="auNumber">
		<g:message code="buildingInfoAuthorizationInfo.auNumber.label" default="Au Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auNumber" required="" value="${buildingInfoAuthorizationInfoInstance?.auNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auServiceCode', 'error')} required">
	<label for="auServiceCode">
		<g:message code="buildingInfoAuthorizationInfo.auServiceCode.label" default="Au Service Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auServiceCode" required="" value="${buildingInfoAuthorizationInfoInstance?.auServiceCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auServiceName', 'error')} required">
	<label for="auServiceName">
		<g:message code="buildingInfoAuthorizationInfo.auServiceName.label" default="Au Service Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auServiceName" required="" value="${buildingInfoAuthorizationInfoInstance?.auServiceName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auApplicationCopy', 'error')} required">
	<label for="auApplicationCopy">
		<g:message code="buildingInfoAuthorizationInfo.auApplicationCopy.label" default="Au Application Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApplicationCopy" name="auApplicationCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auApprovedCopy', 'error')} required">
	<label for="auApprovedCopy">
		<g:message code="buildingInfoAuthorizationInfo.auApprovedCopy.label" default="Au Approved Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApprovedCopy" name="auApprovedCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auRemark', 'error')} required">
	<label for="auRemark">
		<g:message code="buildingInfoAuthorizationInfo.auRemark.label" default="Au Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auRemark" required="" value="${buildingInfoAuthorizationInfoInstance?.auRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'auBuId', 'error')} required">
	<label for="auBuId">
		<g:message code="buildingInfoAuthorizationInfo.auBuId.label" default="Au Bu Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auBuId" type="number" value="${buildingInfoAuthorizationInfoInstance.auBuId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: buildingInfoAuthorizationInfoInstance, field: 'buildingInfo', 'error')} required">
	<label for="buildingInfo">
		<g:message code="buildingInfoAuthorizationInfo.buildingInfo.label" default="Building Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingInfo" name="buildingInfo.id" from="${urbandevelopmentinformation.BuildingInfo.list()}" optionKey="id" required="" value="${buildingInfoAuthorizationInfoInstance?.buildingInfo?.id}" class="many-to-one"/>

</div>

