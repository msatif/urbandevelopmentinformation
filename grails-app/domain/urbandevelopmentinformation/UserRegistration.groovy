package urbandevelopmentinformation

import java.util.Date;

class UserRegistration {
 Long userRegistrationId
 String userRegistrationFName
 String userRegistrationMName
 String userRegistrationLName
 String userRegistrationName
 String userRegistrationPassword
 String userRegistrationfullName
 Date   userRegistrationCrDate
 Date userRegistrationLDate
 
 String toString() {
  "${userRegistrationfullName}"
 }
 
 static hasMany =[roles:UserRole]

 static constraints = {
  userRegistrationId()
  userRegistrationFName()
  userRegistrationMName()
  userRegistrationLName()
  userRegistrationfullName()
  userRegistrationCrDate()
  userRegistrationLDate()
  userRegistrationName(unique: true)
  userRegistrationPassword(password: true)
  
    
 }
    
}
