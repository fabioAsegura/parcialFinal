<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Editar Supervisor</title>
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

       <%@include file="Header.jsp"%>

        <div class="container-fluid text-center">    
            <div class="row content">
                <div class="col-sm-2 sidenav">

                </div>
                <div class="col-sm-8 text-left"> 
                    <h1>Editar Supervisor</h1>
                    <p></p>
                    <hr>
                    <div class="container">   
                        <%
                            int id_supervisor = (Integer) request.getAttribute("id_supervisor");
                            String nombre = (String) request.getAttribute("nombre");
                            String apellido = (String) request.getAttribute("apellido");
                            String fechaEntrada = (String) request.getAttribute("fechaEntrada");


                        %>
                        <form class="form-inline" action="EditarSupervisores" method="POST">
                            <div class="form-group">
                                <label for="Idusuario">ID Supervisor:</label>
                                <input class="form-control" name="id_supervisor" value="<%=id_supervisor%>" readonly="readonly">
                            </div>
                            <div class="form-group">
                                <label for="nombre">Nombre:</label>
                                <input  class="form-control" name="nombre" value="<%=nombre%>">
                            </div>
                            <div class="form-group">
                                <label for="tipo">Apellido:</label>
                                <input  class="form-control" name="apellido"value="<%=apellido%>">
                            </div>
                            <div class="span12">&nbsp;</div>
                            <div class="form-group">
                                <label for="calificaion">Fecha Entrada:</label>
                                <input  class="form-control" name="fechaEntrada" value="<%=fechaEntrada%>">
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
