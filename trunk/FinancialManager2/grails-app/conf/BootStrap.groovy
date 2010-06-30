class BootStrap {

     def init = { servletContext -> 
     new Usuario(nome:"Felipe",userName:"felipevieira",senha:"ronaldinha").save()
     new Usuario(nome:"Amaury", userName: "amaury", senha:"reby").save()
     }
     def destroy = {
     }
} 