import functionaltestplugin

class CategoriaFunctionalTestFunctionalTests extends functionaltestplugin.FunctionalTestCase {

    void testCriaCategoria() {
        get("categoria/create") {
            nome = "b"
        }
        assertTitle "Create Categoria"
        assertContent "O campo [nome] da classe [class Categoria] com o valor [b] não está na faixa de tamanho válida de [2] até [50]"
    }
}
