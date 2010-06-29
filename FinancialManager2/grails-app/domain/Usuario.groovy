
class Usuario {
    String nome
    String userName
    String senha
    static constraints = {
        userName(length:5..15, unique:true)
        senha(length:4..20)
    }

}
