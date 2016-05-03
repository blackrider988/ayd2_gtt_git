<%-- 
    Document   : pg_viaje_creado
    Created on : 02-may-2016, 17:02:43
    Author     : mario
--%>

<%@page import="interaccion.clControlViaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Viaje</title>
    </head>
    <body>
        <h1>Se a creado el viaje exitosamente</h1>
        
        <h3>Los datos a continuacion</h3>
        
        <%
            //recibir los datos
            String vsNombre = request.getParameter("nombre_viaje");
            String vsIni = request.getParameter("fecha_ini");
            String vsFin = request.getParameter("fecha_fin");
            int vsTransporte = Integer.parseInt(request.getParameter("destino"));
            int vsDestino = Integer.parseInt(request.getParameter("transporte"));
            
            out.print(vsNombre + " " + vsIni + " " + vsFin);
            
            clControlViaje cv = new clControlViaje();
            String vsInsertar = cv.funCreacionViaje(vsNombre, vsIni, vsFin, vsTransporte, vsDestino);
        
        %>
        
    </body>
</html>
