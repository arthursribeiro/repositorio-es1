
class Usuario {
    String nome
    String userName
    String senha
    static constraints = {
        userName(length:5..15, unique:true, blank:false)
        senha(length:4..20)
    }

}
