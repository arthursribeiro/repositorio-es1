class UsuarioComumController extends BaseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def beforeInterceptor = [action:this.&authMaster]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [usuarioComumInstanceList: UsuarioComum.list(params), usuarioComumInstanceTotal: UsuarioComum.count()]
    }

    def create = {
        def usuarioComumInstance = new UsuarioComum()
        usuarioComumInstance.properties = params
        return [usuarioComumInstance: usuarioComumInstance]
    }

    def save = {
        def usuarioComumInstance = new UsuarioComum(params)
        if (usuarioComumInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), usuarioComumInstance.id])}"
            redirect(action: "show", id: usuarioComumInstance.id)
        }
        else {
            render(view: "create", model: [usuarioComumInstance: usuarioComumInstance])
        }
    }

    def show = {
        def usuarioComumInstance = UsuarioComum.get(params.id)
        if (!usuarioComumInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), params.id])}"
            redirect(action: "list")
        }
        else {
            [usuarioComumInstance: usuarioComumInstance]
        }
    }

    def edit = {
        def usuarioComumInstance = UsuarioComum.get(params.id)
        if (!usuarioComumInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [usuarioComumInstance: usuarioComumInstance]
        }
    }

    def update = {
        def usuarioComumInstance = UsuarioComum.get(params.id)
        if (usuarioComumInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (usuarioComumInstance.version > version) {
                    
                    usuarioComumInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'usuarioComum.label', default: 'UsuarioComum')] as Object[], "Another user has updated this UsuarioComum while you were editing")
                    render(view: "edit", model: [usuarioComumInstance: usuarioComumInstance])
                    return
                }
            }
            usuarioComumInstance.properties = params
            if (!usuarioComumInstance.hasErrors() && usuarioComumInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), usuarioComumInstance.id])}"
                redirect(action: "show", id: usuarioComumInstance.id)
            }
            else {
                render(view: "edit", model: [usuarioComumInstance: usuarioComumInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def usuarioComumInstance = UsuarioComum.get(params.id)
        if (usuarioComumInstance) {
            try {
                usuarioComumInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'usuarioComum.label', default: 'UsuarioComum'), params.id])}"
            redirect(action: "list")
        }
    }
}
