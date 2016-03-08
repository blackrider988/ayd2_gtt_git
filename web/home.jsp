<%-- 
    Document   : home
    Created on : 4/02/2016, 10:00:36 AM
    Author     : mario
--%>

<%@page import="interaccion.clControlUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - GTT</title>
    </head>
    <body>
        <div id='cssmenu'>
        <ul>
           <li class='active'><a href='#'><span>Home</span></a></li>
           <li><a href='ver_viajes.jsp'><span>Reservaciones</span></a></li>
           <li><a href='#'><span>Historial</span></a></li>
           <li><a href='#'><span>Fotos</span></a></li>
           <li><a href='ver_roles.jsp'><span>Rol</span></a></li>
           <li><a href='#'><span>Acerca de</span></a></li>
           <li class='last'><a href='#'><span>Contacto</span></a></li>
        </ul>
        </div>
        
        <%
            String vsNombre = request.getParameter("usr_name");
            String vsContr = request.getParameter("usr_pass");
            
            clControlUsuario cu = new clControlUsuario();
            String vsRespuesta = cu.funAutenticacion(vsNombre, vsContr);

            //out.print("este es una salida");
            
            if(vsRespuesta != "Error"){
                out.print("<h4> Autenticación Exitosa! </h4>" + 
                            "<h4> Bienvenido: " + vsRespuesta  +"</h4>");
            }else{
                out.print("<h4> ERROR en la autenticación</h4>");
            }

        %>
        
        
    </body>
</html>
