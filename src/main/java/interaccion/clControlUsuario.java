package interaccion;

/*
import pojos.Usuario;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Query;
import java.util.List;
import java.util.ArrayList;
*/

public class clControlUsuario {
    
    public String funAutenticacion(String parNombre, String parContrasenia){
        //comentario
        if(parNombre.equalsIgnoreCase("mario"))
        {
            return "Mario Asencio";
        }
        else
        {
            return "Error";
        }
        
        
        
//        List<Usuario> vl_lista = new ArrayList<Usuario>();
//        SessionFactory sf = HibernateUtil.getSessionFactory();        
//        Session sesion = sf.openSession();
//        Query q = sesion.createQuery("from Usuario usr \n" + 
//                                    "where usr.contrasenia = '"+ parContrasenia+"' \n" +
//                                    "and usr.nombreUsuario = '" + parNombre +"'");
//        
//       vl_lista = (List<Usuario>) q.list();
//       
//       if(vl_lista.size() > 0 && vl_lista.size() < 2){
//           String vsNombreCompleto = vl_lista.get(0).getPrimerNombre() + " " + vl_lista.get(0).getPrimerApellido();
//           return vsNombreCompleto;
//       }else{
//           return "Error";
//       }  
    }
    
}
