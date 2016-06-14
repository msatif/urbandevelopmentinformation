package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoAuthorizationInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitInfoAuthorizationInfo.list(params), model:[unitInfoAuthorizationInfoInstanceCount: UnitInfoAuthorizationInfo.count()]
    }

    def show(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
        respond unitInfoAuthorizationInfoInstance
    }

    def create() {
        respond new UnitInfoAuthorizationInfo(params)
    }

    @Transactional
    def save(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
        if (unitInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoAuthorizationInfoInstance.hasErrors()) {
            respond unitInfoAuthorizationInfoInstance.errors, view:'create'
            return
        }

        unitInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo'), unitInfoAuthorizationInfoInstance.id])
                redirect unitInfoAuthorizationInfoInstance
            }
            '*' { respond unitInfoAuthorizationInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
        respond unitInfoAuthorizationInfoInstance
    }

    @Transactional
    def update(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {
        if (unitInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoAuthorizationInfoInstance.hasErrors()) {
            respond unitInfoAuthorizationInfoInstance.errors, view:'edit'
            return
        }

        unitInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo'), unitInfoAuthorizationInfoInstance.id])
                redirect unitInfoAuthorizationInfoInstance
            }
            '*'{ respond unitInfoAuthorizationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfoAuthorizationInfo unitInfoAuthorizationInfoInstance) {

        if (unitInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        unitInfoAuthorizationInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo'), unitInfoAuthorizationInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfoAuthorizationInfo.label', default: 'UnitInfoAuthorizationInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
