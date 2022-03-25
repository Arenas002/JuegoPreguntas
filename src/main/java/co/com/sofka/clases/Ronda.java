package co.com.sofka.clases;

import co.com.sofka.conectar.Conectar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Ronda {
    private int ronda;
    private int premioId;
    
    
    public Ronda(){
        
    }

    public Ronda(int ronda,int premioId) {
        this.ronda = ronda;
        this.premioId = premioId;
    }

    public int getRonda() {
        return ronda;
    }

    public void setRonda(int numeroRonda) {
        this.ronda = numeroRonda;
    }

    public int getPremioId() {
        return premioId;
    }

    public void setPremioId(int premioId) {
        this.premioId = premioId;
    }
    
    
    
    
    public List<Ronda> getRoundList(){
        List<Ronda> ronda = new ArrayList<>();
        Conectar conecta = new Conectar();
        Connection con = conecta.getConnection();
        
        try {
            PreparedStatement rondaQuery = con.prepareStatement("SELECT round,premioId FROM round;");
            
            ResultSet rondaResponse = rondaQuery.executeQuery();
            while (rondaResponse.next()) {
                        ronda.add(new Ronda(rondaResponse.getInt("round"), rondaResponse.getInt("premioId")));
                    }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return ronda;
    }
    
    
}
