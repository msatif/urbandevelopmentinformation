package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BuildingInfoAuthorizationInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BuildingInfoAuthorizationInfo.list(params), model:[buildingInfoAuthorizationInfoInstanceCount: BuildingInfoAuthorizationInfo.count()]
    }

    def show(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
        respond buildingInfoAuthorizationInfoInstance
    }

    def create() {
        respond new BuildingInfoAuthorizationInfo(params)
    }

    @Transactional
    def save(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
        if (buildingInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoAuthorizationInfoInstance.hasErrors()) {
            respond buildingInfoAuthorizationInfoInstance.errors, view:'create'
            return
        }

        buildingInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'buildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo'), buildingInfoAuthorizationInfoInstance.id])
                redirect buildingInfoAuthorizationInfoInstance
            }
            '*' { respond buildingInfoAuthorizationInfoInstance, [status: CREATED] }
        }
    }

    def edit(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
        respond buildingInfoAuthorizationInfoInstance
    }

    @Transactional
    def update(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {
        if (buildingInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (buildingInfoAuthorizationInfoInstance.hasErrors()) {
            respond buildingInfoAuthorizationInfoInstance.errors, view:'edit'
            return
        }

        buildingInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BuildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo'), buildingInfoAuthorizationInfoInstance.id])
                redirect buildingInfoAuthorizationInfoInstance
            }
            '*'{ respond buildingInfoAuthorizationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BuildingInfoAuthorizationInfo buildingInfoAuthorizationInfoInstance) {

        if (buildingInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        buildingInfoAuthorizationInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BuildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo'), buildingInfoAuthorizationInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'buildingInfoAuthorizationInfo.label', default: 'BuildingInfoAuthorizationInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
