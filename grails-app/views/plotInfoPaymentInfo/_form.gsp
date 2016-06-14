<%@ page import="urbandevelopmentinformation.PlotInfoPaymentInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paPlId', 'error')} required">
	<label for="paPlId">
		<g:message code="plotInfoPaymentInfo.paPlId.label" default="Pa Pl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPlId" type="number" value="${plotInfoPaymentInfoInstance.paPlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paId', 'error')} required">
	<label for="paId">
		<g:message code="plotInfoPaymentInfo.paId.label" default="Pa Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paId" type="number" value="${plotInfoPaymentInfoInstance.paId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paBiId', 'error')} required">
	<label for="paBiId">
		<g:message code="plotInfoPaymentInfo.paBiId.label" default="Pa Bi Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paBiId" type="number" value="${plotInfoPaymentInfoInstance.paBiId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paCreaterAddressId', 'error')} required">
	<label for="paCreaterAddressId">
		<g:message code="plotInfoPaymentInfo.paCreaterAddressId.label" default="Pa Creater Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paCreaterAddressId" type="number" value="${plotInfoPaymentInfoInstance.paCreaterAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paCreaterName', 'error')} required">
	<label for="paCreaterName">
		<g:message code="plotInfoPaymentInfo.paCreaterName.label" default="Pa Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paCreaterName" required="" value="${plotInfoPaymentInfoInstance?.paCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'pyCreaterAuthority', 'error')} required">
	<label for="pyCreaterAuthority">
		<g:message code="plotInfoPaymentInfo.pyCreaterAuthority.label" default="Py Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pyCreaterAuthority" required="" value="${plotInfoPaymentInfoInstance?.pyCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paType', 'error')} required">
	<label for="paType">
		<g:message code="plotInfoPaymentInfo.paType.label" default="Pa Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paType" required="" value="${plotInfoPaymentInfoInstance?.paType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paDate', 'error')} required">
	<label for="paDate">
		<g:message code="plotInfoPaymentInfo.paDate.label" default="Pa Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paDate" precision="day"  value="${plotInfoPaymentInfoInstance?.paDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paRefNumber', 'error')} required">
	<label for="paRefNumber">
		<g:message code="plotInfoPaymentInfo.paRefNumber.label" default="Pa Ref Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRefNumber" required="" value="${plotInfoPaymentInfoInstance?.paRefNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paTotalAmount', 'error')} required">
	<label for="paTotalAmount">
		<g:message code="plotInfoPaymentInfo.paTotalAmount.label" default="Pa Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paTotalAmount" value="${fieldValue(bean: plotInfoPaymentInfoInstance, field: 'paTotalAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paPaidAmount', 'error')} required">
	<label for="paPaidAmount">
		<g:message code="plotInfoPaymentInfo.paPaidAmount.label" default="Pa Paid Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paPaidAmount" value="${fieldValue(bean: plotInfoPaymentInfoInstance, field: 'paPaidAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paCopy', 'error')} required">
	<label for="paCopy">
		<g:message code="plotInfoPaymentInfo.paCopy.label" default="Pa Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="paCopy" name="paCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'paRemark', 'error')} required">
	<label for="paRemark">
		<g:message code="plotInfoPaymentInfo.paRemark.label" default="Pa Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paRemark" required="" value="${plotInfoPaymentInfoInstance?.paRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoPaymentInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<g:message code="plotInfoPaymentInfo.plotInfo.label" default="Plot Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoPaymentInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

