<%-- 
    Document   : confirmacion_crearusuario
    Created on : 04-mar-2016, 20:49:51
    Author     : mario
--%>

<%@page import="interaccion.clControlUsuario"%>
<%@page import="org.hibernate.Query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usuario creado exitosamente!</h1>
        
        <%
            String vsNombre = request.getParameter("usr_name");
            String vsContr = request.getParameter("usr_pass");
            String vsPrimerNombre = request.getParameter("usr_first");
            String vsPrimerApellido = request.getParameter("usr_last");
            String vsCorreo = request.getParameter("usr_correo");
            
            clControlUsuario cu = new clControlUsuario();
            String vsInsertar = cu.funCreacionUsuario(vsNombre, vsContr, vsPrimerNombre, vsPrimerApellido, vsCorreo);
            

        %>
        
    </body>
</html>
