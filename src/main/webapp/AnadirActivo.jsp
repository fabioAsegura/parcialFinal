<%@page import="Model.Categoria"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>A�adir Activo</title>
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
                    <h1>A�adir Activo</h1>
                    <p></p>
                    <hr>
                    <div class="container">   
                        <form class="form-inline" action="Activoo" method="POST">
                            <div class="form-group">
                                <label for="idequipo">ID Activo:</label>
                                <input  class="form-control" name="idActivo">
                            </div>
                            <div class="form-group">
                                <label for="nombre">Tipo:</label>
                                <input  class="form-control" name="tipo">
                            </div>
                            <div class="form-group">
                                <label for="calificacion">Fabricante:</label>
                                <input  class="form-control" name="fabricante">
                            </div>
                            <div class="span12">&nbsp;</div>
                            <div class="form-group">
                                <label for="fechaC">Fecha Compra:</label>
                                <input  class="form-control" name="fechaC">
                            </div>
                            <div class="form-group">
                                <label for="prestaso">Ultimo Mant.:</label>
                                <input  class="form-control" name="mantenimiento">
                            </div>
                            <div class="form-group">
                                <label for="tipo">Estado</label>
                                <select class="form-control" name="estado">
                                    <option>Excelente</option>
                                    <option>Bueno</option>
                                    <option>Regula</option>
                                    <option>Malo</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="tipo">Prestado</label>
                                <select class="form-control" name="prestado">
                                    <option>True</option>
                                    <option>False</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="tipo">Categoria</label>
                                <select class="form-control" name="categoria">
                                     <%
                                        if (request.getAttribute("categoria") != null) {
                                            ArrayList<Categoria> array = (ArrayList<Categoria>) request.getAttribute("categoria");
                                            for (Categoria a : array) {
                                    %> 
                                    <option value="<%=a.getNombre()%>"><%=a.getNombre()%></option> 
                                    <%      }
                                        }
                                    %> 
                                </select>
                            </div>
                                <br>
                                <br>
                                
                            <div class="form-group">
                                <label for="tipo">Calificaci�n</label>
                                <select class="form-control" name="calificacion">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>


                            <br>
                            <div class="span12">&nbsp;</div>
                            <button type="submit" class="btn btn-default" name="Enviar">Enviar</button>
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