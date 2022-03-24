package co.com.sofka.clases;

import co.com.sofka.conectar.Conectar;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Preguntas {

    private String pregunta;
    private Opcion opc_a;
    private Opcion opc_b;
    private Opcion opc_c;
    private Opcion opc_d;

    public Preguntas() {

    }

    public Preguntas(String pregunta, Opcion opc_a, Opcion opc_b, Opcion opc_c, Opcion opc_d) {
        this.pregunta = pregunta;
        this.opc_a = opc_a;
        this.opc_b = opc_b;
        this.opc_c = opc_c;
        this.opc_d = opc_d;

    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String Pregunta) {
        this.pregunta = Pregunta;
    }

    public Opcion getOpc_a() {
        return opc_a;
    }

    public void setOpc_a(Opcion opc_a) {
        this.opc_a = opc_a;
    }

    public Opcion getOpc_b() {
        return opc_b;
    }

    public void setOpc_b(Opcion opc_b) {
        this.opc_b = opc_b;
    }

    public Opcion getOpc_c() {
        return opc_c;
    }

    public void setOpc_c(Opcion opc_c) {
        this.opc_c = opc_c;
    }

    public Opcion getOpc_d() {
        return opc_d;
    }

    public void setOpc_d(Opcion opc_d) {
        this.opc_d = opc_d;
    }

    public List<Preguntas> getquestionlist(int round) {
        List data2 = null;
         List<Opcion> data3 = new ArrayList<>();
        List<Preguntas> data = new ArrayList<>();
        Conectar conecta = new Conectar();
        Connection con = conecta.getConnection();
        if (con != null) {
            try {
                PreparedStatement questionQuery = con.prepareStatement("SELECT id,description FROM question where categoryId = ? order by rand() limit 1;");
                questionQuery.setInt(1, round);
                ResultSet response = questionQuery.executeQuery();

                if (response.next()) {
                    PreparedStatement optionQuery = con.prepareStatement("SELECT description,isTrue FROM pregunta.option where questionId = ? ;");
                    optionQuery.setInt(1,response.getInt("id"));
                    ResultSet optionResponse = optionQuery.executeQuery();
                    while (optionResponse.next()){
                       data3.add( new Opcion(optionResponse.getString("description"),optionResponse.getBoolean("isTrue")));
                    }
                    data.add(new Preguntas(response.getString("description"),data3.get(0),data3.get(1),data3.get(2),data3.get(3)));
                     for(int i=0;i<data.size();i++){
                         System.out.println(data.get(i).pregunta);
                     }
                    
                }

            } catch (SQLException ex) {
                System.out.println(ex);
            }

        } else {
            JOptionPane.showMessageDialog(null, "No se puedo obtener los datos");
        }
       
        
        return data;
    }

}
