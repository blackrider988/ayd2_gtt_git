/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interaccion;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import pojos.Viaje;

/**
 *
 * @author mario
 */
public class clControlViaje {
    
    public List<Viaje> funObtenerViajes(){
        List<Viaje> vllista = new ArrayList<Viaje>();
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        
        Query q = sesion.createQuery("from Viaje");
        
        vllista = (List<Viaje>) q.list();
        
        return vllista;
    }
    
}
