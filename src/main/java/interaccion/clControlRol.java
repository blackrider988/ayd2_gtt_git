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
import pojos.Rol;

/**
 *
 * @author mario
 */
public class clControlRol {
    
    public List<Rol> funObtenerRoles(){
        List<Rol> vllista = new ArrayList<Rol>();
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        
        Query q = sesion.createQuery("from Rol");
        
        vllista = (List<Rol>) q.list();
        
        return vllista;
    }
    
    
}
