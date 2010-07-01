abstract class BaseController {
    def auth() {
        def originalRequestParams =
                [controller:controllerName,
                action:actionName]
        originalRequestParams.putAll(params)
        session.originalRequestParams =
                originalRequestParams
        if(!session.usuario) {
            redirect(controller:'login',action:'doLogin')
            return false
        }
        return true
    }

    def authMaster() {
        
        def redirectParams = session.originalRequestParams
        if(this.auth()) {
            if(session.usuario.class == UsuarioMaster) {
                return true
            }
            flash['message'] = 'VocÊ não possui acesso ao recurso solicitado.'
            redirect(redirectParams)
        }
        return false
    }
}
