package co.com.sofka.clases;

import co.com.sofka.conectar.Conectar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author <cdarenas02@gmail.com>
 */

public class Premio {
    private String type;
    private float quantity;

    
    public Premio(){
        
    }
    public Premio(String type, float quantity) {
        this.type = type;
        this.quantity = quantity;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public float getQuantity() {
        return quantity;
    }

    public void setQuantity(float quantity) {
        this.quantity = quantity;
    }
    
    
    public void getPrize(int round){
        Connection con = null;
        PreparedStatement premioQuery = null;
        ResultSet award = null;
        Conectar conecta = new Conectar();
        
        con = conecta.getConnection();
        try {
            con = conecta.getConnection();
            premioQuery = con.prepareStatement(" SELECT type,quantity FROM premio where id =?;");
            premioQuery.setInt(1, round);
            award = premioQuery.executeQuery();
            while(award.next()){
                 setType(award.getString("type"));
                 setQuantity(award.getFloat("quantity"));
            }
            
        } catch (SQLException ex) {
           System.out.println(ex);
        }
    }
}
