package urbandevelopmentinformation

class FloorUnitInfo {
    
	Long flooorUnitId;
	Long floorId;
	String floorUnitCode;
	String floorUnitUserType;
	String floorUnitName;
    static mapping = {
		table 'floorunit'
		flooorUnitId column:'fl_un_id'
		floorId column:'fl_id'
		floorUnitCode column:'fl_un_code'
		floorUnitUserType column:'fl_un_us_type' //drop down button
		floorUnitName column:'fl_un_name'
		
		
    }
}
