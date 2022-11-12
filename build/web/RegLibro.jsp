<%-- 
    Document   : RegLibro
    Created on : 12/11/2022, 08:17:11 AM
    Author     : Edwing
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Alumno</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <!--script src="web/img/logo.png"></script-->
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                min-height: 100vh;
                background-image: url("img/fondo2.jpg");
                background-size: 100%;
                background-position: center center;
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
        
        <script src="js/script.js"></script>
    </head>
    <body>
        <div class="container-sm ">              
            <div class="shadow-lg p-3 bg-white rounded">
        <form method="POST" id="form" name="form" action="NewServlet1" >
             <div class="for m-group">                       
                        <img src="img/icono.png" class="rounded mx-auto d-block" width="100" alt="...">
                        <h2 class="display-8 text-center my-4"> REGISTRO DE LIBROS </h2>
                     
            
        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <label for="codigo">Código</label>
                                    <input class="form-control" type="text" placeholder="Ingrese su código" name="codigo" id="codigo">
                                    <input type="hidden" name="control" value="GUARDAR"> 
                                </div>
                                <div class="col">
                                    <label for="fecha">Fecha de Lanzamiento</label>  
                                    <input class="form-control" type="date" name="fecha" id="fecha">
                                </div>
                            </div>
        </div>
                        
        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <label for="nombre">Nombre del Libro</label>
                                    <input class="form-control" type="text" placeholder="Ingrese nombre" name="nombre" id="nombre">
                                </div>
                                 <div class="col">
                                    <label for="apellido">Autor</label>
                                    <input class="form-control" type="text" placeholder="Ingrese apellido" name="apellido" id="apellido">
                                </div>
                            </div>
        </div>
                        
        
           
                 <div class="form-group">
                                    <label for="pasta">Tipo de Pasta</label>  
                                    <select class="form-control" name="pasta">
                                        <option value="Puerto Barrios">Blanda</option>
                                        <option value="Morales">Gruesa</option>
                                    </select>
                                </div>       
                            
            <br>
            
            <button type="button" onclick="enviarFormularioOpcion2()" class="btn btn-success">Guardar</button>
             <button type="reset" class="btn btn-danger">Cancelar</button>
             <a class="btn btn-warning" href="home.jsp" style="float: right;">Atrás</a>
             
             
        </div>
        </form>   
        </div>
        
      <div class="p-3 bd-highlight">
            <div class="container" id="container2">
                <table class="table table-striped table-hover bg-white">
                    <thead class="table-dark">
                       
                        <tr>
                            <td>Codigo</td>
                            <td>Fecha de Lanzamiento</td>
                            <td>Nombre de Libro</td>
                            <td>Autor</td>
                            <td>Tipo de Pasta</td>
                        </tr>
                     
                    </thead>
                    <tbody id="bodyTable">

                    </tbody>                     
                </table>
            </div>
        </div> 
    
        </div>
    </body>
</html>
