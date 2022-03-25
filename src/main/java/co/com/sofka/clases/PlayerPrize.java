package co.com.sofka.clases;

import co.com.sofka.conectar.Conectar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author cris-
 */
public class PlayerPrize {

    private int id;
    private int totalMoney;
    private int totalPoint;
    
    public PlayerPrize(){
        
    }

    public PlayerPrize(int id, int totalMoney, int totalPoint) {
        this.id = id;
        this.totalMoney = totalMoney;
        this.totalPoint = totalPoint;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(int totalMoney) {
        this.totalMoney = totalMoney;
    }

    public int getTotalPoint() {
        return totalPoint;
    }

    public void setTotalPoint(int totalPoint) {
        this.totalPoint = totalPoint;
    }

    public void existUser(int idUser) {
        Connection con = null;
        PreparedStatement userQuery = null;
        ResultSet user = null;
        Conectar conecta = new Conectar();

        con = conecta.getConnection();

        try {
            con = conecta.getConnection();
            userQuery = con.prepareStatement("SELECT id,totalmoney,totalpoint FROM playerprize where playerId = ?"); // lo mando igual 
            userQuery.setInt(1, idUser);
            user = userQuery.executeQuery();
            while (user.next()) {
                setId(user.getInt("id"));
                setTotalMoney(user.getInt("totalmoney"));
                setTotalPoint(user.getInt("totalpoint"));
            }

        } catch (SQLException ex) {
            System.out.println(ex);

        }

    }

    public void insertOrUpdate(int playerId, int roundId, float quantity, String type) {
      existUser(playerId); 
      Connection con = null;
        PreparedStatement playerPrizerQuery = null;
        Conectar conecta = new Conectar();
        con = conecta.getConnection();
        System.out.println(getId());
      if(getId()!= 0){
          try {
              playerPrizerQuery = con.prepareStatement("UPDATE playerprize SET totalmoney = ?,totalpoint = ? where id =?;");
              if("Dinero".equals(type)){
                  playerPrizerQuery.setInt(1, (int)( getTotalMoney() + quantity)); //si dinero es igual ... entonces seteeme 0
              }else{
                  playerPrizerQuery.setInt(1, (int)( getTotalMoney())); //si dinero es igual ... entonces seteeme 0
              }
              if("Puntos".equals(type)){
                  playerPrizerQuery.setInt(2, (int)(getTotalPoint() + quantity));
              }else{
                  playerPrizerQuery.setInt(2, (int)(getTotalPoint()));
              }
              playerPrizerQuery.setInt(3, getId());
               
          } catch (SQLException ex) {
               System.out.println(ex);
          }
      }else{
          try {
              playerPrizerQuery = con.prepareStatement("INSERT INTO playerprize(totalmoney,totalpoint,playerId,roundId) VALUES(?,?,?,?);");
              playerPrizerQuery.setInt(1, (int) ("Dinero".equals(type) ? quantity:0)); //si dinero es igual ... entonces seteeme 0
              playerPrizerQuery.setInt(2, (int) ("Puntos".equals(type) ? quantity:0));
              playerPrizerQuery.setInt(3, playerId);
              playerPrizerQuery.setInt(4, roundId);
              
              
          } catch (SQLException ex) {
              System.out.println(ex);
          }
      }
        
        try {
            playerPrizerQuery.executeUpdate();
        } catch (SQLException ex) {
             System.out.println(ex);
        }
      
      
    }

}
