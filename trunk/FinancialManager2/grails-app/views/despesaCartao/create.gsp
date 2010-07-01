

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'despesaCartao.label', default: 'DespesaCartao')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${despesaCartaoInstance}">
            <div class="errors">
                <g:renderErrors bean="${despesaCartaoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="data"><g:message code="despesaCartao.data.label" default="Data" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaCartaoInstance, field: 'data', 'errors')}">
                                    <g:datePicker name="data" precision="day" value="${despesaCartaoInstance?.data}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numeroParcelas"><g:message code="despesaCartao.numeroParcelas.label" default="Numero Parcelas" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaCartaoInstance, field: 'numeroParcelas', 'errors')}">
                                    <g:textField name="numeroParcelas" value="${fieldValue(bean: despesaCartaoInstance, field: 'numeroParcelas')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricao"><g:message code="despesaCartao.descricao.label" default="Descricao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaCartaoInstance, field: 'descricao', 'errors')}">
                                    <g:textField name="descricao" value="${despesaCartaoInstance?.descricao}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="categoria"><g:message code="despesaCartao.categoria.label" default="Categoria" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaCartaoInstance, field: 'categoria', 'errors')}">
                                    <g:select name="categoria.id" from="${Categoria.list()}" optionKey="id" value="${despesaCartaoInstance?.categoria?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="parcelado"><g:message code="despesaCartao.parcelado.label" default="Parcelado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaCartaoInstance, field: 'parcelado', 'errors')}">
                                    <g:checkBox name="parcelado" value="${despesaCartaoInstance?.parcelado}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="valor"><g:message code="despesaCartao.valor.label" default="Valor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaCartaoInstance, field: 'valor', 'errors')}">
                                    <g:textField name="valor" value="${fieldValue(bean: despesaCartaoInstance, field: 'valor')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fixa"><g:message code="despesaCartao.fixa.label" default="Fixa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaCartaoInstance, field: 'fixa', 'errors')}">
                                    <g:checkBox name="fixa" value="${despesaCartaoInstance?.fixa}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="despesaCartao.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaCartaoInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${despesaCartaoInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="aberta"><g:message code="despesaCartao.aberta.label" default="Aberta" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaCartaoInstance, field: 'aberta', 'errors')}">
                                    <g:checkBox name="aberta" value="${despesaCartaoInstance?.aberta}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
