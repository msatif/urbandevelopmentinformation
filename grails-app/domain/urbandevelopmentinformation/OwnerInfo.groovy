package urbandevelopmentinformation

class OwnerInfo {
	Long ownerId;
	Long addressId;
	String firstName;
	String middleName;
	String lastName;
	Date birthDate
	byte [] birthCertificateImage;
	String passportNumber;
	Date passportIssueDate;
	Date passportExpairDate;
	Long nationalIdentificationNumber;
	String unionCode;
	String unionName;
	String villageCode;
	String villageName;
	String zipCode;
	String zipName;
	String taxIdentificationNumber;
	String professionType;
	String professionInstitute;
	String professionPosition;
	String professionalRemark;
	String status;
	String educationLevel; //drop down menu
	String educationInstitute;
	String educationResult;
	Date educationPassingYear
	String fatherFirstName;
	String fatherMiddleName;
	String fatherLastName;
	Date fatherBirthDate;
	Long fatherNationalIdentificationNumber;
	String motherFirstName;
	String motherMiddleName;
	String motherLastName;
	Long motherNationalIdentificationNumber;
	Date motherBirthDate;
	
	
	static mapping = {
		table 'owner'
		ownerId column:'ow_id'
		addressId column:'ow_ad_ad_id'
		firstName column:'ow_fi_name'
		middleName column:'ow_mi_name'
		lastName column:'ow_la_name'
		birthDate column:'ow_bi_date'
		birthCertificateImage column:'ow_bi_cer'
		passportNumber	column:'ow_pa_num'
		passportIssueDate column:'ow_pa_is_date'
		passportExpairDate column:'ow_pa_ex_date'
		nationalIdentificationNumber column:'ow_na_id_num'
		unionCode	column:'ad_un_code'
		unionName column:'ad_un_name'
		villageCode column:'ad_vi_code'
		villageName column:'ad_vi_name'
		zipCode column:'ad_zi_code'
		zipName column:'ad_zi_name'
		taxIdentificationNumber column:'ow_ta_id_num'
		professionType	column:'ow_pr_type'
		professionInstitute column:'ow_pr_ins'
		professionPosition column:'ow_pr_pos'
		professionalRemark column:'ow_pr_rem'
		status column:'ow_status'
		educationLevel column:'ow_education'
		educationInstitute column:'ow_institute'
		educationResult column:'ow_ed_result'
		fatherFirstName	column:'ow_fa_fi_name'
		fatherMiddleName column:'ow_fa_mi_name'
		fatherLastName column:'ow_fa_la_name'
		fatherBirthDate column:'ow_fa_bi_date'
		fatherNationalIdentificationNumber column:'ow_fa_na_id'
		motherFirstName column:'ow_mo_fi_name'
		motherMiddleName column:'ow_mo_mi_name'
		motherLastName column:'ow_mo_la_name'
		motherNationalIdentificationNumber column:'ow_mo_na_id'
		motherBirthDate column:'ow_mo_bi_date'

	}
}
