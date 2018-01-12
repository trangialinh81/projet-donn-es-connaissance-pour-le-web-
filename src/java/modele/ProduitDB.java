/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import entite.ConnexionDatabase;
import entite.Produit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tran
 */
public class ProduitDB implements ProduitI{

    @Override
    public void ajouterVehicule() {
        
    }

    @Override
    public List<Produit> listerVehicule() {
       List<Produit> listVehicule = new ArrayList <Produit>();
            Connection connection = ConnexionDatabase.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM Produit");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                 Produit p = new Produit();
                 p.setNumeroMat(rs.getString("numeroMat"));
                 p.setMarque(rs.getString("marque"));
                 p.setModele(rs.getString("modele"));
                 p.setNbrePlace(rs.getInt(4));
                 p.setPuissance(rs.getString(5));
                 p.setConsommation(rs.getInt(6));
                 p.setCouleur(rs.getString(7));
                 p.setBoiteVitesse(rs.getString(8));
                 p.setAnnee(rs.getInt(9));
                 p.setImage(rs.getString(10));
                 p.setCategorieId(rs.getInt(11));
                 listVehicule.add(p);
                 
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ProduitDB.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            
       return listVehicule;
    }

    @Override
    public void supprimerVehicule() {
       
    }

}