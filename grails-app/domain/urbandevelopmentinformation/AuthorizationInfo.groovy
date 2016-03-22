package urbandevelopmentinformation

class AuthorizationInfo {
	
	Long authorityId;
	Long addId;
	String authorityCode;
	String authorityName;
	String authorityType;
	String authorizationNumber;
	String authorizationServiceCode;
	String authorizationServiceName;
	static mapping = {
		table 'authoritytable'
		authorityId	column:'au_id'
		addId column:'ad_id'
		authorityCode column:'au_code'
		authorityName column:'au_name'
		authorityType column:'au_type'
		authorizationNumber column:'au_auth_nu'
		authorizationServiceCode column:'au_se_code'
		authorizationServiceName column:'au_se_name'
		
		
    }
}
