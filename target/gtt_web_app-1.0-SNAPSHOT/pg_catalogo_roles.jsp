<%-- 
    Document   : ver_reservaciones
    Created on : 05-mar-2016, 0:31:43
    Author     : mario
--%>

<%@page import="pojos.TblRol"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="interaccion.clControlRol"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Roles</title>
    </head>
    <body>
        <h1>Roles de usuario</h1>
        
        <%
            clControlRol cr = new clControlRol();
            List<TblRol> vl_lista = new ArrayList<TblRol>();
            
            vl_lista = cr.funListaRoles();
            
            int tam = vl_lista.size();
            
        %>
            <table border = 1 style="width:100%">
            <tr>
              <td>Id</td>
              <td>Nombre</td> 
              <td>Descripcion</td>
              <td>Editar</td>
            </tr>
            <%
            
                for (int i = 0;i<vl_lista.size();i=i+1){
                out.print("<tr>"+
                    "<td>" + vl_lista.get(i).getIdRol() + "</td>" +
                    "<td>" + vl_lista.get(i).getNombreRol() +"</td>" +  
                    "<td>" + vl_lista.get(i).getDescripcionRol() + "</td>" +
                    "<td>" +
                        "<form name=\"f2\" action=\"pg_editar_rol.jsp\">" +
                            "<button name=\"detalle\" value=\""+ vl_lista.get(i).getIdRol() +"\" type=\"submit\">Editar</button>" + 
                        "</form>" + "</td>" +
                        
                    "</tr>"  
                      );
            }

        %>
        </table>
        
        
        <h3>Crear un nuevo Rol</h3>
        
        <p><a href="pg_crear_rol.jsp">Crear un nuevo Rol</a></p>
        
    </body>
</html>
