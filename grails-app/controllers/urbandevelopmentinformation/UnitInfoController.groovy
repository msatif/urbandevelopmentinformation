package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitInfo.list(params), model:[unitInfoInstanceCount: UnitInfo.count()]
    }

    def show(UnitInfo unitInfoInstance) {
        respond unitInfoInstance
    }

    def create() {
        respond new UnitInfo(params)
    }

    @Transactional
    def save(UnitInfo unitInfoInstance) {
        if (unitInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoInstance.hasErrors()) {
            respond unitInfoInstance.errors, view:'create'
            return
        }

        unitInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfo.label', default: 'UnitInfo'), unitInfoInstance.id])
                redirect unitInfoInstance
            }
            '*' { respond unitInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfo unitInfoInstance) {
        respond unitInfoInstance
    }

    @Transactional
    def update(UnitInfo unitInfoInstance) {
        if (unitInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoInstance.hasErrors()) {
            respond unitInfoInstance.errors, view:'edit'
            return
        }

        unitInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfo.label', default: 'UnitInfo'), unitInfoInstance.id])
                redirect unitInfoInstance
            }
            '*'{ respond unitInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfo unitInfoInstance) {

        if (unitInfoInstance == null) {
            notFound()
            return
        }

        unitInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfo.label', default: 'UnitInfo'), unitInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfo.label', default: 'UnitInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
