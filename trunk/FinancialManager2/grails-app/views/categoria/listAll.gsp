<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                       <meta name="layout" content="main" />
         <title>Categorias</title>
    </head>
    <body>
        <div class="nav">
          <span class="menuButton"><a href="/FinancialManager/categoria/create" class="create">Nova Categoria</a></span>
        </div>
        <div class="body">
          <h1>Categorias</h1>
          <div class="list">
            <table>
              <thead>
                <tr>
                  <th class="sortable" ><a href="/FinancialManager/categoria/listAll?sort=id&amp;order=asc">Id</a></th>
                  <th class="sortable" ><a href="/FinancialManager/categoria/listAll?sort=nome&amp;order=asc">Nome</a></th>
                  <th class="sortable" ><a href="/FinancialManager/categoria/listAll?sort=fixa&amp;order=asc">Fixa</a></th>
                </tr>
              </thead>
              <tbody>
                <g:form action="listAll" method="post">
                  <g:each in="${categorias}" status="i" var="categoria">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                      <td><g:link action="show" id="${categoria.id}">${categoria.id?.encodeAsHTML()}</g:link></td>
                      <td><g:link action="show" id="${categoria.id}">${categoria.nome?.encodeAsHTML()}</g:link></td>
                      <td><g:link action="show" id="${categoria.id}">${categoria.fixa?.encodeAsHTML()}</g:link></td>
                    </tr>
                  </g:each>
                </g:form>
              </tbody>
            </table>
         </tbody>
       </table>
     </div>
   </div>
  </body>
</html>
