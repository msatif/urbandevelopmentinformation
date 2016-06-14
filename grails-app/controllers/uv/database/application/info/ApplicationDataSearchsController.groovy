package uv.database.application.info
import com.sun.org.apache.xalan.internal.xsltc.compiler.Import;


import urbandevelopmentinformation.PlotInfo
import urbandevelopmentinformation.BuildingInfo
import urbandevelopmentinformation.FloorInfo





import urbandevelopmentinformation.UserRole






import urbandevelopmentinformation.UserRegistration
import urbandevelopmentinformation.AddressInfo
import urbandevelopmentinformation.AddressLocationInfo


class ApplicationDataSearchsController {

  def plotList() {
    
    def plots = PlotInfo.createCriteria().list (params) {
		
		
     
     if (params.plotName!=null) {
      ilike("plotName", "%${params.plotName}%")
     }
     
     if (params.plotNumber!=null) {
      ilike("plotNumber", "%${params.plotNumber}%")
     }
    }

    [plots:plots,counter:plots.size()]
   }
  
  def buildingList() {
	  def buildings =BuildingInfo.list()
def counter = BuildingInfo.count()
	  [buildings:buildings, counter:counter]
  }
  
  
  
  def floorList() {
	  def floors =FloorInfo.list()
def counter =FloorInfo.count()
	  [floors:floors, counter:counter]
  }
  
  def floorUnitList() {
	  def floorUnits =FloorUnitInfo.list()
def counter =FloorUnitInfo.count()
	  [floorUnits:floorUnits, counter:counter]
  }
  
  
  def authorizationList() {
	  def authorizations =AuthorizationInfo.list()
def counter =AuthorizationInfo.count()
	  [authorizations:authorizations, counter:counter]
  }
  
  
  def floorUtilityList() {
	  def floorUtilitys =FloorUtilityInfo.list()
def counter =FloorUtilityInfo.count()
	  [floorUtilitys:floorUtilitys, counter:counter]
  }
  
  
  def billingList(){
	  
	  def bills = BillingInfo.list()
	  def counter =BillingInfo.count()
	  [bills:bills,counter:bills.size()]
	 }
  
  
  def invoiceList() {
	  def invoices=InvoiceInfo.list()
def counter=InvoiceInfo.count()
	  [invoices:invoices, counter:counter]
  }
  
  
  def paymentList() {
	  def payments=PaymentInfo.list()
def counter=PaymentInfo.count()
	  [payments:payments, counter:counter]
  }
  def userRoleList() {
	  def userRoles=UserRole.list()
def counter=UserRole.count()
	  [userRoles:userRoles, counter:counter]
  }
  
  
  def addressList() {
		  
		  def address = AddressInfo.createCriteria().list (params) {
			  
		   if (params.adFirstName!=null) {
			ilike("adFirstName", "%${params.adFirstName}%")
		   }
		   
		   if (params.adMiddleName!=null) {
			   ilike("adMiddleName", "%${params.adMiddleName}%")
			  }
		   
		   if (params.adLastName!=null) {
			   ilike("adLastName", "%${params.adLastName}%")
			  }
		   if (params.adNationalIdNumber!=null) {
			   ilike("adNationalIdNumber", "%${params.adNationalIdNumber}%")
			  }
		   if (params.adEMail!=null) {
			   ilike("adEMail", "%${params.adEMail}%")
			  }
		 
		  }
	  
		  [address:address,counter:address.size()]
		 }
		
  
  
  
  def ownerList() {
	  def  owners= OwnerInfo.list()
def counter=OwnerInfo.count()
	  [ owners: owners, counter:counter]
  }
  
  def contractList(){
	  def contracts=ContractInfo.list()
	  def counter=ContractInfo.count()
	  
	  [contracts=contracts, counter=counter]
	  
  }
  
  
  def utilityList(){
	  def utilitys= UtilityInfo.list()
	  def counter=UtilityInfo.count()
	  
	  [ utilitys= utilitys, counter=counter]
	  
  }
  
  
  
  def addressLocationPublicList() {
    
   // params.max = Math.min(params.max ? params.int('max') : 10, 100)
    
  def addressLocationInfos =AddressLocationInfo.createCriteria().list (params) {
   
   if (params.alDivisionName!=null) {
    ilike("alDivisionName", "%${params.alDivisionName}%")
   }
   
   if (params.alDistictName!=null) {
    ilike("alDistictName", "%${params.alDistictName}%")
   }
   
   if (params.alUpzillaOrThanaName!=null) {
    ilike("alUpzillaOrThanaName", "%${params.alUpzillaOrThanaName}%")
   }
   
   if (params.alUnionName!=null) {
    ilike("alUnionName", "%${params.alUnionName}%")
   }
   
   if (params.alRoadName!=null) {
    ilike("alRoadName", "%${params.alRoadName}%")
   }
   if (params.alType!=null) {
    ilike("alType", "%${params.alType}%")
   }
   
  }
  
  [addressLocationInfos:addressLocationInfos,counter:addressLocationInfos.size()]
 }
  
  
  def ownershipList(){
	  def ownerships=OwnershipInfo.list()
	  def counter=OwnershipInfo.count()
	  
	  [ ownerships= ownerships, counter=counter]
	  
  }
  
  def userRegistration(){
	  
	  def userRegistrations =UserRegistration.createCriteria().list (params) {
		  
		
		  
		  if (params.userRegistrationfullName!=null) {
		   ilike("userRegistrationfullName", "%${params.userRegistrationfullName}%")
		  }
	  }
	  [userRegistrations:userRegistrations,counter:userRegistrations.size()]
	 
  }
}