package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoPaymentInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FloorInfoPaymentInfo.list(params), model:[floorInfoPaymentInfoInstanceCount: FloorInfoPaymentInfo.count()]
    }

    def show(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {
        respond floorInfoPaymentInfoInstance
    }

    def create() {
        respond new FloorInfoPaymentInfo(params)
    }

    @Transactional
    def save(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {
        if (floorInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoPaymentInfoInstance.hasErrors()) {
            respond floorInfoPaymentInfoInstance.errors, view:'create'
            return
        }

        floorInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo'), floorInfoPaymentInfoInstance.id])
                redirect floorInfoPaymentInfoInstance
            }
            '*' { respond floorInfoPaymentInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {
        respond floorInfoPaymentInfoInstance
    }

    @Transactional
    def update(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {
        if (floorInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoPaymentInfoInstance.hasErrors()) {
            respond floorInfoPaymentInfoInstance.errors, view:'edit'
            return
        }

        floorInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo'), floorInfoPaymentInfoInstance.id])
                redirect floorInfoPaymentInfoInstance
            }
            '*'{ respond floorInfoPaymentInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfoPaymentInfo floorInfoPaymentInfoInstance) {

        if (floorInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        floorInfoPaymentInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo'), floorInfoPaymentInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfoPaymentInfo.label', default: 'FloorInfoPaymentInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
