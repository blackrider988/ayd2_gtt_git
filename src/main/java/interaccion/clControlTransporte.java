/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interaccion;

import java.util.Iterator;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author mario
 */
public class clControlTransporte {
    
    public String funObtenerTransporte(){
        String opciones="";
        
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        
        Query q = sesion.createQuery("select transporte.idTransporte, transporte.nombreTransporte\n" +
                                    "from TblTransporte transporte\n" +
                                    "order by transporte.nombreTransporte");
        
        Iterator it = q.list().iterator();
        
        
        while (it.hasNext() ) {
            Object[] tuple = (Object[]) it.next();
            int id_transporte = (int) tuple[0];
            String nombre_transporte = (String) tuple[1];

            opciones = opciones + "<option value= '" + id_transporte + "'>" + nombre_transporte + "</option>";
        }
        
        return opciones;
    }
    
}
