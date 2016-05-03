<%-- 
    Document   : pg_detalle_viaje
    Created on : 08-abr-2016, 23:10:19
    Author     : mario
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="interaccion.clControlDetalleViaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id='cssmenu'>
        <ul>
           <li class='active'><a href='#'><span>Home</span></a></li>
           <li><a href='ver_viajes.jsp'><span>Reservaciones</span></a></li>
           <li><a href='#'><span>Historial</span></a></li>
           <li><a href='pg_catalogo_viajes.jsp'><span>Viajes</span></a></li>
           <li><a href='ver_roles.jsp'><span>Rol</span></a></li>
           <li><a href='#'><span>Acerca de</span></a></li>
           <li class='last'><a href='#'><span>Contacto</span></a></li>
        </ul>
        </div>
        
        <%
            String vsNombre = request.getParameter("detalle");
            int id_viaje = Integer.parseInt(vsNombre);
            
            clControlDetalleViaje cl = new clControlDetalleViaje();
            
            List<String> lista_imagenes = new ArrayList<String>();
            lista_imagenes = cl.funObtenerImagenes(id_viaje);
            
            for(int i = 0;i<lista_imagenes.size();i++){
                out.print("<img src=\"imgs/" + lista_imagenes.get(i) + "\" alt=\"" + lista_imagenes.get(i) + "\" height=\"400\" width=\"400\">");
                
            }
        %>
        
        <h3>Detalle viaje</h3>
        <%
            String detalle = cl.funDetalleViaje(id_viaje);
            out.print(detalle);
        %>
        
        
        
    </body>
</html>
