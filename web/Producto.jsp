<%-- 
    Document   : Producto
    Created on : 9/05/2017, 05:24:46 PM
    Author     : AngelxPM
--%>
<%@page import="BlackStone.Modelos.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     	<meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="css/style-Menu.css">
        <link rel="stylesheet" href="css/style-Producto.css">
        <title>PRODUCTO - BLACKSTONE</title>
    </head>
    <body>
        <input type="hidden" name="Pagina" value="Producto">
        
        <div class="container">
            
            <ul id="nav">
                <img src="img/LogoBS-N.png" alt="Logo"/>
                <li><a href="Perfil.jsp">PERFIL</a></li>
                <li><a href="Carrito.jsp">CARRITO</a></li>
                <li><a href="Categorias.jsp">CATEGORIAS</a></li>
                <li><a href="ControladorProductos">PRODUCTOS</a>
                <li><a href="ControladorInicio">INICIO</a></li>
            </ul>
            
            <% 
                if(session != null){
                ArrayList comentarios = (ArrayList) session.getAttribute("Productos");
                if(comentarios != null){
                    for(Object o : comentarios){
                        Producto comentario  = (Producto) o;
            %>     
            
            
            <div class="pro-container">
                <div class="slide-img">
                    <div class="img-principal">
                        <img src="img/prod/<%=comentario.getUbicacion()%>/01.png" alt="Pri" id="Img0P">
                    </div>
                    <div class="img-secundario">
                        <img src="img/prod/<%=comentario.getUbicacion()%>/01.png" alt="Sec" id="Img01" onclick="CamImg01()">
                        <img src="img/prod/<%=comentario.getUbicacion()%>/02.png" alt="Sec" id="Img02" onclick="CamImg02()">
                        <img src="img/prod/<%=comentario.getUbicacion()%>/03.png" alt="Sec" id="Img03" onclick="CamImg03()">
                        <img src="img/prod/<%=comentario.getUbicacion()%>/04.png" alt="Sec" id="Img04" onclick="CamImg04()">
                        <img src="img/prod/<%=comentario.getUbicacion()%>/05.png" alt="Sec" id="Img05" onclick="CamImg05()">
                    </div>
                </div>
                <div class="slide-info">
                    <div class="P-Contenedor">
                        
                        <label class="P-Name" name="P-Name"><%=comentario.getNombre()%></label>
                    
                        <p class="P-Stock" name="P-Stock">Cantidad en existencia: 
                            <label class="P-Stock-Cant" name="P-Stock-Cant"> <%=comentario.getStock()%> </label>
                            unidades.
                        </p>
                        
                        <p class="P-Cantidad" name="P-Cantidad">
                            Cantidad:
                            <input type="number"name="cantidad" value="1" min="1"/>
                        </p>
                        
                        <p class="P-Precio" name="P-Precio">
                            Precio: 
                            <span>$</span><label class="P-PrecioLB" name="P-PrecioLB"><%=comentario.getPrecioUnitario()%></label>
                            MXN 
                        </p>
                        
                        <p class="P-Caracteristicas" name="P-Caracteristicas">
                            <label id="CAC">Caracteristicas:</label>
                            <br><br>
                            <%=comentario.getDescripcion()%>
                        </p>
                        
                        <p class="P-Comprar" name="P-Comprar">
                            <button name="P-Add" id="P-Add">Agregar al carrito</button>
                            <button name="P-Buy" id="P-Buy">Comprar</button>
                        </p>   
                        
                        
                    </div>
                </div>
            </div>
            
                        <td><%=comentario.getIdProducto()%></td>
                        
                        
                <%  }   }   }   %>
            
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
        
        <script src="js/JQ.js" type="text/javascript"></script> 
        <script src="js/Producto.js" type="text/javascript"></script> 
        
    </body>
</html>
