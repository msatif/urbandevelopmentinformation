package urbandevelopmentinformation

class BuildingInfoUtilityInfo {

	Long utId
	Long utCreaterAddressId
	String utType
	String utCreaterName
	String utCreaterAuthority
	Date utCreateDate
	Date utLastModifiedDate
	Date utSubmissionDate
	Date utApprovalDate
	Date utServiceDate
	Date utDisServiceDate
	byte [] utTypePic
	String utRemark
	
	static belongsTo =[buildingInfo:BuildingInfo]
	
   static constraints = {
        utId()
        utCreaterAddressId()
		utCreaterName()
		utCreaterAuthority()
		utCreateDate()
		utLastModifiedDate()
		utSubmissionDate()
		utApprovalDate()
		utServiceDate()
		utDisServiceDate()
		utTypePic()
		utRemark()
		
    }
    
    String toString() {
        "${utId}"
    }
	
	
	static mapping = {
      table 'building_utility'
      version false
 
      columns {
		  utId column:'ut_id'
		  utCreaterAddressId column:'ut_cra_id'
		  utType column:'ut_type'
		  utCreaterName column:'ut_cr_name'
		  utCreaterAuthority column:'ut_cr_auth'
		  utCreateDate column:'ut_cr_date'
		  utLastModifiedDate column:'ut_lmd_date'
		  utSubmissionDate column:'ut_sd_date'
		  utApprovalDate column:'ut_appr_date'
		  utServiceDate column:'ut_serv_date'
		  utDisServiceDate column:'ut_dserv_date'
		  utTypePic column:'ut_type_pic'
		  utRemark column:'ut_remark'
     	  
      }
  }
	
}
