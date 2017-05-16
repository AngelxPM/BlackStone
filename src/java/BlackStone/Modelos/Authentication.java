/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackStone.Modelos;

/**
 *
 * @author Valeria
 */
public class Authentication {
    public static boolean authenticate(String correo, String password) {

        ComentariosPOJO user = new ComentariosPOJO();
        if (user.getNombre().equals(correo) && user.getComentario().equals(password) ){
            return true;
        } else {
            return false;
        }
    }
}
