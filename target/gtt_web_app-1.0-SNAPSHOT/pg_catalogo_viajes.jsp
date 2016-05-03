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
        <title>Viajes</title>
    </head>
    <body>
        <div id='cssmenu'>
        <ul>
           <li class='active'><a href='#'><span>Home</span></a></li>
           <li><a href='#'><span>Historial</span></a></li>
           <li><a href='pg_catalogo_viajes.jsp'><span>Viajes</span></a></li>
           <li><a href='ver_roles.jsp'><span>Rol</span></a></li>
           <li><a href='#'><span>Clientes</span></a></li>
        </ul>
        </div>
        
        <h2>Busqueda personalizada</h2>
        
        <form class="login-container" action="pg_busqueda.jsp" method="GET">
            <p>Buesqueda: <input type="text" placeholder="Buscar vuaje" name="busqueda_viaje"></p>
            <p><input type="submit" value="Buscar"></p>
        </form>
        
        
        <%
            clControlViaje cr = new clControlViaje();
            
            List<TblViaje> vl_lista = new ArrayList<TblViaje>();
                        
            vl_lista = cr.funObtenerViajes();
        %>
        
        
        <table>
            <tr>
              <th>Nombre</td> 
              <th>Fecha Inicio</td>
              <th>Fecha Fin</td>
              <th>Detalle</td>
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
        
        
        <h2>Crear viaje</h2>
        <a href="pg_crear_viaje.jsp">Crear un viaje</a>
        
    </body>
</html>
