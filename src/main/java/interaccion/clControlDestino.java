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
public class clControlDestino {
    
    
    
    public String funObtenerDestino(){
        String opciones="";
        
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        
        Query q = sesion.createQuery("select destino.idDestino, destino.nombreDestino \n" +
                                    "from TblDestino destino \n" +
                                    "order by destino.nombreDestino");
        
        Iterator it = q.list().iterator();
        
        
        while (it.hasNext() ) {
            Object[] tuple = (Object[]) it.next();
            int id_destino = (int) tuple[0];
            String nombre_destino = (String) tuple[1];

            opciones = opciones + "<option value= '" + id_destino + "'>" + nombre_destino + "</option>";
        }
        
        return opciones;
    }
    
}
