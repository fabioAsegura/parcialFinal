<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Narrow Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../../../../dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="narrow-jumbotron.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">
      <header class="header clearfix">
        <nav>
          <ul class="nav nav-pills float-right">
            <li class="nav-item">
              <a class="nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </nav>
        <h3 class="text-muted">Project name</h3>
      </header>

      <main role="main">

        <div class="jumbotron">
          <h1 class="display-3">Jumbotron heading</h1>
          <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-lg btn-success" href="#" role="button">Sign up today</a></p>
        </div>

        <div class="row marketing">
           <div class="container">           
  <table class="table table-striped">
      <tr>
        <td>Ubicacion Espacial</td>
        <td>Procedencia del cajon</td>
        <td>Material Biologico</td>
        
      </tr>
      <% 
                        
                        if (request.getAttribute("listaPanal") != null) {
                        ArrayList<Colmena> list = (ArrayList<Colmena>) request.getAttribute("listaPanal");
                        if(list!= null)
                            for (Colmena col : list) {


                        %>
                        <tr>
                            <td><%=col.getUbicacion()%></td>
                            <td><%=col.getProcedenciaCajon()%></td>
                            <td><%=col.getMaterialBiologico()%></td>
                     
                            
                        </tr>
                        <% } 
                        }
                        %>
  </table>
</div>
        </div>

      </main>

      <footer class="footer">
        <p>&copy; Company 2017</p>
      </footer>

    </div> <!-- /container -->
  </body>
</html>

