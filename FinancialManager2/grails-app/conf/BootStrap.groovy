class BootStrap {

     def init = { servletContext -> 
     new UsuarioMaster(nome:"Felipe",userName:"felipevieira",senha:"ronaldinha").save()
     new UsuarioComum(nome:"Amaury", userName: "amaury", senha:"reby").save()
     }
     def destroy = {
     }
} 