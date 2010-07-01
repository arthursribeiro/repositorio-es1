

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'despesaCartao.label', default: 'DespesaCartao')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'despesaCartao.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="data" title="${message(code: 'despesaCartao.data.label', default: 'Data')}" />
                        
                            <g:sortableColumn property="numeroParcelas" title="${message(code: 'despesaCartao.numeroParcelas.label', default: 'Numero Parcelas')}" />
                        
                            <g:sortableColumn property="descricao" title="${message(code: 'despesaCartao.descricao.label', default: 'Descricao')}" />
                        
                            <th><g:message code="despesaCartao.categoria.label" default="Categoria" /></th>
                   	    
                            <g:sortableColumn property="parcelado" title="${message(code: 'despesaCartao.parcelado.label', default: 'Parcelado')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${despesaCartaoInstanceList}" status="i" var="despesaCartaoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${despesaCartaoInstance.id}">${fieldValue(bean: despesaCartaoInstance, field: "id")}</g:link></td>
                        
                            <td><g:formatDate date="${despesaCartaoInstance.data}" /></td>
                        
                            <td>${fieldValue(bean: despesaCartaoInstance, field: "numeroParcelas")}</td>
                        
                            <td>${fieldValue(bean: despesaCartaoInstance, field: "descricao")}</td>
                        
                            <td>${fieldValue(bean: despesaCartaoInstance, field: "categoria")}</td>
                        
                            <td><g:formatBoolean boolean="${despesaCartaoInstance.parcelado}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${despesaCartaoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
