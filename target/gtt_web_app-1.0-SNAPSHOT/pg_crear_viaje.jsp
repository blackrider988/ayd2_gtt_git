<%-- 
    Document   : pg_crear_viaje
    Created on : 11-abr-2016, 8:37:31
    Author     : mario
--%>

<%@page import="interaccion.clControlTransporte"%>
<%@page import="interaccion.clControlDestino"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear viaje</title>
    </head>
    <body>
        <div id='cssmenu'>
        <ul>
           <li class='active'><a href='#'><span>Home</span></a></li>
           <li><a href='#'><span>Historial</span></a></li>
           <li><a href='pg_catalogo_viajes.jsp'><span>Viajes</span></a></li>
           <li><a href='ver_roles.jsp'><span>Rol</span></a></li>
           <li><a href='#'><span>Acerca de</span></a></li>
        </ul>
        </div>
        <h1>Crear nuevo viaje</h1>
        
        <%
            clControlDestino cd = new clControlDestino();
            String opcionesDestino = cd.funObtenerDestino();
            
            clControlTransporte ct = new clControlTransporte();
            String opcionesTransporte = ct.funObtenerTransporte();
        %>
        
        <form class="login-container" action="pg_viaje_creado.jsp" method="GET">
            <p>Nombre: <input type="text" placeholder="Nombre viaje" name="nombre_viaje"></p>
            <p>Fecha inicio: <input type="text" placeholder="Fecha inicio" name="fecha_ini"></p>
            <p>Fecha final:  <input type="text" placeholder="Fecha final" name="fecha_fin"></p>
            
            <p>Destino: 
            <select name="destino">
                <% 
                    out.print(opcionesDestino);
                %>
            </select></p>
            <p>Transporte:
            <select name="transporte">
                <% 
                    out.print(opcionesTransporte);
                %>
            </select> </p>
            
            
            <p><input type="submit" value="Crear Viaje"></p>
        </form>
        
        
        
    </body>
</html>
