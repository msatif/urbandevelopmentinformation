<%@ page import="urbandevelopmentinformation.FloorInfoAuthorizationInfo" %>



<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auId', 'error')} required">
	<label for="auId">
		<g:message code="floorInfoAuthorizationInfo.auId.label" default="Au Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auId" type="number" value="${floorInfoAuthorizationInfoInstance.auId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auAddressId', 'error')} required">
	<label for="auAddressId">
		<g:message code="floorInfoAuthorizationInfo.auAddressId.label" default="Au Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auAddressId" type="number" value="${floorInfoAuthorizationInfoInstance.auAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auAppliedDate', 'error')} required">
	<label for="auAppliedDate">
		<g:message code="floorInfoAuthorizationInfo.auAppliedDate.label" default="Au Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auAppliedDate" precision="day"  value="${floorInfoAuthorizationInfoInstance?.auAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auApprovalDate', 'error')} required">
	<label for="auApprovalDate">
		<g:message code="floorInfoAuthorizationInfo.auApprovalDate.label" default="Au Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auApprovalDate" precision="day"  value="${floorInfoAuthorizationInfoInstance?.auApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auPublishDate', 'error')} required">
	<label for="auPublishDate">
		<g:message code="floorInfoAuthorizationInfo.auPublishDate.label" default="Au Publish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auPublishDate" precision="day"  value="${floorInfoAuthorizationInfoInstance?.auPublishDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auCode', 'error')} required">
	<label for="auCode">
		<g:message code="floorInfoAuthorizationInfo.auCode.label" default="Au Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auCode" required="" value="${floorInfoAuthorizationInfoInstance?.auCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auName', 'error')} required">
	<label for="auName">
		<g:message code="floorInfoAuthorizationInfo.auName.label" default="Au Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auName" required="" value="${floorInfoAuthorizationInfoInstance?.auName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auType', 'error')} required">
	<label for="auType">
		<g:message code="floorInfoAuthorizationInfo.auType.label" default="Au Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auType" required="" value="${floorInfoAuthorizationInfoInstance?.auType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auNumber', 'error')} required">
	<label for="auNumber">
		<g:message code="floorInfoAuthorizationInfo.auNumber.label" default="Au Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auNumber" required="" value="${floorInfoAuthorizationInfoInstance?.auNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auServiceCode', 'error')} required">
	<label for="auServiceCode">
		<g:message code="floorInfoAuthorizationInfo.auServiceCode.label" default="Au Service Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auServiceCode" required="" value="${floorInfoAuthorizationInfoInstance?.auServiceCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auServiceName', 'error')} required">
	<label for="auServiceName">
		<g:message code="floorInfoAuthorizationInfo.auServiceName.label" default="Au Service Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auServiceName" required="" value="${floorInfoAuthorizationInfoInstance?.auServiceName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auApplicationCopy', 'error')} required">
	<label for="auApplicationCopy">
		<g:message code="floorInfoAuthorizationInfo.auApplicationCopy.label" default="Au Application Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApplicationCopy" name="auApplicationCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auApprovedCopy', 'error')} required">
	<label for="auApprovedCopy">
		<g:message code="floorInfoAuthorizationInfo.auApprovedCopy.label" default="Au Approved Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApprovedCopy" name="auApprovedCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auRemark', 'error')} required">
	<label for="auRemark">
		<g:message code="floorInfoAuthorizationInfo.auRemark.label" default="Au Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auRemark" required="" value="${floorInfoAuthorizationInfoInstance?.auRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'auFlId', 'error')} required">
	<label for="auFlId">
		<g:message code="floorInfoAuthorizationInfo.auFlId.label" default="Au Fl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auFlId" type="number" value="${floorInfoAuthorizationInfoInstance.auFlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoAuthorizationInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<g:message code="floorInfoAuthorizationInfo.floorInfo.label" default="Floor Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${floorInfoAuthorizationInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>

