<%@ page import="urbandevelopmentinformation.FloorInfoOwnershipInfo" %>



<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owId', 'error')} required">
	<label for="owId">
		<g:message code="floorInfoOwnershipInfo.owId.label" default="Ow Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owId" type="number" value="${floorInfoOwnershipInfoInstance.owId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owAddressId', 'error')} required">
	<label for="owAddressId">
		<g:message code="floorInfoOwnershipInfo.owAddressId.label" default="Ow Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owAddressId" type="number" value="${floorInfoOwnershipInfoInstance.owAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owFullName', 'error')} required">
	<label for="owFullName">
		<g:message code="floorInfoOwnershipInfo.owFullName.label" default="Ow Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owFullName" required="" value="${floorInfoOwnershipInfoInstance?.owFullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owType', 'error')} required">
	<label for="owType">
		<g:message code="floorInfoOwnershipInfo.owType.label" default="Ow Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owType" required="" value="${floorInfoOwnershipInfoInstance?.owType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owAppliedDate', 'error')} required">
	<label for="owAppliedDate">
		<g:message code="floorInfoOwnershipInfo.owAppliedDate.label" default="Ow Applied Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owAppliedDate" precision="day"  value="${floorInfoOwnershipInfoInstance?.owAppliedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owLastModifiedDate', 'error')} required">
	<label for="owLastModifiedDate">
		<g:message code="floorInfoOwnershipInfo.owLastModifiedDate.label" default="Ow Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owLastModifiedDate" precision="day"  value="${floorInfoOwnershipInfoInstance?.owLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owApprovedDate', 'error')} required">
	<label for="owApprovedDate">
		<g:message code="floorInfoOwnershipInfo.owApprovedDate.label" default="Ow Approved Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="owApprovedDate" precision="day"  value="${floorInfoOwnershipInfoInstance?.owApprovedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owStatus', 'error')} required">
	<label for="owStatus">
		<g:message code="floorInfoOwnershipInfo.owStatus.label" default="Ow Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owStatus" required="" value="${floorInfoOwnershipInfoInstance?.owStatus}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owRemark', 'error')} required">
	<label for="owRemark">
		<g:message code="floorInfoOwnershipInfo.owRemark.label" default="Ow Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="owRemark" required="" value="${floorInfoOwnershipInfoInstance?.owRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'owFlId', 'error')} required">
	<label for="owFlId">
		<g:message code="floorInfoOwnershipInfo.owFlId.label" default="Ow Fl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="owFlId" type="number" value="${floorInfoOwnershipInfoInstance.owFlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoOwnershipInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<g:message code="floorInfoOwnershipInfo.floorInfo.label" default="Floor Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${floorInfoOwnershipInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>

