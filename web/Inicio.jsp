<%-- 
    Document   : Index2
    Created on : 9/05/2017, 02:09:08 PM
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
        <title>INICIO - BLACKSTONE</title>
    </head>
    <body>
        <div class="container"  >

            <ul id="nav">
                <img src="img/LogoBS-N.png" alt="Logo"/>
                <li><a href="Perfil.jsp">PERFIL</a></li>
                <li><a href="Carrito.jsp">CARRITO</a></li>
                <li><a href="Categorias.jsp">CATEGORIAS</a></li>
                <li><a href="Productos.jsp">PRODUCTOS</a>
                <li><a href="Inicio.jsp">INICIO</a></li>
            </ul>

            <div class="in-container">
                <img src="img/banner/banner-ew.jpg" alt="Banner" id="Banner"/>

                <div class="in-head">
                    <span>Super ofertas</span>   
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
                
                
                <br><br>    
                <div class="in-head">
                    <span>Los mas vendidos</span>   
                </div>
                    
                <div class="in-div-SO">
                    <div class="in-div-Pro">
                        <p name="Name">USB ADATA 16GB</p>
                        <img src="img/prod/usb.jpg" alt="RAM"/>
                        <p id="info">La mejor manera de transportar tus archivos de una manera eficiente</p>
                        <button name="mas" id="mas">Ver mas..</button>
                        <button name="add" id="add">Agregar</button>
                    </div>
                                           
                </div>
                    
                <br><br>    
                <div class="in-head">
                    <span>O F E R T O N O N E S</span>   
                </div>
                
                <div class="in-div-SO">
                    <div class="in-div-Pro">
                        <p name="Name">GABINETE ARTECK</p>
                        <img src="img/prod/gabinete.jpg" alt="RAM"/>
                        <p id="info">El mejor gabinete para el meor desempeño.</p> 
                        <button name="mas" id="mas">Ver mas..</button>
                        <button name="add" id="add">Agregar</button>    
                    </div>
                    
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
