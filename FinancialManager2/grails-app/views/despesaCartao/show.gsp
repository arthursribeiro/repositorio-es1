

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'despesaCartao.label', default: 'DespesaCartao')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
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
                            <td valign="top" class="name"><g:message code="despesaCartao.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: despesaCartaoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="despesaCartao.data.label" default="Data" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${despesaCartaoInstance?.data}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="despesaCartao.numeroParcelas.label" default="Numero Parcelas" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: despesaCartaoInstance, field: "numeroParcelas")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="despesaCartao.descricao.label" default="Descricao" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: despesaCartaoInstance, field: "descricao")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="despesaCartao.categoria.label" default="Categoria" /></td>
                            
                            <td valign="top" class="value"><g:link controller="categoria" action="show" id="${despesaCartaoInstance?.categoria?.id}">${despesaCartaoInstance?.categoria?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="despesaCartao.parcelado.label" default="Parcelado" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${despesaCartaoInstance?.parcelado}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="despesaCartao.valor.label" default="Valor" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: despesaCartaoInstance, field: "valor")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="despesaCartao.fixa.label" default="Fixa" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${despesaCartaoInstance?.fixa}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="despesaCartao.nome.label" default="Nome" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: despesaCartaoInstance, field: "nome")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="despesaCartao.aberta.label" default="Aberta" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${despesaCartaoInstance?.aberta}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${despesaCartaoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
