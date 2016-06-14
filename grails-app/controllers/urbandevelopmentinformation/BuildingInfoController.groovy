package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BuildingInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BuildingInfo.list(params), model:[buildingInfoInstanceCount: BuildingInfo.count()]
    }

    def show(BuildingInfo buildingInfoInstance) {
        respond buildingInfoInstance
    }

    def create() {
        respond new BuildingInfo(params)
    }

    @Transactional
    def save(BuildingInfo buildingInfoInstance) {
        if (buildingInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoInstance.hasErrors()) {
            respond buildingInfoInstance.errors, view:'create'
            return
        }

        buildingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buildingInfo.label', default: 'BuildingInfo'), buildingInfoInstance.id])
                redirect buildingInfoInstance
            }
            '*' { respond buildingInfoInstance, [status: CREATED] }
        }
    }

    def edit(BuildingInfo buildingInfoInstance) {
        respond buildingInfoInstance
    }

    @Transactional
    def update(BuildingInfo buildingInfoInstance) {
        if (buildingInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoInstance.hasErrors()) {
            respond buildingInfoInstance.errors, view:'edit'
            return
        }

        buildingInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BuildingInfo.label', default: 'BuildingInfo'), buildingInfoInstance.id])
                redirect buildingInfoInstance
            }
            '*'{ respond buildingInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BuildingInfo buildingInfoInstance) {

        if (buildingInfoInstance == null) {
            notFound()
            return
        }

        buildingInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BuildingInfo.label', default: 'BuildingInfo'), buildingInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buildingInfo.label', default: 'BuildingInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
