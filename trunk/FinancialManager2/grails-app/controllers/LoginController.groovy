class LoginController extends BaseController {

    def index = {redirect(action:doLogin)}

    def beforeInterceptor = [action:this.&auth, only:logout]

    def doLogin = {
        if (request.method == "GET") {
            if(session.usuario) {
                redirect(controller:"categoria", action:"list")
            } else {
                session.usuario = null
                def usuario = new Usuario()
            }
        } else {
            if (session.usuario) {
                redirect(controller:"categoria", action:"list")
            } else {
                def usuario = Usuario.findWhere(userName:params["userName"],
                    senha:params["senha"])

                session.usuario = usuario
                if (usuario) {
                    redirect(controller:"categoria", action:"list")
                } else {
                    flash['message'] = 'Usuário ou senha inválidos!'
                }
            }
        }
    }

        def logout = {
            if (session.usuario) {
                session.usuario = null
                flash['message'] = 'Saiu da conta com sucesso!'
            }
            redirect(controller:'login', action:'doLogin')
        }

}
