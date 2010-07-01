package categoria

import grails.test.*

class CategoriaTestTests extends GrailsUnitTestCase {
    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testSomething() {
        Categoria c1 = new Categoria()
        c1.nome = "Nova"
        assertNotNull c1.nome
        assert c1.toString() == "Nova"
    }
}
