<%-- 
    Document   : home
    Created on : 4/02/2016, 10:00:36 AM
    Author     : mario
--%>

<%@page import="interaccion.clControlReservacion"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojos.TblUsuario"%>
<%@page import="interaccion.clControlUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even){background-color: #f2f2f2}
        </style>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - GTT</title>
    </head>
    <body>
        <div id='cssmenu'>
        <ul>
           <li class='active'><a href='#'><span>Home</span></a></li>
           <li><a href='#'><span>Historial</span></a></li>
           <li><a href='pg_catalogo_viajes.jsp'><span>Viajes</span></a></li>
           <li><a href='pg_catalogo_roles.jsp'><span>Rol</span></a></li>
           <li><a href='#'><span>Acerca de</span></a></li>
           <li class='last'><a href='pg_detalle_cliente.jsp'><span>Clientes</span></a></li>
        </ul>
        </div>
        
        <%
            String vsNombre = request.getParameter("usr_name");
            String vsContr = request.getParameter("usr_pass");
            
            clControlUsuario cu = new clControlUsuario();
            List<TblUsuario> vl_lista = new ArrayList<TblUsuario>();
            vl_lista = cu.funAutenticacion(vsNombre, vsContr);
            
            
            if(vl_lista.size() == 1){
                out.print("<h4> Autenticación Exitosa! </h4>" +
                        "<h4> Bienvenido: " + vl_lista.get(0).getPrimerNombre() +"</h4>");
            }else{
                out.print("<h4> ERROR en la autenticación</h4>");
            }
            
            session.setAttribute("atrUsr",vl_lista.get(0).getNombreUsuario() );
            session.setAttribute("atrIdusr",vl_lista.get(0).getIdUsuario() );

            clControlReservacion cr = new clControlReservacion();
            String resultado = cr.funObtenerReservaciones(vl_lista.get(0).getIdUsuario());
            
            if(resultado.equals("vacio")){
                out.print("No tiene reservaciones");
            }else{
                out.print("<table>" + 
                            "<tr>"+
                                "<th> Viaje </th>" +
                                "<th> Destino </th>" +
                                "<th> FechaInicio </th>" +
                                "<th> FechaFin </th>" +
                            "</tr>" +
                        resultado +
                        "</table>");
            }

        %>
        
        
        
    </body>
</html>
