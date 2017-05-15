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
                ArrayList Catalago = (ArrayList) session.getAttribute("Productos");
                if(Catalago != null){
        %>        
        
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Comentario</th>
                    </tr>       
                    
                <% 
                    for(Object o : Catalago){
                        Producto Prodcutos  = (Producto) o;
                %>       
                    <tr>
                        <td><%=Prodcutos.getIdProducto()%></td>
                        <td><%=Prodcutos.getNombre()%></td>
                        <td><%=Prodcutos.getDescripcion()%></td>
                        <td><%=Prodcutos.getPrecioUnitario()%></td>
                        <td><%=Prodcutos.getIdCategoria()%></td>
                    </tr>    
                        
                <%  }   //for   %>
                
                </table>    
                    
        <%      }
            }   %>
    </body>
</html>
