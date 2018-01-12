/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entite;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tran
 */



public class ConnexionDatabase {
    private static Connection connection;
     //lien de connexion à la base de données
    private static String dbURL = "jdbc:mysql://localhost/ventedevehicule"; 

    //nom d'utilisateur
    private static String user = "root"; 

    //mot de passe
    private static String pass = "";
     static{
         try {
             Class.forName("com.mysql.jdbc.Driver");
             connection = DriverManager.getConnection(dbURL, user, pass);
         } catch (Exception ex) {
             Logger.getLogger(ConnexionDatabase.class.getName()).log(Level.SEVERE, null, ex);
         }
     }

    public static Connection getConnection() {
        return connection;
    }

   
     
}
