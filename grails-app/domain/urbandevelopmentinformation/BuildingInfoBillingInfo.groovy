package urbandevelopmentinformation

class BuildingInfoBillingInfo {
	Long biId
	Long biCreaterAddressId
	String biCreaterName
	String biCreaterAuthority
	Date biCreateDate
	Date biPayDateUntil
	Date biLastModifiedDate
	Date biPrintDate
	String biCurrency
	String biCostType
	byte [] biPrintCopy
	Double biAmount
	String biReferenceNumber
	String biRemark
	
	static belongsTo =[buildingInfo:BuildingInfo]
	
    static constraints = {
		 biId()
		 biCreaterAddressId()
		 biCreaterName()
		 biCreaterAuthority()
		 biCreateDate()
		 biPayDateUntil()
		 biLastModifiedDate()
		 biPrintDate()
		 biCurrency()
		biCostType()
		biPrintCopy()
		biAmount()
		biReferenceNumber()
		biRemark()
    }
	
	
	String toString() {
		"${biId}-${biCreaterAddressId}"
	}
	
	
	static mapping = {
	  table 'building_billing'
	  version false
 
	  columns {
		  
		biId column:'bi_id'
		biCreaterAddressId column:'bi_cra_id'
		biCreaterName column:'bi_cr_name'
		biCreaterAuthority column:'bi_cr_auth'
		biCreateDate column:'bi_cr_date'
		biPayDateUntil column:'bi_pd_until'
		biLastModifiedDate column:'bi_lm_date'
		biPrintDate column:'bi_pr_date'
		biCurrency column:'bi_currency'
		biCostType column:'bi_cost_type'
		biPrintCopy column:'bi_print_copy'
		biAmount column:'bi_amount'
		biReferenceNumber column:'bi_ref_num'
		biRemark column:'bi_remark'
		   
	  }
  }
	
}
