package interaccion;

import pojos.TblUsuario;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Query;
import java.util.List;
import java.util.ArrayList;
import java.util.Iterator;
import pojos.TblRol;


public class clControlUsuario {
    
    public List<TblUsuario> funAutenticacion(String parNombre, String parContrasenia){
        List<TblUsuario> vl_lista = new ArrayList<TblUsuario>();
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        Query q = sesion.createQuery("from TblUsuario usr \n" + 
                                    "where usr.contrasenia = '"+ parContrasenia+"' \n" +
                                    "and usr.nombreUsuario = '" + parNombre +"'");
        
       vl_lista = (List<TblUsuario>) q.list();
       
       return vl_lista;
       
    }
    
    public String funCreacionUsuario(String parNombre, String parPass, String parPrimNombre, 
            String parPrimApellido, String parCorreo){
        
            SessionFactory sf = HibernateUtil.getSessionFactory();        
            Session sesion = sf.openSession();
            Transaction tx;
            
            tx = sesion.beginTransaction();
        
            TblRol r = new TblRol();
        
            r = (TblRol) sesion.get(TblRol.class, 3);
            
            TblUsuario u = new TblUsuario();
            u.setNombreUsuario(parNombre);
            u.setContrasenia(parPass);
            u.setPrimerNombre(parPrimNombre);
            u.setPrimerApellido(parPrimApellido);
            u.setCorreoElectronico(parCorreo);
            u.setTblRol(r);
            
            
            sesion.save(u);
            tx.commit();
        
        
        return "creado";
    }
    
    public String funObtenerUsuarios(){
        List<TblUsuario> vl_lista = new ArrayList<TblUsuario>();
        SessionFactory sf = HibernateUtil.getSessionFactory();        
        Session sesion = sf.openSession();
        Query q = sesion.createQuery("select usuario.idUsuario, usuario.nombreUsuario, usuario.primerNombre, usuario.primerApellido, usuario.correoElectronico, rol.nombreRol\n" +
                                    "from TblUsuario usuario\n" +
                                    "inner join usuario.tblRol rol \n" +
                                    "where usuario.idUsuario > 1");
        
       Iterator it = q.list().iterator();
       
       String salida = "";
       
       while (it.hasNext() ) {
            Object[] tuple = (Object[]) it.next();
            String id_usuario = (String) tuple[1];
            String nombre_usuario = (String) tuple[1];
            String primer_nombre = (String) tuple[2];
            String primer_apellido = (String) tuple[3];
            String correo = (String) tuple[4];
            String rol = (String) tuple[5];
            
            salida = salida + "<tr>"+
                    "<td>" + nombre_usuario + "</td>" +
                    "<td>" + primer_nombre + "</td>" +
                    "<td>" + primer_apellido + "</td>" +
                    "<td>" + correo + "</td>" +
                    "<td>" + rol + "</td>" +
                    "</tr>";
        }
       
       
       return salida;
    }
    
}

