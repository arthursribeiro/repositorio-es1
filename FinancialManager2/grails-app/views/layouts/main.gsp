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
    <span class="menuButton"><a class="text" href="${createLink(uri: '/about.gsp')}">Sobre</a></span>
  </div>
  <div id="spinner" class="spinner" style="display:none;">
    <img src="${resource(dir:'images',file:'spinner.gif')}" alt="Spinner" />
  </div>
  <div id="grailsLogo" class="logo" align="center"><a href="http://www.twitter.com/paintcode"><img src="http://lh6.ggpht.com/_pCvetzyLes0/TCwW3M79s5I/AAAAAAAAAFI/ikC_jaBLiEg/iae.png" border="0" width="500px" height="230px" /></a></div>
<g:layoutBody />
</body>
</html>
