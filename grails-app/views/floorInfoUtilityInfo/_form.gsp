<%@ page import="urbandevelopmentinformation.FloorInfoUtilityInfo" %>



<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utId', 'error')} required">
	<label for="utId">
		<g:message code="floorInfoUtilityInfo.utId.label" default="Ut Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utId" type="number" value="${floorInfoUtilityInfoInstance.utId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utCreaterAddressId', 'error')} required">
	<label for="utCreaterAddressId">
		<g:message code="floorInfoUtilityInfo.utCreaterAddressId.label" default="Ut Creater Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utCreaterAddressId" type="number" value="${floorInfoUtilityInfoInstance.utCreaterAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utCreaterName', 'error')} required">
	<label for="utCreaterName">
		<g:message code="floorInfoUtilityInfo.utCreaterName.label" default="Ut Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterName" required="" value="${floorInfoUtilityInfoInstance?.utCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utCreaterAuthority', 'error')} required">
	<label for="utCreaterAuthority">
		<g:message code="floorInfoUtilityInfo.utCreaterAuthority.label" default="Ut Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterAuthority" required="" value="${floorInfoUtilityInfoInstance?.utCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utCreateDate', 'error')} required">
	<label for="utCreateDate">
		<g:message code="floorInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utCreateDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utLastModifiedDate', 'error')} required">
	<label for="utLastModifiedDate">
		<g:message code="floorInfoUtilityInfo.utLastModifiedDate.label" default="Ut Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utLastModifiedDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utSubmissionDate', 'error')} required">
	<label for="utSubmissionDate">
		<g:message code="floorInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utSubmissionDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utSubmissionDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utApprovalDate', 'error')} required">
	<label for="utApprovalDate">
		<g:message code="floorInfoUtilityInfo.utApprovalDate.label" default="Ut Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utApprovalDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utServiceDate', 'error')} required">
	<label for="utServiceDate">
		<g:message code="floorInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utServiceDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utDisServiceDate', 'error')} required">
	<label for="utDisServiceDate">
		<g:message code="floorInfoUtilityInfo.utDisServiceDate.label" default="Ut Dis Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utDisServiceDate" precision="day"  value="${floorInfoUtilityInfoInstance?.utDisServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utTypePic', 'error')} required">
	<label for="utTypePic">
		<g:message code="floorInfoUtilityInfo.utTypePic.label" default="Ut Type Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="utTypePic" name="utTypePic" />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utRemark', 'error')} required">
	<label for="utRemark">
		<g:message code="floorInfoUtilityInfo.utRemark.label" default="Ut Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utRemark" required="" value="${floorInfoUtilityInfoInstance?.utRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<g:message code="floorInfoUtilityInfo.floorInfo.label" default="Floor Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${floorInfoUtilityInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoUtilityInfoInstance, field: 'utType', 'error')} required">
	<label for="utType">
		<g:message code="floorInfoUtilityInfo.utType.label" default="Ut Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utType" required="" value="${floorInfoUtilityInfoInstance?.utType}"/>

</div>

