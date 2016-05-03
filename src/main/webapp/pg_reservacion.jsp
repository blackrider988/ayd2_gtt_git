<%-- 
    Document   : pg_reservacion
    Created on : 03-may-2016, 0:36:58
    Author     : mario
--%>

<%@page import="interaccion.clControlReservacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Reservacion</h1>
        
        <%
            String name_usr = (String)request.getSession().getAttribute("atrUsr");
            int id_usr = (int)request.getSession().getAttribute("atrIdusr");
            int id_viaje = (int)request.getSession().getAttribute("atrViaje");
            
            clControlReservacion cr = new clControlReservacion();
            cr.funCrearReservacion(id_usr, id_viaje);

        %>
        
    </body>
</html>
