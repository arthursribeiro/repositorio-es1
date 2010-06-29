<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="layout" content="logged" />
    <title>Despesas</title>
  </head>
  <body>
    <div class="nav">
      <span class="menuButton"><a href="/FinancialManager/despesa/create" class="create">Nova Despesa</a></span>
    </div>
    <div class="body">
       <g:form action="show" method="post">
          <g:each in="${despesas}" status="i" var="despesa">
             <td><g:link action="show" id="${despesa.id}">${despesa.nome?.encodeAsHTML()}</g:link></td>
             <br>
          </g:each>
       </g:form>
    </div>
  </body>
</html>
