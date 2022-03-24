package co.com.sofka.juego;

import co.com.sofka.clases.Jugador;
import co.com.sofka.clases.Preguntas;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author <cdarenas02@gmail.com>
 */
public class Juego {

    public static void main(String[] args) {
        Preguntas pregunta = new Preguntas();
        Jugador jugador = new Jugador();
        int step = 0;
        if (step == 0) {
            step = jugador.addJugador();
        }
        if (step != 0) {
            
            List<Preguntas> listaPre = pregunta.getquestionlist(step);
            
            listaPre.forEach((p)-> {
            System.out.println(p.getPregunta());
            System.out.println(p.getOpc_a().getDescripcion());
            System.out.println(p.getOpc_b().getDescripcion());
            System.out.println(p.getOpc_c().getDescripcion());
            System.out.println(p.getOpc_d().getDescripcion());
            
            
            });
            System.out.println(step);
        }

    }

}
