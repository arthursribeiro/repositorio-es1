

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" controller="despesa" action="create" params="['categoria.id': categoriaInstance?.id]"><g:message code="Adicionar despesa" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" controller="despesaCartao" action="create" params="['categoria.id': categoriaInstance?.id]"><g:message code="Adicionar despesa de cartão" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.despesas.label" default="Despesas" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${categoriaInstance.despesas}" var="d">
                                    <li><g:link controller="despesa" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="categoria.nome.label" default="Nome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: categoriaInstance, field: "nome")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${categoriaInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Tem certeza que deseja deletar esta categoria?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
