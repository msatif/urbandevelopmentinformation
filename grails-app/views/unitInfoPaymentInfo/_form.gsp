<%@ page import="urbandevelopmentinformation.UnitInfoPaymentInfo" %>



<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paBiId', 'error')} required">
	<label for="paBiId">
		<g:message code="unitInfoPaymentInfo.paBiId.label" default="Pa Bi Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paBiId" type="number" value="${unitInfoPaymentInfoInstance.paBiId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paType', 'error')} required">
	<label for="paType">
		<g:message code="unitInfoPaymentInfo.paType.label" default="Pa Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paType" required="" value="${unitInfoPaymentInfoInstance?.paType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paDate', 'error')} required">
	<label for="paDate">
		<g:message code="unitInfoPaymentInfo.paDate.label" default="Pa Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paDate" precision="day"  value="${unitInfoPaymentInfoInstance?.paDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paRefNumber', 'error')} required">
	<label for="paRefNumber">
		<g:message code="unitInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRefNumber" required="" value="${unitInfoPaymentInfoInstance?.paRefNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paTotalAmount', 'error')} required">
	<label for="paTotalAmount">
		<g:message code="unitInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paTotalAmount" value="${fieldValue(bean: unitInfoPaymentInfoInstance, field: 'paTotalAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paPaidAmount', 'error')} required">
	<label for="paPaidAmount">
		<g:message code="unitInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPaidAmount" value="${fieldValue(bean: unitInfoPaymentInfoInstance, field: 'paPaidAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paCopy', 'error')} required">
	<label for="paCopy">
		<g:message code="unitInfoPaymentInfo.paCopy.label" default="Pa Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="paCopy" name="paCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'paRemark', 'error')} required">
	<label for="paRemark">
		<g:message code="unitInfoPaymentInfo.paRemark.label" default="Pa Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRemark" required="" value="${unitInfoPaymentInfoInstance?.paRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoPaymentInfoInstance, field: 'unitInfo', 'error')} required">
	<label for="unitInfo">
		<g:message code="unitInfoPaymentInfo.unitInfo.label" default="Unit Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitInfo" name="unitInfo.id" from="${urbandevelopmentinformation.UnitInfo.list()}" optionKey="id" required="" value="${unitInfoPaymentInfoInstance?.unitInfo?.id}" class="many-to-one"/>

</div>

