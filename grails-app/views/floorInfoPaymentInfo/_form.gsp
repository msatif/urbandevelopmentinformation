<%@ page import="urbandevelopmentinformation.FloorInfoPaymentInfo" %>



<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paBiId', 'error')} required">
	<label for="paBiId">
		<g:message code="floorInfoPaymentInfo.paBiId.label" default="Pa Bi Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paBiId" type="number" value="${floorInfoPaymentInfoInstance.paBiId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paType', 'error')} required">
	<label for="paType">
		<g:message code="floorInfoPaymentInfo.paType.label" default="Pa Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paType" required="" value="${floorInfoPaymentInfoInstance?.paType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paDate', 'error')} required">
	<label for="paDate">
		<g:message code="floorInfoPaymentInfo.paDate.label" default="Pa Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paDate" precision="day"  value="${floorInfoPaymentInfoInstance?.paDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paRefNumber', 'error')} required">
	<label for="paRefNumber">
		<g:message code="floorInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRefNumber" required="" value="${floorInfoPaymentInfoInstance?.paRefNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paTotalAmount', 'error')} required">
	<label for="paTotalAmount">
		<g:message code="floorInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paTotalAmount" value="${fieldValue(bean: floorInfoPaymentInfoInstance, field: 'paTotalAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paPaidAmount', 'error')} required">
	<label for="paPaidAmount">
		<g:message code="floorInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPaidAmount" value="${fieldValue(bean: floorInfoPaymentInfoInstance, field: 'paPaidAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paCopy', 'error')} required">
	<label for="paCopy">
		<g:message code="floorInfoPaymentInfo.paCopy.label" default="Pa Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="paCopy" name="paCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'paRemark', 'error')} required">
	<label for="paRemark">
		<g:message code="floorInfoPaymentInfo.paRemark.label" default="Pa Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRemark" required="" value="${floorInfoPaymentInfoInstance?.paRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: floorInfoPaymentInfoInstance, field: 'floorInfo', 'error')} required">
	<label for="floorInfo">
		<g:message code="floorInfoPaymentInfo.floorInfo.label" default="Floor Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorInfo" name="floorInfo.id" from="${urbandevelopmentinformation.FloorInfo.list()}" optionKey="id" required="" value="${floorInfoPaymentInfoInstance?.floorInfo?.id}" class="many-to-one"/>

</div>

