package urbandevelopmentinformation

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserRegistrationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
 
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UserRegistration.list(params), model:[userRegistrationInstanceCount: UserRegistration.count()]
    }
 
 def login = {}
 
  def authenticate = {
   def user = UserRegistration.findByUserRegistrationNameAndUserRegistrationPassword(params.userRegistrationName, params.userRegistrationPassword)
   System.out.println("userRegistrationName:" +params.userRegistrationName)
   if(user){
    session.user = user
    flash.message = "Hello ${user.userRegistrationfullName}!"
   // redirect(action:"login")
    render(view:'/index')
   
   }else{
   flash.message = "Your user name or password is wrong!"
   redirect(action:"login")
   //redirect(action:"create")
   }
  }
 
  def logout = {
   flash.message = "Please Login"
   redirect(action:"login")
  }

    def show(UserRegistration userRegistrationInstance) {
        respond userRegistrationInstance
    }

    def create() {
        respond new UserRegistration(params)
    }

    @Transactional
    def save(UserRegistration userRegistrationInstance) {
        if (userRegistrationInstance == null) {
            notFound()
            return
        }

        if (userRegistrationInstance.hasErrors()) {
            respond userRegistrationInstance.errors, view:'create'
            return
        }

        userRegistrationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'userRegistration.label', default: 'UserRegistration'), userRegistrationInstance.id])
                redirect userRegistrationInstance
            }
            '*' { respond userRegistrationInstance, [status: CREATED] }
        }
    }

    def edit(UserRegistration userRegistrationInstance) {
        respond userRegistrationInstance
    }

    @Transactional
    def update(UserRegistration userRegistrationInstance) {
        if (userRegistrationInstance == null) {
            notFound()
            return
        }

        if (userRegistrationInstance.hasErrors()) {
            respond userRegistrationInstance.errors, view:'edit'
            return
        }

        userRegistrationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UserRegistration.label', default: 'UserRegistration'), userRegistrationInstance.id])
                redirect userRegistrationInstance
            }
            '*'{ respond userRegistrationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UserRegistration userRegistrationInstance) {

        if (userRegistrationInstance == null) {
            notFound()
            return
        }

        userRegistrationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UserRegistration.label', default: 'UserRegistration'), userRegistrationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'userRegistration.label', default: 'UserRegistration'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

