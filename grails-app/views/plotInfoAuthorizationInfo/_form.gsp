<%@ page import="urbandevelopmentinformation.PlotInfoAuthorizationInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auId', 'error')} required">
	<label for="auId">
		<g:message code="plotInfoAuthorizationInfo.auId.label" default="Au Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auId" type="number" value="${plotInfoAuthorizationInfoInstance.auId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auAddressId', 'error')} required">
	<label for="auAddressId">
		<g:message code="addressId.label" default="Au Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auAddressId" type="number" value="${plotInfoAuthorizationInfoInstance.auAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auAppliedDate', 'error')} required">
	<label for="auAppliedDate">
		<g:message code="plotInfoAuthorizationInfo.auAppliedDate.label" default="Au Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auAppliedDate" precision="day"  value="${plotInfoAuthorizationInfoInstance?.auAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auApprovalDate', 'error')} required">
	<label for="auApprovalDate">
		<g:message code="plotInfoAuthorizationInfo.auApprovalDate.label" default="Au Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auApprovalDate" precision="day"  value="${plotInfoAuthorizationInfoInstance?.auApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auPublishDate', 'error')} required">
	<label for="auPublishDate">
		<g:message code="plotInfoAuthorizationInfo.auPublishDate.label" default="Au Publish Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="auPublishDate" precision="day"  value="${plotInfoAuthorizationInfoInstance?.auPublishDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auCode', 'error')} required">
	<label for="auCode">
		<g:message code="plotInfoAuthorizationInfo.auCode.label" default="Au Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auCode" required="" value="${plotInfoAuthorizationInfoInstance?.auCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auName', 'error')} required">
	<label for="auName">
		<g:message code="plotInfoAuthorizationInfo.auName.label" default="Au Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auName" required="" value="${plotInfoAuthorizationInfoInstance?.auName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auType', 'error')} required">
	<label for="auType">
		<g:message code="Type.label" default="Au Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auType" required="" value="${plotInfoAuthorizationInfoInstance?.auType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auNumber', 'error')} required">
	<label for="auNumber">
		<g:message code="Number.label" default="Au Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auNumber" required="" value="${plotInfoAuthorizationInfoInstance?.auNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auServiceCode', 'error')} required">
	<label for="auServiceCode">
		<g:message code="plotInfoAuthorizationInfo.auServiceCode.label" default="Au Service Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auServiceCode" required="" value="${plotInfoAuthorizationInfoInstance?.auServiceCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auServiceName', 'error')} required">
	<label for="auServiceName">
		<g:message code="plotInfoAuthorizationInfo.auServiceName.label" default="Au Service Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auServiceName" required="" value="${plotInfoAuthorizationInfoInstance?.auServiceName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auApplicationCopy', 'error')} required">
	<label for="auApplicationCopy">
		<g:message code="plotInfoAuthorizationInfo.auApplicationCopy.label" default="Au Application Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApplicationCopy" name="auApplicationCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auApprovedCopy', 'error')} required">
	<label for="auApprovedCopy">
		<g:message code="plotInfoAuthorizationInfo.auApprovedCopy.label" default="Au Approved Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="auApprovedCopy" name="auApprovedCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auRemark', 'error')} required">
	<label for="auRemark">
		<g:message code="Remark.label" default="Au Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="auRemark" required="" value="${plotInfoAuthorizationInfoInstance?.auRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'auPlId', 'error')} required">
	<label for="auPlId">
		<g:message code="plId.label" default="Au Pl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="auPlId" type="number" value="${plotInfoAuthorizationInfoInstance.auPlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoAuthorizationInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<g:message code="plotInfoAuthorizationInfo.plotInfo.label" default="Plot Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoAuthorizationInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

