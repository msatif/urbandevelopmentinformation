<%@ page import="urbandevelopmentinformation.PlotInfoUtilityInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utId', 'error')} required">
	<label for="utId">
		<g:message code="plotInfoUtilityInfo.utId.label" default="Ut Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utId" type="number" value="${plotInfoUtilityInfoInstance.utId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utCreaterAddressId', 'error')} required">
	<label for="utCreaterAddressId">
		<g:message code="addressId.label" default="Ut Creater Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utCreaterAddressId" type="number" value="${plotInfoUtilityInfoInstance.utCreaterAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utCreaterName', 'error')} required">
	<label for="utCreaterName">
		<g:message code="plotInfoUtilityInfo.utCreaterName.label" default="Ut Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterName" required="" value="${plotInfoUtilityInfoInstance?.utCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utCreaterAuthority', 'error')} required">
	<label for="utCreaterAuthority">
		<g:message code="plotInfoUtilityInfo.utCreaterAuthority.label" default="Ut Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utCreaterAuthority" required="" value="${plotInfoUtilityInfoInstance?.utCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utCreateDate', 'error')} required">
	<label for="utCreateDate">
		<g:message code="plotInfoUtilityInfo.utCreateDate.label" default="Ut Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utCreateDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utLastModifiedDate', 'error')} required">
	<label for="utLastModifiedDate">
		<g:message code="LastModifiedDate.label" default="Ut Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utLastModifiedDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utSubmissionDate', 'error')} required">
	<label for="utSubmissionDate">
		<g:message code="plotInfoUtilityInfo.utSubmissionDate.label" default="Ut Submission Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utSubmissionDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utSubmissionDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utApprovalDate', 'error')} required">
	<label for="utApprovalDate">
		<g:message code="approvalDate.label" default="Ut Approval Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utApprovalDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utApprovalDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utServiceDate', 'error')} required">
	<label for="utServiceDate">
		<g:message code="plotInfoUtilityInfo.utServiceDate.label" default="Ut Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utServiceDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utDisServiceDate', 'error')} required">
	<label for="utDisServiceDate">
		<g:message code="plotInfoUtilityInfo.utDisServiceDate.label" default="Ut Dis Service Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="utDisServiceDate" precision="day"  value="${plotInfoUtilityInfoInstance?.utDisServiceDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utTypePic', 'error')} required">
	<label for="utTypePic">
		<g:message code="plotInfoUtilityInfo.utTypePic.label" default="Ut Type Pic" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="utTypePic" name="utTypePic" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utRemark', 'error')} required">
	<label for="utRemark">
		<g:message code="Remark.label" default="Ut Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utRemark" required="" value="${plotInfoUtilityInfoInstance?.utRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utPlId', 'error')} required">
	<label for="utPlId">
		<g:message code="plId.label" default="Ut Pl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="utPlId" type="number" value="${plotInfoUtilityInfoInstance.utPlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<g:message code="plotInfo.label" default="Plot Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoUtilityInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoUtilityInfoInstance, field: 'utType', 'error')} required">
	<label for="utType">
		<g:message code="plotInfoUtilityInfo.utType.label" default="Ut Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="utType" required="" value="${plotInfoUtilityInfoInstance?.utType}"/>

</div>

