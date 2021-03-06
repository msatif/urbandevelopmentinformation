package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlotInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PlotInfo.list(params), model:[plotInfoInstanceCount: PlotInfo.count()]
    }

    def show(PlotInfo plotInfoInstance) {
        respond plotInfoInstance
    }

    def create() {
        respond new PlotInfo(params)
    }

    @Transactional
    def save(PlotInfo plotInfoInstance) {
        if (plotInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoInstance.hasErrors()) {
            respond plotInfoInstance.errors, view:'create'
            return
        }

        plotInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'plotInfo.label', default: 'PlotInfo'), plotInfoInstance.id])
                redirect plotInfoInstance
            }
            '*' { respond plotInfoInstance, [status: CREATED] }
        }
    }

    def edit(PlotInfo plotInfoInstance) {
        respond plotInfoInstance
    }

    @Transactional
    def update(PlotInfo plotInfoInstance) {
        if (plotInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoInstance.hasErrors()) {
            respond plotInfoInstance.errors, view:'edit'
            return
        }

        plotInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PlotInfo.label', default: 'PlotInfo'), plotInfoInstance.id])
                redirect plotInfoInstance
            }
            '*'{ respond plotInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PlotInfo plotInfoInstance) {

        if (plotInfoInstance == null) {
            notFound()
            return
        }

        plotInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PlotInfo.label', default: 'PlotInfo'), plotInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'plotInfo.label', default: 'PlotInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
