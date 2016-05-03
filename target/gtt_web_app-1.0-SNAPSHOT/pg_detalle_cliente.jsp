<%-- 
    Document   : pg_detalle_cliente
    Created on : 02-may-2016, 22:22:22
    Author     : mario
--%>

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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Detalle Clientes</h1>
        
        <%
            clControlUsuario cu = new clControlUsuario();
            String lista = cu.funObtenerUsuarios();
        
        %>
        
        <table>
            <tr>
                <th>Nombre</th>
                <th>Primer Nombre</th>
                <th>Primer Apellido</th>
                <th>Correo</th>
                <th>Rol</th>                
            </tr>
            
            <%
                out.print(lista);
            %>
            
        </table>
        
        
    </body>
</html>
