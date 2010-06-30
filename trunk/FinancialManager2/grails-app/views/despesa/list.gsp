

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'despesa.label', default: 'Despesa')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'despesa.id.label', default: 'Id')}" />
                        
                            <th><g:message code="despesa.categoria.label" default="Categoria" /></th>
                   	    
                            <g:sortableColumn property="valor" title="${message(code: 'despesa.valor.label', default: 'Valor')}" />
                        
                            <g:sortableColumn property="data" title="${message(code: 'despesa.data.label', default: 'Data')}" />
                        
                            <g:sortableColumn property="nome" title="${message(code: 'despesa.nome.label', default: 'Nome')}" />
                        
                            <g:sortableColumn property="descricao" title="${message(code: 'despesa.descricao.label', default: 'Descricao')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${despesaInstanceList}" status="i" var="despesaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${despesaInstance.id}">${fieldValue(bean: despesaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: despesaInstance, field: "categoria")}</td>
                        
                            <td>${fieldValue(bean: despesaInstance, field: "valor")}</td>
                        
                            <td><g:formatDate date="${despesaInstance.data}" /></td>
                        
                            <td>${fieldValue(bean: despesaInstance, field: "nome")}</td>
                        
                            <td>${fieldValue(bean: despesaInstance, field: "descricao")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${despesaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
