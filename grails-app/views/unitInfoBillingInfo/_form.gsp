<%@ page import="urbandevelopmentinformation.UnitInfoBillingInfo" %>



<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biId', 'error')} required">
	<label for="biId">
		<g:message code="unitInfoBillingInfo.biId.label" default="Bi Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biId" type="number" value="${unitInfoBillingInfoInstance.biId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biCreaterAddressId', 'error')} required">
	<label for="biCreaterAddressId">
		<g:message code="unitInfoBillingInfo.biCreaterAddressId.label" default="Bi Creater Address Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biCreaterAddressId" type="number" value="${unitInfoBillingInfoInstance.biCreaterAddressId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biCreaterName', 'error')} required">
	<label for="biCreaterName">
		<g:message code="unitInfoBillingInfo.biCreaterName.label" default="Bi Creater Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterName" required="" value="${unitInfoBillingInfoInstance?.biCreaterName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biCreaterAuthority', 'error')} required">
	<label for="biCreaterAuthority">
		<g:message code="unitInfoBillingInfo.biCreaterAuthority.label" default="Bi Creater Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCreaterAuthority" required="" value="${unitInfoBillingInfoInstance?.biCreaterAuthority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biCreateDate', 'error')} required">
	<label for="biCreateDate">
		<g:message code="unitInfoBillingInfo.biCreateDate.label" default="Bi Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biCreateDate" precision="day"  value="${unitInfoBillingInfoInstance?.biCreateDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biPayDateUntil', 'error')} required">
	<label for="biPayDateUntil">
		<g:message code="unitInfoBillingInfo.biPayDateUntil.label" default="Bi Pay Date Until" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPayDateUntil" precision="day"  value="${unitInfoBillingInfoInstance?.biPayDateUntil}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biLastModifiedDate', 'error')} required">
	<label for="biLastModifiedDate">
		<g:message code="unitInfoBillingInfo.biLastModifiedDate.label" default="Bi Last Modified Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biLastModifiedDate" precision="day"  value="${unitInfoBillingInfoInstance?.biLastModifiedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biPrintDate', 'error')} required">
	<label for="biPrintDate">
		<g:message code="unitInfoBillingInfo.biPrintDate.label" default="Bi Print Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="biPrintDate" precision="day"  value="${unitInfoBillingInfoInstance?.biPrintDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biCurrency', 'error')} required">
	<label for="biCurrency">
		<g:message code="unitInfoBillingInfo.biCurrency.label" default="Bi Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCurrency" required="" value="${unitInfoBillingInfoInstance?.biCurrency}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biCostType', 'error')} required">
	<label for="biCostType">
		<g:message code="unitInfoBillingInfo.biCostType.label" default="Bi Cost Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biCostType" required="" value="${unitInfoBillingInfoInstance?.biCostType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biPrintCopy', 'error')} required">
	<label for="biPrintCopy">
		<g:message code="unitInfoBillingInfo.biPrintCopy.label" default="Bi Print Copy" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="biPrintCopy" name="biPrintCopy" />

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biAmount', 'error')} required">
	<label for="biAmount">
		<g:message code="unitInfoBillingInfo.biAmount.label" default="Bi Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="biAmount" value="${fieldValue(bean: unitInfoBillingInfoInstance, field: 'biAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biReferenceNumber', 'error')} required">
	<label for="biReferenceNumber">
		<g:message code="unitInfoBillingInfo.biReferenceNumber.label" default="Bi Reference Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biReferenceNumber" required="" value="${unitInfoBillingInfoInstance?.biReferenceNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'biRemark', 'error')} required">
	<label for="biRemark">
		<g:message code="unitInfoBillingInfo.biRemark.label" default="Bi Remark" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="biRemark" required="" value="${unitInfoBillingInfoInstance?.biRemark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: unitInfoBillingInfoInstance, field: 'unitInfo', 'error')} required">
	<label for="unitInfo">
		<g:message code="unitInfoBillingInfo.unitInfo.label" default="Unit Info" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitInfo" name="unitInfo.id" from="${urbandevelopmentinformation.UnitInfo.list()}" optionKey="id" required="" value="${unitInfoBillingInfoInstance?.unitInfo?.id}" class="many-to-one"/>

</div>

