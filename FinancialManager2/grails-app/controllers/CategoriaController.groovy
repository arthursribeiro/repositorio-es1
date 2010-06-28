import org.hsqldb.Session;


class CategoriaController {

    ArrayList<Categoria> categorias
    ArrayList<CartaoDeCredito> cartoes

    def beforeInterceptor = [action:this.&checkLogin,except:
    	['index','list','show']]

    def scaffold = Categoria
	
    def listAll = {
        categorias = Categoria.list(params)
        cartoes = CartaoDeCredito.list(params)
    }
	
    def checkLogin() {
        if (!session.usuario) {
            redirect(controller:"usuario", action:"doLogin")
        }
    }
	
}
