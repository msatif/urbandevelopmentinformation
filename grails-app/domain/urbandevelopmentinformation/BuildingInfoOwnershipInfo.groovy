package urbandevelopmentinformation

import org.apache.tools.ant.util.LayoutPreservingProperties.Blank;

class BuildingInfoOwnershipInfo {

	Long owId
	Long owAddressId
	String owFullName
	String owType
	Date owAppliedDate
	Date owLastModifiedDate
	Date owApprovedDate
	String owStatus
	String owRemark
	Long owBuId

	
	static belongsTo =[buildingInfo:BuildingInfo]

	
    static constraints = {
		
		 owId()
		 owAddressId()
		 owFullName()
		 owType()
		 owAppliedDate()
		 owLastModifiedDate()
		 owApprovedDate()
		 owStatus()
		 owRemark()
		 owBuId()
    }
	
	
	
	String toString() {
		"${owId} - ${owAddressId}"
	}
	static mapping = {
		table 'building_ownership'
	  version false
	 
 columns {
	 
	 owAddressId column:'ow_ad_id'
	 owId column:'ow_id'
	 owFullName column:'ow_fu_name',nullable:true, blank:true
	 owType column:'ow_type', nullable:true, blank:true
	 owAppliedDate column:'ow_ap_date', nullable:true, blank:true
	 owLastModifiedDate column:'ow_lm_date', nullable:true, blank:true
	 owApprovedDate column:'ow_app_date', nullable:true, blank:true
	 owStatus column:'ow_status' ,nullable:true, blank:true
	 owRemark column:'ow_remark' ,nullable:true, blank:true
	owBuId column:'ow_bu_id'
	
	  }
  }
}