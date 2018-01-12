/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import entite.Produit;
import java.util.List;

/**
 *
 * @author tran
 */
public class TestProduit {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ProduitI m = new ProduitDB();
        List<Produit> pro = m.listerVehicule();
        for(Produit p:pro){
            System.out.println(p.getMarque());
        }
    }
    
}
