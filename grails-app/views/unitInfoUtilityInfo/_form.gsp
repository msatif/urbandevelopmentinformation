<%@ page import="urbandevelopmentinformation.UnitInfoUtilityInfo" %>



<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utId', 'error')} required">
	<label for="utId">
		<g:message code="unitInfoUtilityInfo.utId.label" default="Ut Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utId" type="number" value="${unitInfoUtilityInfoInstance.utId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utCreaterAddressId', 'error')} required">
	<label for="utCreaterAddressId">
		<g:message code="unitInfoUtilityInfo.utCreaterAddressId.label" default="Ut Creater Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utCreaterAddressId" type="number" value="${unitInfoUtilityInfoInstance.utCreaterAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utCreaterName', 'error')} required">
	<label for="utCreaterName">
		<g:message code="unitInfoUtilityInfo.utCreaterName.label" default="Ut Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterName" required="" value="${unitInfoUtilityInfoInstance?.utCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utCreaterAuthority', 'error')} required">
	<label for="utCreaterAuthority">
		<g:message code="unitInfoUtilityInfo.utCreaterAuthority.label" default="Ut Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterAuthority" required="" value="${unitInfoUtilityInfoInstance?.utCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utCreateDate', 'error')} required">
	<label for="utCreateDate">
		<g:message code="unitInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utCreateDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utLastModifiedDate', 'error')} required">
	<label for="utLastModifiedDate">
		<g:message code="unitInfoUtilityInfo.utLastModifiedDate.label" default="Ut Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utLastModifiedDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utSubmissionDate', 'error')} required">
	<label for="utSubmissionDate">
		<g:message code="unitInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utSubmissionDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utSubmissionDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utApprovalDate', 'error')} required">
	<label for="utApprovalDate">
		<g:message code="unitInfoUtilityInfo.utApprovalDate.label" default="Ut Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utApprovalDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utServiceDate', 'error')} required">
	<label for="utServiceDate">
		<g:message code="unitInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utServiceDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utDisServiceDate', 'error')} required">
	<label for="utDisServiceDate">
		<g:message code="unitInfoUtilityInfo.utDisServiceDate.label" default="Ut Dis Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utDisServiceDate" precision="day"  value="${unitInfoUtilityInfoInstance?.utDisServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utTypePic', 'error')} required">
	<label for="utTypePic">
		<g:message code="unitInfoUtilityInfo.utTypePic.label" default="Ut Type Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="utTypePic" name="utTypePic" />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utRemark', 'error')} required">
	<label for="utRemark">
		<g:message code="unitInfoUtilityInfo.utRemark.label" default="Ut Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utRemark" required="" value="${unitInfoUtilityInfoInstance?.utRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'unitInfo', 'error')} required">
	<label for="unitInfo">
		<g:message code="unitInfoUtilityInfo.unitInfo.label" default="Unit Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitInfo" name="unitInfo.id" from="${urbandevelopmentinformation.UnitInfo.list()}" optionKey="id" required="" value="${unitInfoUtilityInfoInstance?.unitInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoUtilityInfoInstance, field: 'utType', 'error')} required">
	<label for="utType">
		<g:message code="unitInfoUtilityInfo.utType.label" default="Ut Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utType" required="" value="${unitInfoUtilityInfoInstance?.utType}"/>

</div>

