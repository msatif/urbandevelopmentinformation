<%@ page import="urbandevelopmentinformation.PlotInfoBillingInfo" %>



<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biId', 'error')} required">
	<label for="biId">
		<g:message code="plotInfoBillingInfo.biId.label" default="Bi Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biId" type="number" value="${plotInfoBillingInfoInstance.biId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCreaterAddressId', 'error')} required">
	<label for="biCreaterAddressId">
		<g:message code="plotInfoBillingInfo.biCreaterAddressId.label" default="Bi Creater Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biCreaterAddressId" type="number" value="${plotInfoBillingInfoInstance.biCreaterAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCreaterName', 'error')} required">
	<label for="biCreaterName">
		<g:message code="plotInfoBillingInfo.biCreaterName.label" default="Bi Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterName" required="" value="${plotInfoBillingInfoInstance?.biCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCreaterAuthority', 'error')} required">
	<label for="biCreaterAuthority">
		<g:message code="plotInfoBillingInfo.biCreaterAuthority.label" default="Bi Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterAuthority" required="" value="${plotInfoBillingInfoInstance?.biCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCreateDate', 'error')} required">
	<label for="biCreateDate">
		<g:message code="plotInfoBillingInfo.biCreateDate.label" default="Bi Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biCreateDate" precision="day"  value="${plotInfoBillingInfoInstance?.biCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biPayDateUntil', 'error')} required">
	<label for="biPayDateUntil">
		<g:message code="plotInfoBillingInfo.biPayDateUntil.label" default="Bi Pay Date Until" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPayDateUntil" precision="day"  value="${plotInfoBillingInfoInstance?.biPayDateUntil}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biLastModifiedDate', 'error')} required">
	<label for="biLastModifiedDate">
		<g:message code="plotInfoBillingInfo.biLastModifiedDate.label" default="Bi Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biLastModifiedDate" precision="day"  value="${plotInfoBillingInfoInstance?.biLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biPrintDate', 'error')} required">
	<label for="biPrintDate">
		<g:message code="plotInfoBillingInfo.biPrintDate.label" default="Bi Print Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPrintDate" precision="day"  value="${plotInfoBillingInfoInstance?.biPrintDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCurrency', 'error')} required">
	<label for="biCurrency">
		<g:message code="plotInfoBillingInfo.biCurrency.label" default="Bi Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCurrency" required="" value="${plotInfoBillingInfoInstance?.biCurrency}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biCostType', 'error')} required">
	<label for="biCostType">
		<g:message code="plotInfoBillingInfo.biCostType.label" default="Bi Cost Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCostType" required="" value="${plotInfoBillingInfoInstance?.biCostType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biPrintCopy', 'error')} required">
	<label for="biPrintCopy">
		<g:message code="plotInfoBillingInfo.biPrintCopy.label" default="Bi Print Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="biPrintCopy" name="biPrintCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biAmount', 'error')} required">
	<label for="biAmount">
		<g:message code="plotInfoBillingInfo.biAmount.label" default="Bi Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biAmount" value="${fieldValue(bean: plotInfoBillingInfoInstance, field: 'biAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biReferenceNumber', 'error')} required">
	<label for="biReferenceNumber">
		<g:message code="plotInfoBillingInfo.biReferenceNumber.label" default="Bi Reference Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biReferenceNumber" required="" value="${plotInfoBillingInfoInstance?.biReferenceNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biRemark', 'error')} required">
	<label for="biRemark">
		<g:message code="plotInfoBillingInfo.biRemark.label" default="Bi Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biRemark" required="" value="${plotInfoBillingInfoInstance?.biRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'biPlId', 'error')} required">
	<label for="biPlId">
		<g:message code="plotInfoBillingInfo.biPlId.label" default="Bi Pl Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biPlId" type="number" value="${plotInfoBillingInfoInstance.biPlId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: plotInfoBillingInfoInstance, field: 'plotInfo', 'error')} required">
	<label for="plotInfo">
		<g:message code="plotInfoBillingInfo.plotInfo.label" default="Plot Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="plotInfo" name="plotInfo.id" from="${urbandevelopmentinformation.PlotInfo.list()}" optionKey="id" required="" value="${plotInfoBillingInfoInstance?.plotInfo?.id}" class="many-to-one"/>

</div>

