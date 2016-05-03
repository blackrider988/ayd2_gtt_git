<%-- 
    Document   : pg_crear_rol
    Created on : 30-abr-2016, 6:50:42
    Author     : mario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Creación de Rol</title>
    </head>
    <body>
        <h1>Crear un nuevo rol</h1>
        
        <form class="login-container" action="" method="GET">
            <p>Nombre: <input type="text" placeholder="Nombre del rol" name="nombre_nuevo_rol"></p>
            <p>Descripcion: <input type="text" placeholder="Descripcion del rol" name="desc_nuevo_rol"></p>
            <p><input type="submit" value="Crear"></p>
        </form>
    </body>
</html>
