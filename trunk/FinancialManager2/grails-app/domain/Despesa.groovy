
class Despesa {

	String nome
	Float valor
	String descricao
	Date data
	Boolean aberta
	
	String toString() {
		"$data : $nome - $valor"
	}

        static belongsTo = Categoria
//	
//	void fecharDespesa() {
//		
//	}
	
}
