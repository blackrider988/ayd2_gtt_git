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
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Busqueda</title>
    </head>
    <body>
        <h1>Resultados Busqueda</h1>
        
        
        <%
            String vsBusqueda = request.getParameter("busqueda_viaje");
            
            clControlBusqueda cb = new clControlBusqueda();
            
            String tabla="";
            tabla = cb.funBusqueda(vsBusqueda);


        %>
        
        <table border = 1 style="width:100%">
            <tr>
              <td>Nombre Viaje</td> 
              <td>Destino</td>
              <td>Detalle</td>
            </tr>
            <% 
                out.print(tabla);
            %>
        </table>
        
        
    </body>
</html>
