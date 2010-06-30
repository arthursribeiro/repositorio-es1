class DespesaController extends BaseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def beforeInterceptor = [action:this.&auth]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [despesaInstanceList: Despesa.list(params), despesaInstanceTotal: Despesa.count()]
    }

    def create = {
        def despesaInstance = new Despesa()
        despesaInstance.properties = params
        return [despesaInstance: despesaInstance]
    }

    def save = {
        def despesaInstance = new Despesa(params)
        if (despesaInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'despesa.label', default: 'Despesa'), despesaInstance.id])}"
            redirect(action: "show", id: despesaInstance.id)
        }
        else {
            render(view: "create", model: [despesaInstance: despesaInstance])
        }
    }

    def show = {
        def despesaInstance = Despesa.get(params.id)
        if (!despesaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'despesa.label', default: 'Despesa'), params.id])}"
            redirect(action: "list")
        }
        else {
            [despesaInstance: despesaInstance]
        }
    }

    def edit = {
        def despesaInstance = Despesa.get(params.id)
        if (!despesaInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'despesa.label', default: 'Despesa'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [despesaInstance: despesaInstance]
        }
    }

    def update = {
        def despesaInstance = Despesa.get(params.id)
        if (despesaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (despesaInstance.version > version) {
                    
                    despesaInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'despesa.label', default: 'Despesa')] as Object[], "Another user has updated this Despesa while you were editing")
                    render(view: "edit", model: [despesaInstance: despesaInstance])
                    return
                }
            }
            despesaInstance.properties = params
            if (!despesaInstance.hasErrors() && despesaInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'despesa.label', default: 'Despesa'), despesaInstance.id])}"
                redirect(action: "show", id: despesaInstance.id)
            }
            else {
                render(view: "edit", model: [despesaInstance: despesaInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'despesa.label', default: 'Despesa'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def despesaInstance = Despesa.get(params.id)
        if (despesaInstance) {
            try {
                despesaInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'despesa.label', default: 'Despesa'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'despesa.label', default: 'Despesa'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'despesa.label', default: 'Despesa'), params.id])}"
            redirect(action: "list")
        }
    }
}
