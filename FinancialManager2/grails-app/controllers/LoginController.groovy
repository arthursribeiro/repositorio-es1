class LoginController {

    def doLogin = {
        if (session.usuario) {
            redirect(controller:"categoria", action:"listAll")
        } else {
            def usuario = Usuario.findWhere(userName:params["userName"],
                senha:params["senha"])
            session.usuario = usuario
            if (usuario) {
                redirect(controller:"categoria", action:"listAll")
            }
        }
    }

}
