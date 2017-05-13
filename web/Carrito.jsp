<%-- 
    Document   : Carrito
    Created on : 11/05/2017, 09:22:43 AM
    Author     : AngelxPM
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     	<meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="css/style-Menu.css">
        <link rel="stylesheet" href="css/style-Carrito.css">
        
        <title>CARRITO - BLACKSTONE</title>
    </head>
    <body>
        <div class="container">
            
            <ul id="nav">
                <img src="img/LogoBS-N.png" alt="Logo"/>
                
                <li><a href="Perfil.jsp">PERFIL</a></li>
                <li><a href="Carrito.jsp">CARRITO</a></li>
                <li><a href="Categorias.jsp">CATEGORIAS</a></li>
                <li><a href="Productos.jsp">PRODUCTOS</a>
                <li><a href="Inicio.jsp">INICIO</a></li>
                
            </ul>
            
            <div class="in-container">
                <p class="both"></p>    
                <div class="in-head">
                    <span>Carrito</span>   
                </div>
                <div class="C-Carrito">
                    <div class="C-Item">
                        <div class="C-Item-Img">
                            <img src="img/prod/canon-eos-700d/01.png" alt="Imagen"/>
                        </div>
                        <div class="C-Item-Desc">
                            <p name="C-Desc">
                                <label id="C-Item-Name" name="C-Item-Name">Canon EOS 700D 18MP + 18-55MM IS STM</label><br>
                                
                                Descripcion completa del producto la cual es mas larga de la que se ve
                                dentro de las miniaturas la cual estara reducida para aprovechar el espacio de 
                                la pagina y no se vea saturada.
                            </p>
                        </div>
                        <div class="C-Item-Cantidad">
                            <p>
                                <label id="C-Item-Cantidad" name="C-Item-Cantidad">Cantidad:</label>
                                <input type="number"name="cantidad" value="1" min="1" />
                            </p>
                        </div>
                        <div class="C-Item-Precio">
                            <p>
                                Precio: <br>    
                                <span>$<label class="C-PrecioLB" name="C-PrecioLB">11,125</label>
                                MXN </span>
                            </p>
                        </div>
                        <div class="C-Item-Eliminar">
                            <p>
                                Eliminar <br>    
                                    <button name="C-Eliminar" id="C-Eliminar"> X </button>
                            </p>
                        </div>
                    </div>
                    
                </div>
                <p class="both"></p> 
                
                <div class="C-Total">
                    <p>
                        <label>Total de la compra: </label>
                        
                        <span>
                            $<label class="C-PrecioLB" name="C-PrecioLB">11,125</label>
                            MXN 
                        </span>
                        
                        <br>
                        
                        <input type="checkbox" name="vehicle" value="Bike"> Aceptar terminos y condiciones.<br>
                        
                        <button name="P-Buy" id="P-Buy">Pagar</button>
                        
                    </p>
                    
                </div>
                
                <p class="both"></p> <p class="both"></p> 
                
                
                
                 
            </div>
            <p class="both"></p> 
        </div>
        <div class="fotter">
            <ul id="nav">
                <img src="img/LogoBS-N.png" alt="Logo"/>
                <li><a href="Perfil.jsp">PERFIL</a></li>
                <li><a href="Carrito.jsp">CARRITO</a></li>
                <li><a href="Categorias.jsp">CATEGORIAS</a></li>
                <li><a href="Productos.jsp">PRODUCTOS</a>
                <li><a href="Inicio.jsp">INICIO</a></li>
            </ul>
        </div>
    </body>
</html>
