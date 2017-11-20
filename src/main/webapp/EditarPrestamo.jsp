<%@page import="Model.Prestamo"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>

<html lang="en">
    <head>
        <title>Editar Prestamo</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
            .row.content {height: 450px}

            /* Set gray background color and 100% height */
            .sidenav {
                padding-top: 20px;
                background-color: #f1f1f1;
                height: 100%;
            }

            /* Set black background color, white text and some padding */
            footer {
                background-color: #555;
                color: white;
                padding: 15px;
            }

            /* On small screens, set height to 'auto' for sidenav and grid */
            @media screen and (max-width: 767px) {
                .sidenav {
                    height: auto;
                    padding: 15px;
                }
                .row.content {height:auto;} 
            }
        </style>
    </head>
    <body>

        <%@include file="Header.jsp" %>

        <div class="container-fluid text-center">    
            <div class="row content">
                <div class="col-sm-2 sidenav">

                </div>
                <div class="col-sm-8 text-left"> 
                    <h1>Editar Activo</h1>
                    <p></p>
                    <hr>
                    <div class="container">   
                        <%
                            
                            
                            int id_prestamo=(Integer) request.getAttribute("id_prestamo");
                            String fecha_entrada=(String) request.getAttribute("fecha_entrada");
                            String fecha_salida= (String) request.getAttribute("fecha_salida");
                            String tipo= (String) request.getAttribute("tipo");
                            String activo1= (String) request.getAttribute("activo1");
                            String activo2=(String) request.getAttribute("activo2");
                            String activo3=(String) request.getAttribute("activo3");
                            String activo4=(String) request.getAttribute("activo4");
                            String activo5= (String) request.getAttribute("activo5");
                            int id_solicitante= (Integer) request.getAttribute("id_solicitante");
                            int id_trabajador= (Integer) request.getAttribute("id_trabajador");
                            
                            
                           

                        %>
                        <form class="form-inline" action="EditarPrestamoss" method="POST">
                           <div class="form-group">
                                <label for="fecha_entrada">Fecha Entrada:</label>
                                <input class="form-control" name="fecha_entrada" value="<%=fecha_entrada%>">
                            </div>
                            <div class="form-group">
                                <label for="fecha_salida">Fecha Salida:</label>
                                <input  class="form-control" name="fecha_salida" value="<%=fecha_salida%>">
                            </div>
                          <div class="form-group">
                                    <label for="tipo">Tipo</label>
                                    <select class="form-control" name="tipo" value="<%=tipo%>">
                                        <option>Interno</option>
                                        <option>Externo</option>
                                    </select>
                                </div>
                            <div class="span12">&nbsp;</div>
                            <div class="form-group">
                                <label for="activo1">Activo 1:</label>
                                <input  class="form-control" name="activo1" value="<%=activo1%>">
                               
                                <div class="form-group">
                                    <label for="activo2">Activo 2:</label>
                                    <input  class="form-control" name="activo2" value="<%=activo2%>">
                                </div>
                                   <div class="form-group">
                                    <label for="activo3">Activo 3:</label>
                                    <input  class="form-control" name="activo3" value="<%=activo3%>">
                                </div>
                                
                                   <div class="form-group">
                                    <label for="activo4">Activo 4:</label>
                                    <input  class="form-control" name="activo4" value="<%=activo4%>">
                                </div>
                                <div class="span12">&nbsp;</div>
                                   <div class="form-group">
                                    <label for="activo5">Activo 5:</label>
                                    <input  class="form-control" name="activo5" value="<%=activo5%>">
                                </div>
                                 
                                   <div class="form-group">
                                    <label for="id_solicitante">ID Solicitante:</label>
                                    <input  class="form-control" name="id_solicitante" value="<%=id_solicitante%>"readonly="readonly">
                                </div>
                                 
                                   <div class="form-group">
                                    <label for="id_trabajador">ID Trabajador:</label>
                                    <input  class="form-control" name="id_trabajador" value="<%=id_trabajador%>" readonly="readonly"> 
                                </div>
                                <br>
                                <div class="span12">&nbsp;</div>
                                <button type="submit" class="btn btn-default">Enviar</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>

        <footer class="container-fluid text-center">
            <p>Universidad Sergio Arboleda</p>
        </footer>

    </body>
</html>