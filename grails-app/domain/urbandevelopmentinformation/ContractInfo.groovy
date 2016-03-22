package urbandevelopmentinformation

class ContractInfo {
      Long ownerId;
	  Long addressId;
	  String firstName;
	  String middleName;
	  String lastName;
	  Date birthDate;
	  byte [] birthCertificate;
	  Date joiningDate;
	  byte [] joiningCertification;
	  byte [] contactPersionPicture;
	  String workingPosition;
	  String previousWorking;
	  
	  String passportNumber;
	  Date passportIssueDate;
	  Date passportExpairDate;
	  Long nationalIdentificationNumber;
	  Long taxIdentificationNumber;
	  String professionType;
	  String professionInstitute;
	  String professionPosition;
	  String professionalRemark;
	  String status;
	  String educationLevel;
	  String educationInstitute;
	  String educationResult;
	  Date educationPassingYear;
	  String fatherFirstName;
	  String fatherMiddleName;
	  String fatherLastName;
	  Long fatherNationalIdentificationNumber;
	  String motherFirstName;
	  String motherMiddleName;
	  String motherLastName;
	  String motherNationalIdentificationNumber;
	  Date motherBirthDate;
	 
    static mapping = {
		table 'contract'
		ownerId column:'ow_id'
		addressId column:'cw_ad_ad_id'
		firstName column:'co_fi_name'
		middleName column:'co_mi_name'
		lastName column:'co_la_name'
		birthDate column:'ow_bi_date'
		birthCertificate column:'co_bi_cer'
		joiningDate column:'co_jo_date'
		joiningCertification column:'co_jo_cer'
		contactPersionPicture column:'co_co_pe_pic'
		workingPosition column:'co_wo_pos'
		previousWorking column:'co_pr_wor'
		passportNumber	column:'co_pa_num'
		passportIssueDate column:'co_pa_is_date'
		passportExpairDate column:'ow_pa_ex_date'
		nationalIdentificationNumber column:'co_na_id_num'
		taxIdentificationNumber column:'ow_ta_id_num'
		professionType	column:'ow_pr_type'
		professionInstitute column:'co_pr_ins'
		professionPosition column:'co_pr_pos'
		professionalRemark column:'co_pr_rem'
		status column:'co_status'
		educationLevel column:'co_education'
		educationInstitute column:'co_institute'
		educationResult column:'co_ed_result'
		educationPassingYear column:'co_ed_pa_ye'
		fatherFirstName column:'co_fa_fi_name'
		fatherMiddleName column:'ow_fa_mi_name'
		fatherLastName column:'ow_fa_la_name'
		fatherNationalIdentificationNumber column:'co_fa_na_id'
		motherFirstName column:'co_mo_fi_name'
		motherMiddleName column:'co_mo_mi_name'
		motherLastName column:'co_mo_la_name'
		motherNationalIdentificationNumber column:'co_mo_na_id'
		motherBirthDate column:'co_mo_bi_date'
		
    }
}
