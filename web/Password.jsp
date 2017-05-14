<%-- 
    Document   : Password
    Created on : 14/05/2017, 03:43:13 PM
    Author     : AngelxPM
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     	<meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="css/style-Menu.css">
        <link rel="stylesheet" href="css/style-Password.css">
        <title>RECUPERAR CONTRASEÑA - BLACKSTONE</title>
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
                    <span>Recupera tu contraseña en unos sencillos pasos</span>   
                </div>
                <div class="U-New">
                    <p class="U-Des">
                        Se enviara en un correo a tu correo electronico
                    </p>
                    
                    
                    
                    <form action="RecuperarPassword" method="POST">
                        <div class="U-Datos">
                           Direcion de correo electronico (E-MAil):<br>
                           <input type="text" name="e-mail" value="">
                           <br><br>
                           Repetir correo electronico (E-MAil):<br>
                           <input type="text" name="e-mail-repetir" value="">
                           <br><br>
                           <label name="lb-estado" id="lb-estado"> <%= request.getAttribute("Estado") %> </label>
                           <br><br><br>

                           <button calss="U-Old-Iniciar" name="U-Old-Iniciar" onclick="submit();">Enviar correo</button>
                        </div>    
                    </form>
                    
                </div>
                <div class="U-Old">
                    <p class="U-Des">   
                        <label id="lb-titulo">Cómo crear una contraseña segura</label>
                        <br><br>
                        Para proteger tu cuenta, te ofrecemos algunas sugerencias a la hora 
                        de crear una contraseña segura:                                         <br><br>
                        
                        Usa una contraseña única para cada una de tus cuentas importantes.     <br><br>
                        Usa una combinación de letras, números y símbolos en la contraseña.    <br><br>
                        No incluyas palabras comunes ni datos personales en la contraseña.     <br><br>
                        Asegúrate de que las opciones de contraseña de la copia de seguridad  
                        estén actualizadas y sean seguras.


                    </p>
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
        
        <script src="js/JQ.js" type="text/javascript"></script> 
        <script src="js/Producto.js" type="text/javascript"></script> 
        
    </body>
</html>
