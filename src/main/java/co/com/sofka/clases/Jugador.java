package co.com.sofka.clases;

import java.util.Scanner;

/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Jugador {

    private String nombre;
    private String cedula;
    public Jugador ListaJugador[];
    
    public Jugador(){
        
    }

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

    public int addJugador() {

        Scanner sc = new Scanner(System.in);
        System.out.println("Ingrese el nombre del jugador: ");
        String nombre = sc.nextLine();

        System.out.println("Ingrese la cedula: ");
        String cedula = sc.nextLine();

        System.out.println("Desea empezar a jugar? escribe si ó No");
        String respuesta = sc.nextLine();

        if ("si".equals(respuesta)) {

            return 1;
        }
        return 0;

    }
}
