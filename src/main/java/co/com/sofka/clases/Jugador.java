
package co.com.sofka.clases;

/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Jugador {
    private String nombre;
    private String cedula;

    public Jugador(String nombre, String cedula) {
        this.nombre = nombre;
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }
    
    
}
