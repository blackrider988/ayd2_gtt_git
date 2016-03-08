<%-- 
    Document   : ver_viajes
    Created on : 05-mar-2016, 6:35:14
    Author     : mario
--%>

<%@page import="pojos.Viaje"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="interaccion.clControlViaje"%>
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
            clControlViaje cr = new clControlViaje();
            List<Viaje> vl_lista = new ArrayList<Viaje>();
            
            vl_lista = cr.funObtenerViajes();
            
            int tam = vl_lista.size();
            
        %>
            <table border = 1 style="width:100%">
            <tr>
              <td>Nombre</td> 
              <td>Descripcion</td>
            </tr>
            <%
            
                for (int i = 0;i<vl_lista.size();i=i+1){
                out.print("<tr>"+
                    "<td>" + vl_lista.get(i).getNombreViaje() +"</td>" +  
                    "<td>" + vl_lista.get(i).getDescripcionViaje() + "</td>" +
                    "</tr>"  
                      );
            }

        %>
        </table>
        
    </body>
</html>
