<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                       <meta name="layout" content="main" />
         <title>Login</title>
    </head>
    <body>
        <div class="body">
          <g:if test="${flash.message}">
         <div class="message">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${usuario}">
          <div class="errors">
            <g:renderErrors bean="${user}" as="list" />
          </div>
        </g:hasErrors>
            <g:form action="doLogin" method="post">
                <div class="dialog">
                                <p>Entre com seus dados abaixo:</p>
                 <table class="userForm">
                   <tr class='prop'>
                       <td valign='top' style='text-align:left;' width='20%'>
                           <label for='userName'>UserName:</label>
                       </td>
                       <td valign='top' style='text-align:left;' width='80%'>
                           <input id="userName" type='text' name='userName' value='${usuario?.userName}' />
                      </td>
                  </tr>
                  <tr class='prop'>
                      <td valign='top' style='text-align:left;' width='20%'>
                          <label for='senha'>Senha:</label>
                      </td>
                      <td valign='top' style='text-align:left;' width='80%'>
                          <input id="senha" type='password' name='senha'
                                 value='${usuario?.senha}' />
                      </td>
                  </tr>
               </table>
               </div>
               <div class="buttons">
                     <span class="formButton">
                        <input type="submit" value="Login"></input>
                     </span>
               </div>
            </g:form>
        </div>
    </body>
</html>
