package co.com.sofka.clases;

import co.com.sofka.conectar.Conectar;
import java.sql.Connection;
import java.util.Scanner;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Jugador {

    private String nombre;
    private int cedula;
    public Jugador ListaJugador[];

    public Jugador() {

    }

    public Jugador(String nombre, int cedula) {
        this.nombre = nombre;
        this.cedula = cedula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public int addJugador() {

        Scanner sc = new Scanner(System.in);

        System.out.println("Ingrese el nombre del jugador: ");
        setNombre(sc.nextLine()); 
        System.out.println("Ingrese la cedula: ");
        setCedula(sc.nextInt()); 
        sc.nextLine();
        System.out.println("Desea empezar a jugar? escribe si ó No");
        String respuesta = sc.nextLine();

        if ("si".equals(respuesta)) {
            return 1;
        }
        return 0;
    }

    public int insertPlayer(Jugador jugador) {
        Connection con = null;
        PreparedStatement playerQuery = null;
        Conectar conecta = new Conectar();
        int rows = 0;

        con = conecta.getConnection();
        try {
            playerQuery = con.prepareStatement("INSERT INTO player(id,name) VALUES(?,?);");
            playerQuery.setInt(1, getCedula());
            playerQuery.setString(2,getNombre());

            
            rows = playerQuery.executeUpdate();
           

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return rows;
    }

    

}
