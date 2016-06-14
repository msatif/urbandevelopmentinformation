<%@ page import="urbandevelopmentinformation.UnitInfoOwnershipInfo" %>



<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owId', 'error')} required">
	<label for="owId">
		<g:message code="unitInfoOwnershipInfo.owId.label" default="Ow Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owId" type="number" value="${unitInfoOwnershipInfoInstance.owId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owAddressId', 'error')} required">
	<label for="owAddressId">
		<g:message code="unitInfoOwnershipInfo.owAddressId.label" default="Ow Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owAddressId" type="number" value="${unitInfoOwnershipInfoInstance.owAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owFullName', 'error')} required">
	<label for="owFullName">
		<g:message code="unitInfoOwnershipInfo.owFullName.label" default="Ow Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owFullName" required="" value="${unitInfoOwnershipInfoInstance?.owFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owType', 'error')} required">
	<label for="owType">
		<g:message code="unitInfoOwnershipInfo.owType.label" default="Ow Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owType" required="" value="${unitInfoOwnershipInfoInstance?.owType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owAppliedDate', 'error')} required">
	<label for="owAppliedDate">
		<g:message code="unitInfoOwnershipInfo.owAppliedDate.label" default="Ow Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owAppliedDate" precision="day"  value="${unitInfoOwnershipInfoInstance?.owAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owLastModifiedDate', 'error')} required">
	<label for="owLastModifiedDate">
		<g:message code="unitInfoOwnershipInfo.owLastModifiedDate.label" default="Ow Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owLastModifiedDate" precision="day"  value="${unitInfoOwnershipInfoInstance?.owLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owApprovedDate', 'error')} required">
	<label for="owApprovedDate">
		<g:message code="unitInfoOwnershipInfo.owApprovedDate.label" default="Ow Approved Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owApprovedDate" precision="day"  value="${unitInfoOwnershipInfoInstance?.owApprovedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owStatus', 'error')} required">
	<label for="owStatus">
		<g:message code="unitInfoOwnershipInfo.owStatus.label" default="Ow Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owStatus" required="" value="${unitInfoOwnershipInfoInstance?.owStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owRemark', 'error')} required">
	<label for="owRemark">
		<g:message code="unitInfoOwnershipInfo.owRemark.label" default="Ow Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owRemark" required="" value="${unitInfoOwnershipInfoInstance?.owRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'owUnId', 'error')} required">
	<label for="owUnId">
		<g:message code="unitInfoOwnershipInfo.owUnId.label" default="Ow Un Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owUnId" type="number" value="${unitInfoOwnershipInfoInstance.owUnId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoOwnershipInfoInstance, field: 'unitInfo', 'error')} required">
	<label for="unitInfo">
		<g:message code="unitInfoOwnershipInfo.unitInfo.label" default="Unit Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitInfo" name="unitInfo.id" from="${urbandevelopmentinformation.UnitInfo.list()}" optionKey="id" required="" value="${unitInfoOwnershipInfoInstance?.unitInfo?.id}" class="many-to-one"/>

</div>

