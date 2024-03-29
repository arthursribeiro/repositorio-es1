

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuarioComum.label', default: 'UsuarioComum')}" />
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
            <g:hasErrors bean="${usuarioComumInstance}">
            <div class="errors">
                <g:renderErrors bean="${usuarioComumInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userName"><g:message code="usuarioComum.userName.label" default="User Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuarioComumInstance, field: 'userName', 'errors')}">
                                    <g:textField name="userName" value="${usuarioComumInstance?.userName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"><g:message code="usuarioComum.senha.label" default="Senha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuarioComumInstance, field: 'senha', 'errors')}">
                                    <g:textField name="senha" value="${usuarioComumInstance?.senha}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"><g:message code="usuarioComum.nome.label" default="Nome" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: usuarioComumInstance, field: 'nome', 'errors')}">
                                    <g:textField name="nome" value="${usuarioComumInstance?.nome}" />
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
