package urbandevelopmentinformation

class FloorInfo {
	Long flooorId;
	Long buildingId;
	String floorCode;
	String floorType;
	String floorName;
    static mapping = {
		table 'floor'
		flooorId column:'fl_id'
		buildingId column:'bu_id'
		floorCode column:'fl_code'
		floorType column:'fl_type'
		floorNamecolumn:'fl_name'
		
    }
}
