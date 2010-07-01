
class Categoria {

    String nome
    static hasMany = [despesas:Despesa]

    String toString() {
        return nome
    }
	
    static constraints = {
        nome(nullable: false, size:2..50, blank:false, unique:true)
    }


//	
//	void novaDespesa(String nome, Float valor, Date data, String descricao) {
//		
//	}
//	
//	void excluirDespesa(String despesa) {
//		
//	}
//	
//	Despesa buscarDespesa(String despesa, Date data) {
//		return new Despesa()
//	}
//	
	
}
