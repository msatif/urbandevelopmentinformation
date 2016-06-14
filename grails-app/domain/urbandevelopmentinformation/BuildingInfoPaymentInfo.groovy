package urbandevelopmentinformation

class BuildingInfoPaymentInfo {

	Long paBiId
	String paType
	Date  paDate
	String paRefNumber
	byte [] paCopy
	Double paTotalAmount
	Double paPaidAmount
	String paRemark
	
	static belongsTo =[buildingInfo:BuildingInfo]
	
    static constraints = {
		paBiId()
	    paType()
		paDate()
		paRefNumber()
		paTotalAmount()
		paPaidAmount()
		paCopy()
		paRemark()
    }
	
	String toString() {
		"${utId}"
	}
	
	
	static mapping = {
	  table 'building_payment'
	  version false
 
	  columns {

	    paBiId column:'pa_bi_id'
	    paType column:'pa_type'
		paDate column:'pa_date'
		paRefNumber column:'pa_ref_num'
		paTotalAmount column:'pa_to_amount'
		paPaidAmount column:'pa_pa_amount'
		paCopy column:'pa_copy'
		paRemark column:'pa_remark'
		   
	  }
  }
}
