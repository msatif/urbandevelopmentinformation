package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoBillingInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitInfoBillingInfo.list(params), model:[unitInfoBillingInfoInstanceCount: UnitInfoBillingInfo.count()]
    }

    def show(UnitInfoBillingInfo unitInfoBillingInfoInstance) {
        respond unitInfoBillingInfoInstance
    }

    def create() {
        respond new UnitInfoBillingInfo(params)
    }

    @Transactional
    def save(UnitInfoBillingInfo unitInfoBillingInfoInstance) {
        if (unitInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoBillingInfoInstance.hasErrors()) {
            respond unitInfoBillingInfoInstance.errors, view:'create'
            return
        }

        unitInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfoBillingInfo.label', default: 'UnitInfoBillingInfo'), unitInfoBillingInfoInstance.id])
                redirect unitInfoBillingInfoInstance
            }
            '*' { respond unitInfoBillingInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfoBillingInfo unitInfoBillingInfoInstance) {
        respond unitInfoBillingInfoInstance
    }

    @Transactional
    def update(UnitInfoBillingInfo unitInfoBillingInfoInstance) {
        if (unitInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoBillingInfoInstance.hasErrors()) {
            respond unitInfoBillingInfoInstance.errors, view:'edit'
            return
        }

        unitInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfoBillingInfo.label', default: 'UnitInfoBillingInfo'), unitInfoBillingInfoInstance.id])
                redirect unitInfoBillingInfoInstance
            }
            '*'{ respond unitInfoBillingInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfoBillingInfo unitInfoBillingInfoInstance) {

        if (unitInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        unitInfoBillingInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfoBillingInfo.label', default: 'UnitInfoBillingInfo'), unitInfoBillingInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfoBillingInfo.label', default: 'UnitInfoBillingInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
