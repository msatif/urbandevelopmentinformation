package urbandevelopmentinformation

class BuildingInfo {
	
	Long buildingId;
	Long authorityId;
	Long plotId;
	String buildingCode;
	String buildingType;
	String buildingName;

    static mapping = {
		table 'building'
	    buildingId column:'bu_id'
		authorityId column:'au_id'
		plotId column:'pl_id'
		buildingCode column:'bu_code'
		buildingType column:'bu_type'
		buildingName column:'bu_name'
		
		
		
		
		
    }
}
