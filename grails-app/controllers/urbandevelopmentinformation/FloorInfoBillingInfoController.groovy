package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoBillingInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FloorInfoBillingInfo.list(params), model:[floorInfoBillingInfoInstanceCount: FloorInfoBillingInfo.count()]
    }

    def show(FloorInfoBillingInfo floorInfoBillingInfoInstance) {
        respond floorInfoBillingInfoInstance
    }

    def create() {
        respond new FloorInfoBillingInfo(params)
    }

    @Transactional
    def save(FloorInfoBillingInfo floorInfoBillingInfoInstance) {
        if (floorInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoBillingInfoInstance.hasErrors()) {
            respond floorInfoBillingInfoInstance.errors, view:'create'
            return
        }

        floorInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfoBillingInfo.label', default: 'FloorInfoBillingInfo'), floorInfoBillingInfoInstance.id])
                redirect floorInfoBillingInfoInstance
            }
            '*' { respond floorInfoBillingInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfoBillingInfo floorInfoBillingInfoInstance) {
        respond floorInfoBillingInfoInstance
    }

    @Transactional
    def update(FloorInfoBillingInfo floorInfoBillingInfoInstance) {
        if (floorInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoBillingInfoInstance.hasErrors()) {
            respond floorInfoBillingInfoInstance.errors, view:'edit'
            return
        }

        floorInfoBillingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfoBillingInfo.label', default: 'FloorInfoBillingInfo'), floorInfoBillingInfoInstance.id])
                redirect floorInfoBillingInfoInstance
            }
            '*'{ respond floorInfoBillingInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfoBillingInfo floorInfoBillingInfoInstance) {

        if (floorInfoBillingInfoInstance == null) {
            notFound()
            return
        }

        floorInfoBillingInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfoBillingInfo.label', default: 'FloorInfoBillingInfo'), floorInfoBillingInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfoBillingInfo.label', default: 'FloorInfoBillingInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
