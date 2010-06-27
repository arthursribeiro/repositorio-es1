class UsuarioController {
	
    def doLogin = {
    	def usuario = Usuario.findWhere(userName:params["userName"],
    	            senha:params["senha"])
    	session.usuario = usuario
    	if (usuario) {
            redirect(controller:"categoria", action:"listAll")
    	}
    	
    }

}
