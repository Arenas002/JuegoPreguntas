package co.com.sofka.juego;

import co.com.sofka.clases.Jugador;
import co.com.sofka.clases.PlayerPrize;
import co.com.sofka.clases.Preguntas;
import co.com.sofka.clases.Premio;
import co.com.sofka.clases.Ronda;
import java.util.List;


/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Juego {

    public static int step = 0;
    static Preguntas pregunta = new Preguntas();
    static Jugador jugador = new Jugador();
    static Ronda ronda = new Ronda();
    static Premio premio = new Premio();
    public static List<Ronda> roundList;
    static PlayerPrize playerPrize = new PlayerPrize();

    public static void main(String[] args) {

        roundList = ronda.getRoundList(); 
       
        
        iniciarJuego();

    }

    
    public static void iniciarJuego() {

        
        if (step == 0) {
            List<Ronda> r = ronda.getRoundList(); 
            step = jugador.addJugador();
        }
        if (step > 0) {
                
            if(step == 1) jugador.insertPlayer(jugador);
            List<Preguntas> preList = pregunta.getquestionlist(step);
            Boolean nextStep = pregunta.GetOptionSelected(preList);
            if (nextStep == true) {
                System.out.println("Ganate");
                premio.getPrize(roundList.get(step -1).getPremioId());
                playerPrize.insertOrUpdate(jugador.getCedula(),
                        step, 
                        premio.getQuantity(),
                        premio.getType()
                );
                System.out.println(premio.getType());
                step = pregunta.userContinue(step);
                
                iniciarJuego();
            } else {
                System.out.println("Perdistes");
            }
        }
        if(step == -1){
            playerPrize.existUser(jugador.getCedula());
            System.out.println("Ganador te llevas tu premio: ");
            System.out.println("Dinero: " + playerPrize.getTotalMoney());
            System.out.println("Puntos: " + playerPrize.getTotalPoint());
            
        }
    }

}
