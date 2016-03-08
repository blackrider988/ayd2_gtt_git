<%-- 
    Document   : crear_usuario
    Created on : 04-mar-2016, 20:41:24
    Author     : mario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Formulario</h1>
        
        <form class="login-container" action="confirmacion_crearusuario.jsp" method="GET">
        <p>Nombre de Usuario: <input type="text" placeholder="Nombre de Usuario" name="usr_name"></p>
        <p>Contraseña: <input type="password" placeholder="Contraseña de Usuario" name="usr_pass"></p>
        <p>Nombre: <input type="text" placeholder="Primer Nombre" name="usr_first"></p>
        <p>Apellido: <input type="text" placeholder="Primer Apellido" name="usr_last"></p>
        <p>Correo: <input type="text" placeholder="Corre de Usuario" name="usr_correo"></p>
        <p><input type="submit" value="Enviar"></p>
    
  </form>
        
    </body>
</html>
