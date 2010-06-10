class BootStrap {

     def init = { servletContext -> 
     new Usuario(nome:"Felipe",userName:"felipevieira",senha:"ronaldinha").save()
     }
     def destroy = {
     }
} 