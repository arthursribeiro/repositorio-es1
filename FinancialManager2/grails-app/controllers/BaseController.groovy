abstract class BaseController {
    def auth() {
        if(!session.usuario) {
            redirect(controller:'login',action:'doLogin')
            return false
        }
    }
}
