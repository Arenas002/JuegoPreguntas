package co.com.sofka.clases;

/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Opcion {
    private String descripcion;
    private boolean isTrue;

  

    public Opcion(){
        
    }
    public Opcion(String descripcion, boolean isTrue) {
        this.descripcion = descripcion;
        this.isTrue = isTrue;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean getIsTrue() {
        return isTrue;
    }

    public void setIsTrue(boolean isTrue) {
        this.isTrue = isTrue;
    }
    
    
}
