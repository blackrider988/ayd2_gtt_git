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
import pojos.TblImagen;

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
                //System.out.println("si es igual " + vl_lista.get(i).getNombreImagen());
                lista_imagenes.add(vl_lista.get(i).getNombreImagen());
            }
        }
        
        return lista_imagenes;
    }
    
    
}
