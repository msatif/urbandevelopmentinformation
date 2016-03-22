package urbandevelopmentinformation

class PlotInfo {
	Long plotId;
	Long plotAddressId;
	String plotCode;
	String plotName;
	String plotType;
	String plotNumber;
	String plotMonzaNumber;
	String plotDagNumber;
	String plotMSNumber;
	String plotCSNumber;
	String plotUtilities;
	byte[] plotLayoutPicture;
	byte[] plotUtilityLocationMap;
	
    static constraints = {
		plotAddressId()
		plotId()
		plotType()
		plotCode()
		plotName()
		plotMonzaNumber()
		plotDagNumber()
		plotMSNumber()
		plotCSNumber()
		plotNumber()
		plotUtilities()
		plotLayoutPicture()
		plotUtilityLocationMap()
	
    }
	
	static mapping = {
		table 'plot'
		plotId column:'pl_id'
		addressId column:'pl_ad_ad_id'
		plotCode column:'pl_code'
		plotName column:'pl_name'
		plotType column:'pl_type'
		plotNumber column:'pl_number'
		plotMonzaNumber column:'pl_mo_num'
		plotDagNumber column:'pl_dag_num'
		plotMSNumber column:'pl_ms_num'
		plotCSNumber column:'pl_cs_num'
		plotLayoutPicture column:'pl_la_pic'
		plotUtilityLocationMap column:'pl_ut_lo_map'
		
		
	  }
}
