package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitInfoUtilityInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitInfoUtilityInfo.list(params), model:[unitInfoUtilityInfoInstanceCount: UnitInfoUtilityInfo.count()]
    }

    def show(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {
        respond unitInfoUtilityInfoInstance
    }

    def create() {
        respond new UnitInfoUtilityInfo(params)
    }

    @Transactional
    def save(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {
        if (unitInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoUtilityInfoInstance.hasErrors()) {
            respond unitInfoUtilityInfoInstance.errors, view:'create'
            return
        }

        unitInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo'), unitInfoUtilityInfoInstance.id])
                redirect unitInfoUtilityInfoInstance
            }
            '*' { respond unitInfoUtilityInfoInstance, [status: CREATED] }
        }
    }

    def edit(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {
        respond unitInfoUtilityInfoInstance
    }

    @Transactional
    def update(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {
        if (unitInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        if (unitInfoUtilityInfoInstance.hasErrors()) {
            respond unitInfoUtilityInfoInstance.errors, view:'edit'
            return
        }

        unitInfoUtilityInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo'), unitInfoUtilityInfoInstance.id])
                redirect unitInfoUtilityInfoInstance
            }
            '*'{ respond unitInfoUtilityInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitInfoUtilityInfo unitInfoUtilityInfoInstance) {

        if (unitInfoUtilityInfoInstance == null) {
            notFound()
            return
        }

        unitInfoUtilityInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo'), unitInfoUtilityInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitInfoUtilityInfo.label', default: 'UnitInfoUtilityInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
