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
import pojos.TblImagen;
import pojos.TblViaje;

/**
 *
 * @author mario
 */
public class clControlDetalleViaje {
    
    //buscar las imagenes
    public List<String> funObtenerImagenes(int idviaje){
        int cantidad = 0;
        List<TblImagen> vl_lista = new ArrayList<TblImagen>();
        List<String> lista_imagenes = new ArrayList<String>();
        
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        Query q = sesion.createQuery("from TblImagen");
        
        vl_lista = (List<TblImagen>) q.list();
        
        for(int i=0;i<vl_lista.size();i++){
            if( idviaje == vl_lista.get(i).getTblViaje().getIdViaje()){
                lista_imagenes.add(vl_lista.get(i).getNombreImagen());
            }
        }
        
        return lista_imagenes;
    }
    
    public String funDetalleViaje(int idviaje){
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        List<TblViaje> vl_lista = new ArrayList<TblViaje>();
        
        Query q = sesion.createQuery("select viaje.idViaje, viaje.nombreViaje, \n" +
                                    "destino.nombreDestino , destino.descripcionDestino, \n" +
                                    "transporte.nombreTransporte, transporte.descripcionTransporte\n" +
                                    "from TblViaje viaje\n" +
                                    "inner join viaje.tblDestino destino\n" +
                                    "inner join viaje.tblTransporte transporte\n" +
                                    "where viaje.idViaje = "+idviaje+"");
        
        Query q_fechas = sesion.createQuery("from TblViaje viaje\n" +
                                            "where viaje.idViaje = "+idviaje+"");
        
        vl_lista = (List<TblViaje>) q_fechas.list();
        
        Iterator it = q.list().iterator();
        String salida = "";
        String taga = "<h5>";
        String tagc = "</h5>";
        
        
        while (it.hasNext() ) {
            Object[] tuple = (Object[]) it.next();
            String nombre_viaje = (String) tuple[1];
            String nombre_destino = (String) tuple[2];
            String detalle_destino = (String) tuple[3];
            String nombre_transporte = (String) tuple[4];
            String detalle_transporte = (String) tuple[5];
            
            
            salida = salida + taga + "Nombre: " + nombre_viaje + tagc +
            taga + "Detino: " + nombre_destino + tagc + "\n" + 
            taga + "Detalle destino: " + detalle_destino + tagc + "\n" +
            taga + "Trasporte: " + nombre_transporte + tagc + "\n" + 
            taga + "Detalle transporte: " + detalle_transporte + tagc + "\n";
        }
        
        salida = salida + taga + "Salida: " + vl_lista.get(0).getFechaInicio() + tagc + "\n" +
        taga + "Retorno: " + vl_lista.get(0).getFechaFin() + tagc; 
        
        
        return salida;
    }
    
    
}
