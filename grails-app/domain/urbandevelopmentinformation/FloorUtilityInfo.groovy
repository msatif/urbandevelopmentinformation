package urbandevelopmentinformation

class FloorUtilityInfo {
	
	Long utilityId;
	Long authorityId;
	String utilityCode;
	String utilityUserType;
	String utilityName;
    static mapping = {
		table 'floorutility'
		utilityId column:'ut_id'
		authorityId	column:'au_id'
		utilityCode column:'ut_code'
		utilityUserType column:'ut_us_type'
		utilityName column:'ut_name'
		
    }
}
