package urbandevelopmentinformation



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PlotInfoPaymentInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PlotInfoPaymentInfo.list(params), model:[plotInfoPaymentInfoInstanceCount: PlotInfoPaymentInfo.count()]
    }

    def show(PlotInfoPaymentInfo plotInfoPaymentInfoInstance) {
        respond plotInfoPaymentInfoInstance
    }

    def create() {
        respond new PlotInfoPaymentInfo(params)
    }

    @Transactional
    def save(PlotInfoPaymentInfo plotInfoPaymentInfoInstance) {
        if (plotInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoPaymentInfoInstance.hasErrors()) {
            respond plotInfoPaymentInfoInstance.errors, view:'create'
            return
        }

        plotInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'plotInfoPaymentInfo.label', default: 'PlotInfoPaymentInfo'), plotInfoPaymentInfoInstance.id])
                redirect plotInfoPaymentInfoInstance
            }
            '*' { respond plotInfoPaymentInfoInstance, [status: CREATED] }
        }
    }

    def edit(PlotInfoPaymentInfo plotInfoPaymentInfoInstance) {
        respond plotInfoPaymentInfoInstance
    }

    @Transactional
    def update(PlotInfoPaymentInfo plotInfoPaymentInfoInstance) {
        if (plotInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        if (plotInfoPaymentInfoInstance.hasErrors()) {
            respond plotInfoPaymentInfoInstance.errors, view:'edit'
            return
        }

        plotInfoPaymentInfoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PlotInfoPaymentInfo.label', default: 'PlotInfoPaymentInfo'), plotInfoPaymentInfoInstance.id])
                redirect plotInfoPaymentInfoInstance
            }
            '*'{ respond plotInfoPaymentInfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PlotInfoPaymentInfo plotInfoPaymentInfoInstance) {

        if (plotInfoPaymentInfoInstance == null) {
            notFound()
            return
        }

        plotInfoPaymentInfoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PlotInfoPaymentInfo.label', default: 'PlotInfoPaymentInfo'), plotInfoPaymentInfoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'plotInfoPaymentInfo.label', default: 'PlotInfoPaymentInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
