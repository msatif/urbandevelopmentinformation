package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoOwnershipInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitInfoOwnershipInfo.list(params), model:[unitInfoOwnershipInfoInstanceCount: UnitInfoOwnershipInfo.count()]
    }

    def show(UnitInfoOwnershipInfo unitInfoOwnershipInfoInstance) {
        respond unitInfoOwnershipInfoInstance
    }

    def create() {
        respond new UnitInfoOwnershipInfo(params)
    }

    @Transactional
    def save(UnitInfoOwnershipInfo unitInfoOwnershipInfoInstance) {
        if (unitInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoOwnershipInfoInstance.hasErrors()) {
            respond unitInfoOwnershipInfoInstance.errors, view:'create'
            return
        }

        unitInfoOwnershipInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfoOwnershipInfo.label', default: 'UnitInfoOwnershipInfo'), unitInfoOwnershipInfoInstance.id])
                redirect unitInfoOwnershipInfoInstance
            }
            '*' { respond unitInfoOwnershipInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfoOwnershipInfo unitInfoOwnershipInfoInstance) {
        respond unitInfoOwnershipInfoInstance
    }

    @Transactional
    def update(UnitInfoOwnershipInfo unitInfoOwnershipInfoInstance) {
        if (unitInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoOwnershipInfoInstance.hasErrors()) {
            respond unitInfoOwnershipInfoInstance.errors, view:'edit'
            return
        }

        unitInfoOwnershipInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfoOwnershipInfo.label', default: 'UnitInfoOwnershipInfo'), unitInfoOwnershipInfoInstance.id])
                redirect unitInfoOwnershipInfoInstance
            }
            '*'{ respond unitInfoOwnershipInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfoOwnershipInfo unitInfoOwnershipInfoInstance) {

        if (unitInfoOwnershipInfoInstance == null) {
            notFound()
            return
        }

        unitInfoOwnershipInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfoOwnershipInfo.label', default: 'UnitInfoOwnershipInfo'), unitInfoOwnershipInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfoOwnershipInfo.label', default: 'UnitInfoOwnershipInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
