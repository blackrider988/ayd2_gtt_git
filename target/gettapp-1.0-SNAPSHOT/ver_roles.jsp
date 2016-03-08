<%-- 
    Document   : ver_reservaciones
    Created on : 05-mar-2016, 0:31:43
    Author     : mario
--%>

<%@page import="pojos.Rol"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="interaccion.clControlRol"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Reservaciones</h1>
        
        <%
            clControlRol cr = new clControlRol();
            List<Rol> vl_lista = new ArrayList<Rol>();
            
            vl_lista = cr.funObtenerRoles();
            
            int tam = vl_lista.size();
            
        %>
            <table border = 1 style="width:100%">
            <tr>
              <td>Id</td>
              <td>Nombre</td> 
              <td>Descripcion</td>
            </tr>
            <%
            
                for (int i = 0;i<vl_lista.size();i=i+1){
                out.print("<tr>"+
                    "<td>" + vl_lista.get(i).getIdRol() + "</td>" +
                    "<td>" + vl_lista.get(i).getNombreRol() +"</td>" +  
                    "<td>" + vl_lista.get(i).getDescripcionRol() + "</td>" +
                    "</tr>"  
                      );
            }

        %>
        </table>
        
    </body>
</html>
