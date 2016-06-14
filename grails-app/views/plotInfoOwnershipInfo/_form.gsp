<%@ page import="urbandevelopmentinformation.PlotInfoOwnershipInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owId', 'error')} required">
	<label for="owId">
		<g:message code="plotInfoOwnershipInfo.owId.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owId" type="number" value="${plotInfoOwnershipInfoInstance.owId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owAddressId', 'error')} required">
	<label for="owAddressId">
		<g:message code="plotInfoOwnershipInfo.owAddressId.label" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owAddressId" type="number" value="${plotInfoOwnershipInfoInstance.owAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owFullName', 'error')} required">
	<label for="owFullName">
		<g:message code="plotInfoOwnershipInfo.owFullName.label" default="Ow Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owFullName" required="" value="${plotInfoOwnershipInfoInstance?.owFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owType', 'error')} required">
	<label for="owType">
		<g:message code="plotInfoOwnershipInfo.owType.label" default="Ow Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owType" required="" value="${plotInfoOwnershipInfoInstance?.owType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owAppliedDate', 'error')} required">
	<label for="owAppliedDate">
		<g:message code="plotInfoOwnershipInfo.owAppliedDate.label" default="Ow Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owAppliedDate" precision="day"  value="${plotInfoOwnershipInfoInstance?.owAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owLastModifiedDate', 'error')} required">
	<label for="owLastModifiedDate">
		<g:message code="LastModifiedDate.label" default="Ow Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owLastModifiedDate" precision="day"  value="${plotInfoOwnershipInfoInstance?.owLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owApprovedDate', 'error')} required">
	<label for="owApprovedDate">
		<g:message code="ApprovedDate.label" default="Ow Approved Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owApprovedDate" precision="day"  value="${plotInfoOwnershipInfoInstance?.owApprovedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owStatus', 'error')} required">
	<label for="owStatus">
		<g:message code="plotInfoOwnershipInfo.owStatus.label" default="Ow Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owStatus" required="" value="${plotInfoOwnershipInfoInstance?.owStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owRemark', 'error')} required">
	<label for="owRemark">
		<g:message code="Remark.label" default="Ow Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owRemark" required="" value="${plotInfoOwnershipInfoInstance?.owRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'owPlId', 'error')} required">
	<label for="owPlId">
		<g:message code="plId.label" default="Ow Pl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owPlId" type="number" value="${plotInfoOwnershipInfoInstance.owPlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoOwnershipInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<g:message code="plotInfoOwnershipInfo.plotInfo.label" default="Plot Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoOwnershipInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

