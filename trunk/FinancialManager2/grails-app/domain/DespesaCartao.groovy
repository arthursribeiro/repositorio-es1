
class DespesaCartao extends Despesa {

	Integer numeroParcelas
	Boolean parcelado

        static constraints = {
            numeroParcelas(min: 0, blank:false)
        }
	
//	Float getValorAPagar() {
//		return 1.0
//	}
//	
//	Integer getParcelasRestantes() {
//		return 1
//	}
//	
//	void fecharParcela() {
//		
//	}
	
}
