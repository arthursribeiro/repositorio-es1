
class Despesa {

	String nome
	Float valor
	String descricao
	Date data
	Boolean aberta
        Categoria categoria
	static belongsTo = Categoria
        Boolean fixa
        static constraints = {
            nome(length:2..30, unique:true, blank:false)
            valor(min:0f, blank:false)
        }


	String toString() {
		"$data : $nome - $valor"
	}



//	void fecharDespesa() {
//		
//	}
	
}
