package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoAuthorizationInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FloorInfoAuthorizationInfo.list(params), model:[floorInfoAuthorizationInfoInstanceCount: FloorInfoAuthorizationInfo.count()]
    }

    def show(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
        respond floorInfoAuthorizationInfoInstance
    }

    def create() {
        respond new FloorInfoAuthorizationInfo(params)
    }

    @Transactional
    def save(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
        if (floorInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoAuthorizationInfoInstance.hasErrors()) {
            respond floorInfoAuthorizationInfoInstance.errors, view:'create'
            return
        }

        floorInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo'), floorInfoAuthorizationInfoInstance.id])
                redirect floorInfoAuthorizationInfoInstance
            }
            '*' { respond floorInfoAuthorizationInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
        respond floorInfoAuthorizationInfoInstance
    }

    @Transactional
    def update(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {
        if (floorInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoAuthorizationInfoInstance.hasErrors()) {
            respond floorInfoAuthorizationInfoInstance.errors, view:'edit'
            return
        }

        floorInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo'), floorInfoAuthorizationInfoInstance.id])
                redirect floorInfoAuthorizationInfoInstance
            }
            '*'{ respond floorInfoAuthorizationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfoAuthorizationInfo floorInfoAuthorizationInfoInstance) {

        if (floorInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        floorInfoAuthorizationInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo'), floorInfoAuthorizationInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfoAuthorizationInfo.label', default: 'FloorInfoAuthorizationInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
