class DespesaCartaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [despesaCartaoInstanceList: DespesaCartao.list(params), despesaCartaoInstanceTotal: DespesaCartao.count()]
    }

    def create = {
        def despesaCartaoInstance = new DespesaCartao()
        despesaCartaoInstance.properties = params
        return [despesaCartaoInstance: despesaCartaoInstance]
    }

    def save = {
        def despesaCartaoInstance = new DespesaCartao(params)
        if ((!despesaCartaoInstance.parcelado && despesaCartaoInstance.numeroParcelas != 0) ||
             (despesaCartaoInstance.parcelado && despesaCartaoInstance.numeroParcelas <= 1)){
            flash.message = "Verifique o número de parcelas. Despesa não criada."
            redirect(action: "list")
        }
        else if (despesaCartaoInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'despesaCartao.label', default: 'DespesaCartao'), despesaCartaoInstance.id])}"
            redirect(action: "show", id: despesaCartaoInstance.id)
        }
        else {
            render(view: "create", model: [despesaCartaoInstance: despesaCartaoInstance])
        }
    }

    def show = {
        def despesaCartaoInstance = DespesaCartao.get(params.id)
        if ((!despesaCartaoInstance.parcelado && despesaCartaoInstance.numeroParcelas != 0) ||
             (despesaCartaoInstance.parcelado && despesaCartaoInstance.numeroParcelas <= 1)){
            flash.message = "Verifique o número de parcelas. Despesa não editada."
            if (!despesaCartaoInstance.parcelado)
                despesaCartaoInstance.parcelado = true
            else
                despesaCartaoInstance.parcelado = false
            redirect(action: "list")
        }
        else if (!despesaCartaoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'despesaCartao.label', default: 'DespesaCartao'), params.id])}"
            redirect(action: "list")
        }
        else {
            [despesaCartaoInstance: despesaCartaoInstance]
        }
    }

    def edit = {
        def despesaCartaoInstance = DespesaCartao.get(params.id)
        if ((!despesaCartaoInstance.parcelado && despesaCartaoInstance.numeroParcelas != 0) ||
             (despesaCartaoInstance.parcelado && despesaCartaoInstance.numeroParcelas <= 1)){
            flash.message = "Verifique o número de parcelas. Despesa não criada."
            redirect(action: "list")
        }
        else if (!despesaCartaoInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'despesaCartao.label', default: 'DespesaCartao'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [despesaCartaoInstance: despesaCartaoInstance]
        }
    }

    def update = {
        def despesaCartaoInstance = DespesaCartao.get(params.id)
        if ((!despesaCartaoInstance.parcelado && despesaCartaoInstance.numeroParcelas != 0) ||
             (despesaCartaoInstance.parcelado && despesaCartaoInstance.numeroParcelas <= 1)){
            flash.message = "Verifique o número de parcelas. Despesa não criada."
            redirect(action: "list")
        }
        else if (despesaCartaoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (despesaCartaoInstance.version > version) {
                    
                    despesaCartaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'despesaCartao.label', default: 'DespesaCartao')] as Object[], "Another user has updated this DespesaCartao while you were editing")
                    render(view: "edit", model: [despesaCartaoInstance: despesaCartaoInstance])
                    return
                }
            }
            despesaCartaoInstance.properties = params
            if (!despesaCartaoInstance.hasErrors() && despesaCartaoInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'despesaCartao.label', default: 'DespesaCartao'), despesaCartaoInstance.id])}"
                redirect(action: "show", id: despesaCartaoInstance.id)
            }
            else {
                render(view: "edit", model: [despesaCartaoInstance: despesaCartaoInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'despesaCartao.label', default: 'DespesaCartao'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def despesaCartaoInstance = DespesaCartao.get(params.id)
        if (despesaCartaoInstance) {
            try {
                despesaCartaoInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'despesaCartao.label', default: 'DespesaCartao'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'despesaCartao.label', default: 'DespesaCartao'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'despesaCartao.label', default: 'DespesaCartao'), params.id])}"
            redirect(action: "list")
        }
    }
}
