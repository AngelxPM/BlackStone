<%-- 
    Document   : Prueba
    Created on : 14/05/2017, 10:54:40 PM
    Author     : AngelxPM
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BlackStone.Modelos.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Hello World!</h1>
        <% 
            if(session != null){
                ArrayList comentarios = (ArrayList) session.getAttribute("Productos");
                if(comentarios != null){
                    for(Object o : comentarios){
                        Producto comentario  = (Producto) o;
                %>       
                    
                        <td><%=comentario.getNombre()%></td>
                        <td><%=comentario.getIdProducto()%></td>
                        
                        
                <%  }   }   }   %>
                    
    </body>
</html>
