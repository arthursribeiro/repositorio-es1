
class Despesa {

	String nome
	Float valor
	String descricao
	Date data
	Boolean aberta
        Categoria categoria
	static belongsTo = Categoria
        Boolean fixa
        
	String toString() {
		"$data : $nome - $valor"
	}
//	
//	void fecharDespesa() {
//		
//	}
	
}
