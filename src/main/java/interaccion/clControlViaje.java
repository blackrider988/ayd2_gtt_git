/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interaccion;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import pojos.TblDestino;
import pojos.TblTransporte;
import pojos.TblViaje;

/**
 *
 * @author mario
 */
public class clControlViaje {
    
    public List<TblViaje> funObtenerViajes(){
        List<TblViaje> vl_lista = new ArrayList<TblViaje>();
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        
        Query q = sesion.createQuery("from TblViaje");
        
        vl_lista = (List<TblViaje>) q.list();
        
        return vl_lista;
    }
    
    public String funCreacionViaje(String parNombre, String parInicio, String parFin, 
            int parTransporte, int parDestino) throws ParseException{
        
            DateFormat formato = new SimpleDateFormat("yyyy-mm-dd", Locale.ENGLISH);
            Date fechaInicio = formato.parse(parInicio);
            Date fechaFinal = formato.parse(parFin);
        
            SessionFactory sf = HibernateUtil.getSessionFactory();        
            Session sesion = sf.openSession();
            Transaction tx;
            
            tx = sesion.beginTransaction();
        
            TblDestino d = new TblDestino();
            TblTransporte t = new TblTransporte();
            
            d = (TblDestino) sesion.get(TblDestino.class, parDestino);
            t = (TblTransporte) sesion.get(TblTransporte.class, parTransporte);
            
            TblViaje v = new TblViaje();
            v.setNombreViaje(parNombre);
            v.setFechaInicio(fechaInicio);
            v.setFechaFin(fechaFinal);
            v.setTblTransporte(t);
            v.setTblDestino(d);
            sesion.save(v);
            
            tx.commit();
        
        
        return "creado";
    }
    
    
}
