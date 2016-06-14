package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoPaymentInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitInfoPaymentInfo.list(params), model:[unitInfoPaymentInfoInstanceCount: UnitInfoPaymentInfo.count()]
    }

    def show(UnitInfoPaymentInfo unitInfoPaymentInfoInstance) {
        respond unitInfoPaymentInfoInstance
    }

    def create() {
        respond new UnitInfoPaymentInfo(params)
    }

    @Transactional
    def save(UnitInfoPaymentInfo unitInfoPaymentInfoInstance) {
        if (unitInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoPaymentInfoInstance.hasErrors()) {
            respond unitInfoPaymentInfoInstance.errors, view:'create'
            return
        }

        unitInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfoPaymentInfo.label', default: 'UnitInfoPaymentInfo'), unitInfoPaymentInfoInstance.id])
                redirect unitInfoPaymentInfoInstance
            }
            '*' { respond unitInfoPaymentInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfoPaymentInfo unitInfoPaymentInfoInstance) {
        respond unitInfoPaymentInfoInstance
    }

    @Transactional
    def update(UnitInfoPaymentInfo unitInfoPaymentInfoInstance) {
        if (unitInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoPaymentInfoInstance.hasErrors()) {
            respond unitInfoPaymentInfoInstance.errors, view:'edit'
            return
        }

        unitInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfoPaymentInfo.label', default: 'UnitInfoPaymentInfo'), unitInfoPaymentInfoInstance.id])
                redirect unitInfoPaymentInfoInstance
            }
            '*'{ respond unitInfoPaymentInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfoPaymentInfo unitInfoPaymentInfoInstance) {

        if (unitInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        unitInfoPaymentInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfoPaymentInfo.label', default: 'UnitInfoPaymentInfo'), unitInfoPaymentInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfoPaymentInfo.label', default: 'UnitInfoPaymentInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
