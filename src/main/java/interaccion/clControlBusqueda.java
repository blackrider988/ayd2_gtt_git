/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interaccion;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import pojos.TblUsuario;
import pojos.TblViaje;

/**
 *
 * @author mario
 */
public class clControlBusqueda {
    
    
    public String funBusqueda(String texto_busqueda){
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        Query q = sesion.createQuery("select viaje.idViaje, viaje.nombreViaje, destino.nombreDestino from TblViaje viaje\n" +
                                    "inner join viaje.tblDestino destino\n" +
                                    "where upper(viaje.nombreViaje) like '%" + texto_busqueda + "%'\n" +
                                    "or upper(destino.nombreDestino) like '%" + texto_busqueda + "%'");
        
        String tabla="";
        Iterator it = q.list().iterator();
        
        while (it.hasNext() ) {
            Object[] tuple = (Object[]) it.next();
            int id_viaje = (int) tuple[0];
            String nombre_viaje = (String) tuple[1];
            String nombre_destino = (String) tuple[2];
            
            tabla = tabla + "<tr>"+
                    "<td>" + nombre_viaje +"</td>" +  
                    "<td>" + nombre_destino + "</td>" +
                    "<td>" + "<form name=\"f2\" action=\"pg_detalle_viaje.jsp\">" +
                        "<button name=\"detalle\" value=\""+ id_viaje +"\" type=\"submit\">Ver</button>"
                        + "</form>"+"</td>"+"</tr>";
        }
        
        return tabla;
       
    }
    
}
