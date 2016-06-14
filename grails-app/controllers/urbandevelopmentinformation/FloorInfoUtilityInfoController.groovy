package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FloorInfoUtilityInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FloorInfoUtilityInfo.list(params), model:[floorInfoUtilityInfoInstanceCount: FloorInfoUtilityInfo.count()]
    }

    def show(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {
        respond floorInfoUtilityInfoInstance
    }

    def create() {
        respond new FloorInfoUtilityInfo(params)
    }

    @Transactional
    def save(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {
        if (floorInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoUtilityInfoInstance.hasErrors()) {
            respond floorInfoUtilityInfoInstance.errors, view:'create'
            return
        }

        floorInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'floorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo'), floorInfoUtilityInfoInstance.id])
                redirect floorInfoUtilityInfoInstance
            }
            '*' { respond floorInfoUtilityInfoInstance, [status: CREATED] }
        }
    }

    def edit(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {
        respond floorInfoUtilityInfoInstance
    }

    @Transactional
    def update(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {
        if (floorInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (floorInfoUtilityInfoInstance.hasErrors()) {
            respond floorInfoUtilityInfoInstance.errors, view:'edit'
            return
        }

        floorInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FloorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo'), floorInfoUtilityInfoInstance.id])
                redirect floorInfoUtilityInfoInstance
            }
            '*'{ respond floorInfoUtilityInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FloorInfoUtilityInfo floorInfoUtilityInfoInstance) {

        if (floorInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        floorInfoUtilityInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FloorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo'), floorInfoUtilityInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'floorInfoUtilityInfo.label', default: 'FloorInfoUtilityInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
