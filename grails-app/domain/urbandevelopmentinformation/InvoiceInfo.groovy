package urbandevelopmentinformation

class InvoiceInfo {
	Long utilityName;
	Long authorityId;

    static mapping = {
		table 'invoice'
		utilityName column:'ut_name'
		authorityId	column:'au_id'
		
    }
}
