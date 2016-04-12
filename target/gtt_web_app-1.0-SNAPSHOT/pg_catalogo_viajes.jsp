<%-- 
    Document   : pg_catalogo_viajes
    Created on : 08-abr-2016, 20:47:21
    Author     : mario
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojos.TblViaje"%>
<%@page import="interaccion.clControlViaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Viajes</title>
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
            clControlViaje cr = new clControlViaje();
            
            List<TblViaje> vl_lista = new ArrayList<TblViaje>();
                        
            vl_lista = cr.funObtenerViajes();
        %>
        
        
        <table border = 1 style="width:100%">
            <tr>
              <td>Nombre</td> 
              <td>Fecha Inicio</td>
              <td>Fecha Fin</td>
              <td>Detalle</td>
            </tr>
            
            <%
            
                for (int i = 0;i<vl_lista.size();i=i+1){
                out.print("<tr>"+
                    "<td>" + vl_lista.get(i).getNombreViaje() +"</td>" +  
                    "<td>" + vl_lista.get(i).getFechaInicio() + "</td>" +
                    "<td>" + vl_lista.get(i).getFechaFin() + "</td>" +
                    "<td>" +
                        "<form name=\"f2\" action=\"pg_detalle_viaje.jsp\">" +
                        "<button name=\"detalle\" value=\""+ vl_lista.get(i).getIdViaje() +"\" type=\"submit\">Ver</button>"
                        + "</form>"
                        
                        + "</td>" +
                        
                    "</tr>"  
                      );
            }

            %>
        </table>
        
    </body>
</html>
