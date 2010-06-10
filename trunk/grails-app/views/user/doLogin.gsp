<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                       <meta name="layout" content="main" />
         <title>Login de Usuário</title>
    </head>
    <body>
        <div class="body">
            <g:form action="doLogin" method="post">
                <div class="dialog">
                                <p>Digite suas informações de login abaixo:</p><br><br>
                 <table class="userForm">
                   <tr class='prop'>
                       <td valign='top' style='text-align:left;' width='150px'>
                           <label for='email'>Username:</label>
                       </td>
                       <td valign='top' style='text-align:left;' width='150px'>
                           <input id="email" type='text' name='email' value='${user?.email}' />
                      </td>
                  </tr>
                  <tr class='prop'>
                      <td valign='top' style='text-align:left;' width='150px'>
                          <label for='password'>Senha:</label>
                      </td>
                      <td valign='top' style='text-align:left;' width='150px'>
                          <input id="password" type='password' name='password'
                                 value='${user?.password}' />
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
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                       <meta name="layout" content="main" />
         <title>Login de Usuário</title>
    </head>
    <body>
        <div class="body">
            <g:form action="doLogin" method="post">
                <div class="dialog">
                                <p>Digite suas informações de login abaixo:</p>
                 <table class="userForm">
                   <tr class='prop'>
                       <td valign='top' style='text-align:left;' width='150px'>
                           <label for='email'>Nome de Usuário:</label>
                       </td>
                       <td valign='top' style='text-align:left;' width='150px'>
                           <input id="email" type='text' name='email' value='${user?.email}' />
                      </td>
                  </tr>
                  <tr class='prop'>
                      <td valign='top' style='text-align:left;' width='150px'>
                          <label for='password'>Senha:</label>
                      </td>
                      <td valign='top' style='text-align:left;' width='150px'>
                          <input id="password" type='password' name='password'
                                 value='${user?.password}' />
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
