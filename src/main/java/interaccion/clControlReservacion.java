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
import org.hibernate.Transaction;
import pojos.TblReservacion;
import pojos.TblUsuario;
import pojos.TblViaje;

/**
 *
 * @author mario
 */
public class clControlReservacion {
    
    public String funCrearReservacion(int parIdUsr, int parIdViaje){
        String msj="";
        
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        Transaction tx;
            
        tx = sesion.beginTransaction();
        
        TblUsuario u = new TblUsuario();
        TblViaje v = new TblViaje();
        
        u = (TblUsuario) sesion.get(TblUsuario.class, parIdUsr);
        v = (TblViaje) sesion.get(TblViaje.class, parIdViaje);
        
        TblReservacion r = new TblReservacion();
        r.setTblUsuario(u);
        r.setTblViaje(v);
        r.setCancelado(0);
        
        sesion.save(r);
            
        tx.commit();
        
        return "reservado";    
    }
    
    
    public String funObtenerReservaciones(int parIdusr){
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        
        Query q = sesion.createQuery("select viaje.nombreViaje, destino.nombreDestino, concat(Year(viaje.fechaInicio),'-', Month(viaje.fechaInicio),'-',Day(viaje.fechaInicio)),\n" +
                                    "concat(Year(viaje.fechaFin),'-', Month(viaje.fechaFin),'-',Day(viaje.fechaFin))\n" +
                                    "from TblReservacion reservacion\n" +
                                    "inner join reservacion.tblViaje viaje\n" +
                                    "inner join viaje.tblDestino destino\n" +
                                    "inner join reservacion.tblUsuario usuario\n" +
                                    "where usuario.idUsuario = "+parIdusr+"");
        
        
        
        Iterator it = q.list().iterator();
        String salida = "";        
        
        while (it.hasNext() ) {
            Object[] tuple = (Object[]) it.next();
            String nombre_viaje = (String) tuple[0];
            String nombre_destino = (String) tuple[1];
            String fecha_ini = (String) tuple[2];
            String fecha_fin = (String) tuple[3];
            
            salida = salida + "<tr>" + 
                    "<td>" + nombre_viaje + "</td>" +
                    "<td>" + nombre_destino + "</td>" +
                    "<td>" + fecha_ini + "</td>" +
                    "<td>" + fecha_fin + "</td>" +
                    "</tr>";
            
        }
        
        if(salida.equals("")){
            return "vacio";
        }else{
            return salida;
        }
    }
    
}
