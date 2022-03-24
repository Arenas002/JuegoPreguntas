package co.com.sofka.clases;

/**
 *
 * @author cris-
 */
public class Opcion {
    private String descripcion;
    private boolean isCorrect;

  

    public Opcion(){
        
    }
    public Opcion(String descripcion, boolean isCorrect) {
        this.descripcion = descripcion;
        this.isCorrect = isCorrect;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isIsCorrect() {
        return isCorrect;
    }

    public void setIsCorrect(boolean isCorrect) {
        this.isCorrect = isCorrect;
    }
    
    
}
