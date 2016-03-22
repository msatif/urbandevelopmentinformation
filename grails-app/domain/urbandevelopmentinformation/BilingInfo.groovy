package urbandevelopmentinformation

class BilingInfo {
     Long bilingId;
	 Long authorityId;
    static mapping  = {
		table 'billing'
		
		bilingId column:'bi_id'
		authorityId	column:'au_id'
    }
}
