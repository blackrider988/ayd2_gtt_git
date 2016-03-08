package interaccion;

import pojos.Usuario;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Query;
import java.util.List;
import java.util.ArrayList;


public class clControlUsuario {
    
    public String funAutenticacion(String parNombre, String parContrasenia){
        List<Usuario> vl_lista = new ArrayList<Usuario>();
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        Query q = sesion.createQuery("from Usuario usr \n" + 
                                    "where usr.contrasenia = '"+ parContrasenia+"' \n" +
                                    "and usr.nombreUsuario = '" + parNombre +"'");
        
       vl_lista = (List<Usuario>) q.list();
       
       if(vl_lista.size() > 0 && vl_lista.size() < 2){
           String vsNombreCompleto = vl_lista.get(0).getPrimerNombre() + " " + vl_lista.get(0).getPrimerApellido();
           return vsNombreCompleto;
       }else{
           return "Error";
       }
       
    }
    
    public String funCreacionUsuario(String parNombre, String parPass, String parPrimNombre, 
            String parPrimApellido, String parCorreo){
        
            SessionFactory sf = HibernateUtil.getSessionFactory();        
            Session sesion = sf.openSession();
            Transaction tx;
            
            tx = sesion.beginTransaction();
        
            Usuario u = new Usuario();
            u.setNombreUsuario(parNombre);
            u.setContrasenia(parPass);
            u.setPrimerNombre(parPrimNombre);
            u.setPrimerApellido(parPrimApellido);
            u.setCorreoElectronico(parCorreo);
            
            sesion.save(u);
            tx.commit();
        
        
        return "creado";
    }
    
}
