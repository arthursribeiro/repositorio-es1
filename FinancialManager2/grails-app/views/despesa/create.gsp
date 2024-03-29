

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'despesa.label', default: 'Despesa')}" />
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
            <g:hasErrors bean="${despesaInstance}">
            <div class="errors">
                <g:renderErrors bean="${despesaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="categoria"><g:message code="despesa.categoria.label" default="Categoria" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaInstance, field: 'categoria', 'errors')}">
                                    <g:select name="categoria.id" from="${Categoria.list()}" optionKey="id" value="${despesaInstance?.categoria?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="valor"><g:message code="despesa.valor.label" default="Valor" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaInstance, field: 'valor', 'errors')}">
                                    <g:textField name="valor" value="${fieldValue(bean: despesaInstance, field: 'valor')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="data"><g:message code="despesa.data.label" default="Data" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaInstance, field: 'data', 'errors')}">
                                    <g:datePicker name="data" precision="day" value="${despesaInstance?.data}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="despesa.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${despesaInstance?.nome}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricao"><g:message code="despesa.descricao.label" default="Descricao" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaInstance, field: 'descricao', 'errors')}">
                                    <g:textField name="descricao" value="${despesaInstance?.descricao}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fixa"><g:message code="despesa.fixa.label" default="Fixa" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaInstance, field: 'fixa', 'errors')}">
                                    <g:checkBox name="fixa" value="${despesaInstance?.fixa}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="aberta"><g:message code="despesa.aberta.label" default="Aberta" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: despesaInstance, field: 'aberta', 'errors')}">
                                    <g:checkBox name="aberta" value="${despesaInstance?.aberta}" />
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
