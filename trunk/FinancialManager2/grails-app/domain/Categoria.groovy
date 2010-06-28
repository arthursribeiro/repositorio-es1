
class Categoria {

    String nome
    Boolean fixa
    ArrayList<Despesa> despesas

    String toString() {
        return nome
    }
	
    def constraints = {
        nome(size:3..20, blank:false)
        fixa(blank:false)
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
