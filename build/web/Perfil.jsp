<%-- 
    Document   : Perfil
    Created on : 10/05/2017, 12:11:48 AM
    Author     : AngelxPM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
             
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     	<meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="css/style-Menu.css">
        <link rel="stylesheet" href="css/style-Perfil.css">
        
        <title>PERFIL - BLACKSTONE</title>
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
                    <span>Crea o inicia sesion en tu cuenta BlackStone</span>   
                </div>
                <div class="U-New">
                    <p class="U-Des">
                        Creando una Cuenta podrá comprar rápido.
                    </p>
                    <div class="U-Datos">
                        Direcion de correo electronico (E-MAil):<br>
                        <input type="text" name="e-mail" value="">
                        <br><br>
                        Contraseña:<br>
                        <input type="password" name="password" value="">
                        <br><br>
                        Repetir contraseña:<br>
                        <input type="password" name="password-repetir" value="">
                        <br><br>
                        <button calss="U-Old-Iniciar" name="U-Old-Iniciar">Crear cuenta</button>
                    </div>
                    
                </div>
                <div class="U-Old">
                    <p class="U-Des">
                        Ya soy cliente registrado, deseo iniciar sesion.
                    </p>
                    <div class="U-Datos">
                        Direcion de correo electronico (E-MAil):<br>
                        <input type="text" name="e-mail" value="">
                        <br><br>
                        Contraseña:<br>
                        <input type="password" name="password" value="">
                        <br><br>
                        Olvidaste tu contraseña?<br>
                        <a id="pass" href="Password.jsp">Recuperar contraseña</a>
                        <br><br>
                        <button calss="U-Old-Iniciar" name="U-Old-Iniciar">Inicia sesion</button>
                    </div>
                </div>
                 
            </div>
            <p class="both"></p> 
            <br><br><br>
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
