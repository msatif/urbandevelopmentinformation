package urbandevelopmentinformation

class AddressInfo {
	
	

   Long addressId;
	String divisionCode;
	String divisionName;
	String districtCode;
	String districtName;
	String upzillaCode;
	String upzillaName;
	String thanaCode;
	String thanaName;
	String wardCode;
	String wardName;
	String unionCode;
	String unionName;
	String villageCode;
	String villageName;
	String postalCodezipCode;
	String postalNamezipName;
	String streetCode;
	String streetName;
	String streetNumber;
	String sectionCode;
	
	String sectionName;
	String blockCode
	String blockName;
	String houseCode;
	String houseName;
	
	
	
	static mapping = {
		table 'address'
		addressId column:'ad_id'
		divisionCode column:'ad_div_code'
		divisionName column:'ad_div_name'
		districtCode column:'ad_dis_code'
		districtName cloumn:'ad_dis_name'
		upzillaCode column:'ad_up_code'
		upzillaName column:'ad_up_name'
		thanaCode column:'ad_th_code'
		thanaName column:'ad_th_name'
		wardCode column:'ad_wa_code'
		wardName column:'ad_wa_name'
		unionCode column:'ad_un_code'
		unionName column:'ad_un_name'
		villageCode column:'ad_vi_code'
		villageName column:'ad_vi_name'
		postalCodezipCode column:'ad_zi_code'
		postalNamezipName column:'ad_zi_name'
		streetCode column:'ad_st_code'
		streetName column:'ad_st_name'
		streetNumber column:'ad_st_num'
		sectionCode column:'ad_se_code'
		sectionName column:'ad_se_name'
		blockCode column:'ad_bl_code'
		blockName column:'ad_bl_name'
		houseCode column:'ad_ho_code'
		houseName column:'ad_ho_name'
		
		
		
		
	  }
}
