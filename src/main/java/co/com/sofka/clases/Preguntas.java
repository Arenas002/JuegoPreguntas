package co.com.sofka.clases;

/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Preguntas {
    private String Pregunta;
    private String opc_a;
    private String opc_b;
    private String opc_c;
    private String opc_d;

    public Preguntas(String Pregunta, String opc_a, String opc_b, String opc_c, String opc_d) {
        this.Pregunta = Pregunta;
        this.opc_a = opc_a;
        this.opc_b = opc_b;
        this.opc_c = opc_c;
        this.opc_d = opc_d;
    }

    public String getPregunta() {
        return Pregunta;
    }

    public void setPregunta(String Pregunta) {
        this.Pregunta = Pregunta;
    }

    public String getOpc_a() {
        return opc_a;
    }

    public void setOpc_a(String opc_a) {
        this.opc_a = opc_a;
    }

    public String getOpc_b() {
        return opc_b;
    }

    public void setOpc_b(String opc_b) {
        this.opc_b = opc_b;
    }

    public String getOpc_c() {
        return opc_c;
    }

    public void setOpc_c(String opc_c) {
        this.opc_c = opc_c;
    }

    public String getOpc_d() {
        return opc_d;
    }

    public void setOpc_d(String opc_d) {
        this.opc_d = opc_d;
    }
    
    
    
}
