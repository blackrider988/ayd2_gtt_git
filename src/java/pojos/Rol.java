package pojos;
// Generated 04-mar-2016 23:09:34 by Hibernate Tools 4.3.1



/**
 * Rol generated by hbm2java
 */
public class Rol  implements java.io.Serializable {


     private Integer idRol;
     private String nombreRol;
     private String descripcionRol;

    public Rol() {
    }

    public Rol(String nombreRol, String descripcionRol) {
       this.nombreRol = nombreRol;
       this.descripcionRol = descripcionRol;
    }
   
    public Integer getIdRol() {
        return this.idRol;
    }
    
    public void setIdRol(Integer idRol) {
        this.idRol = idRol;
    }
    public String getNombreRol() {
        return this.nombreRol;
    }
    
    public void setNombreRol(String nombreRol) {
        this.nombreRol = nombreRol;
    }
    public String getDescripcionRol() {
        return this.descripcionRol;
    }
    
    public void setDescripcionRol(String descripcionRol) {
        this.descripcionRol = descripcionRol;
    }




}


