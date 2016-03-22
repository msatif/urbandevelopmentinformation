package urbandevelopmentinformation

class PaymentInfo {
     Long paymentId;
	 Long authorityId;
    static mapping = {
		table 'payment'
		paymentId column:'pa_id'
		authorityId	column:'au_id'
		
    }
}
