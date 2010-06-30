<html>
  <head>
    <title><g:layoutTitle default="Grails" /></title>
    <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
  <g:layoutHead />
  <g:javascript library="application" />
</head>
<body>
  <div class="nav" align="right">
    <span class="menuButton"><a class="text">${session.usuario?.userName}</a></span>
    <span class="menuButton"><g:link class="login" controller="login" action="logout">Logout</g:link></span>
    <span class="menuButton"><a class="text" href="${createLink(uri: '/about.gsp')}">Sobre</a></span>
    <span class="menuButton"><a class="text" href="${createLink(uri: '/logout.gsp')}">Sair</a></span>
  </div>
  <div id="spinner" class="spinner" style="display:none;">
    <img src="${resource(dir:'images',file:'spinner.gif')}" alt="Spinner" />
  </div>
  <div id="grailsLogo" class="logo" align="center"><a href="http://www.twitter.com/paintcode"><img src="http://img814.imageshack.us/img814/391/paintcodesoftware.jpg" border="0" width="200px" height="150px" /></a></div>
<g:layoutBody />
</body>
</html>
