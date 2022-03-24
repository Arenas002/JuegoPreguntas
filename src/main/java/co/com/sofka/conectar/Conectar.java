package co.com.sofka.conectar;

/**
 *
 * @author <cdarenas02@gmail.com>
 */

import co.com.sofka.clases.Preguntas;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
public class Conectar {
    //crean variables staticas 
    public static final String url="jdbc:mysql://localhost:3306/pregunta";
    public static final String user ="root";
    public static final String  pass="admin";
    
    //crear funcion para conectar bc
    public Connection getConnection(){
        Connection con = null;
        try{
            con = (Connection) DriverManager.getConnection(url, user ,pass);
        }catch(Exception e){
            System.out.println("Error: " + e.getMessage());
        }
        return con;
    }
    
    
    
}
