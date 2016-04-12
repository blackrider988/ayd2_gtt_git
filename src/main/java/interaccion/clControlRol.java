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
import pojos.TblRol;

/**
 *
 * @author mario
 */
public class clControlRol {
    
    public List<TblRol> funListaRoles(){
        List<TblRol> vl_lista = new ArrayList<TblRol>();
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        
        Query q = sesion.createQuery("from TblRol");
        
        vl_lista = (List<TblRol>) q.list();
        
        return vl_lista;
    }
    

    public int funObtenerRol(){
        int rol = 0;
        
        return rol;
    }
    
}
