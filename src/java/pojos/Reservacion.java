package pojos;
// Generated 04-mar-2016 23:09:34 by Hibernate Tools 4.3.1



/**
 * Reservacion generated by hbm2java
 */
public class Reservacion  implements java.io.Serializable {


     private Integer idReservacion;
     private Viaje viaje;
     private String descripcionReservacion;

    public Reservacion() {
    }

	
    public Reservacion(Viaje viaje) {
        this.viaje = viaje;
    }
    public Reservacion(Viaje viaje, String descripcionReservacion) {
       this.viaje = viaje;
       this.descripcionReservacion = descripcionReservacion;
    }
   
    public Integer getIdReservacion() {
        return this.idReservacion;
    }
    
    public void setIdReservacion(Integer idReservacion) {
        this.idReservacion = idReservacion;
    }
    public Viaje getViaje() {
        return this.viaje;
    }
    
    public void setViaje(Viaje viaje) {
        this.viaje = viaje;
    }
    public String getDescripcionReservacion() {
        return this.descripcionReservacion;
    }
    
    public void setDescripcionReservacion(String descripcionReservacion) {
        this.descripcionReservacion = descripcionReservacion;
    }




}


