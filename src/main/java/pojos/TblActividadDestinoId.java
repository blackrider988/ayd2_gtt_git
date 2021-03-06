package pojos;
// Generated 10-abr-2016 21:48:05 by Hibernate Tools 4.3.1



/**
 * TblActividadDestinoId generated by hbm2java
 */
public class TblActividadDestinoId  implements java.io.Serializable {


     private int idActividad;
     private int idDestino;

    public TblActividadDestinoId() {
    }

    public TblActividadDestinoId(int idActividad, int idDestino) {
       this.idActividad = idActividad;
       this.idDestino = idDestino;
    }
   
    public int getIdActividad() {
        return this.idActividad;
    }
    
    public void setIdActividad(int idActividad) {
        this.idActividad = idActividad;
    }
    public int getIdDestino() {
        return this.idDestino;
    }
    
    public void setIdDestino(int idDestino) {
        this.idDestino = idDestino;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof TblActividadDestinoId) ) return false;
		 TblActividadDestinoId castOther = ( TblActividadDestinoId ) other; 
         
		 return (this.getIdActividad()==castOther.getIdActividad())
 && (this.getIdDestino()==castOther.getIdDestino());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getIdActividad();
         result = 37 * result + this.getIdDestino();
         return result;
   }   


}


