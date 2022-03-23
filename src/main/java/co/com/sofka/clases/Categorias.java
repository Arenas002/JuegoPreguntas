package co.com.sofka.clases;

/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Categorias {
    private String nombre;
    private int dificultad;

    public Categorias(String nombre, int dificultad) {
        this.nombre = nombre;
        this.dificultad = dificultad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDificultad() {
        return dificultad;
    }

    public void setDificultad(int dificultad) {
        this.dificultad = dificultad;
    }
    
    
}
