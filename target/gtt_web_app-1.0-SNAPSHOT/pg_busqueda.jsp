<%-- 
    Document   : pg_busqueda
    Created on : 01-may-2016, 23:22:29
    Author     : mario
--%>

<%@page import="interaccion.clControlBusqueda"%>
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
        <title>Busqueda</title>
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
        
        <h1>Resultados Busqueda</h1>
        
        
        <%
            String vsBusqueda = request.getParameter("busqueda_viaje");
            
            clControlBusqueda cb = new clControlBusqueda();
            
            String tabla="";
            tabla = cb.funBusqueda(vsBusqueda);


        %>
        
        <table >
            <tr>
              <th>Nombre Viaje</th> 
              <th>Destino</th>
              <th>Detalle</th>
            </tr>
            <% 
                out.print(tabla);
            %>
        </table>
        
        
    </body>
</html>
