package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlotInfoAuthorizationInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PlotInfoAuthorizationInfo.list(params), model:[plotInfoAuthorizationInfoInstanceCount: PlotInfoAuthorizationInfo.count()]
    }

    def show(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
        respond plotInfoAuthorizationInfoInstance
    }

    def create() {
        respond new PlotInfoAuthorizationInfo(params)
    }

    @Transactional
    def save(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
        if (plotInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoAuthorizationInfoInstance.hasErrors()) {
            respond plotInfoAuthorizationInfoInstance.errors, view:'create'
            return
        }

        plotInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'plotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo'), plotInfoAuthorizationInfoInstance.id])
                redirect plotInfoAuthorizationInfoInstance
            }
            '*' { respond plotInfoAuthorizationInfoInstance, [status: CREATED] }
        }
    }

    def edit(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
        respond plotInfoAuthorizationInfoInstance
    }

    @Transactional
    def update(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {
        if (plotInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoAuthorizationInfoInstance.hasErrors()) {
            respond plotInfoAuthorizationInfoInstance.errors, view:'edit'
            return
        }

        plotInfoAuthorizationInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PlotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo'), plotInfoAuthorizationInfoInstance.id])
                redirect plotInfoAuthorizationInfoInstance
            }
            '*'{ respond plotInfoAuthorizationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PlotInfoAuthorizationInfo plotInfoAuthorizationInfoInstance) {

        if (plotInfoAuthorizationInfoInstance == null) {
            notFound()
            return
        }

        plotInfoAuthorizationInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PlotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo'), plotInfoAuthorizationInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'plotInfoAuthorizationInfo.label', default: 'PlotInfoAuthorizationInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
