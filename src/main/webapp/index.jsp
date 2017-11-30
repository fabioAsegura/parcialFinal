<%@page import="model.valores"%>
<%@page import="java.util.ArrayList"%>
<html>
    <head>
        <title>Principal</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form class="col-sm-2" action="Reporte" method="POST">
  <div class="form-group">
    <label for="usuario">numero de empleado</label>
    <input type="text" class="form-control"  name="numEmp">
  </div>
  <button type="submit" class="btn-sm btn-primary">enviar</button>
   <button onclick="window.location.href='index.jsp'" type="button" class="btn-sm btn-primary">Inicio</button>
</form>
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
    </body>
</html>

