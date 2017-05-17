<%-- 
    Document   : Productos
    Created on : 9/05/2017, 11:15:35 PM
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
        <link rel="stylesheet" href="css/style-Inicio.css">
        <title>Productos - BLACKSTONE</title>
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
                
                <img src="img/banner/banner-hp.jpg" alt="Banner" id="Banner"/>
                
                <div class="in-head">
                    <span>Todos nuestros productos</span>   
                </div>
                <div class="in-div-SO">
                <%    
                    if(session != null){     
                        ArrayList Catalago = (ArrayList) session.getAttribute("Productos");
                        if(Catalago != null){  
                            for(Object o : Catalago){   Producto Prodcutos  = (Producto) o;
                %>                
                         
                <form method="post" action="ControladorMore">
                    <div class="in-div-Pro">
                        <p name="Name"><%=Prodcutos.getNombre()%></p>    
                        <img src="img/prod/<%=Prodcutos.getNombre()%>/01.png" alt="<%=Prodcutos.getNombre()%>"/>
                        <p id="info"><%=Prodcutos.getDescripcion()%></p>                 
                        
                        <input type="hidden" name="accion" value="<%=Prodcutos.getNombre()%>">
                        
                        <button onclick="ControladorMore">Ver mas..</button>
                        <button onclick="submit">Agregar</button>
                        
                    </div>
                </form>      
                   
                <%  }   }   }   %>
                </div>
                
                </div>
            </div>
            
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
