package pcchen;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dorian
 */
public class Dresseur {
    private int id_dress;
    private String nom_dress;   
    private static int CPT = 0;
    
    public Dresseur(int id, String nom){
        this.id_dress = id;
        this.nom_dress = nom;     
    }

    public int getId_dress() {
        return id_dress;
    }

    public void setId_dress(int id_dress) {
        this.id_dress = id_dress;
    }

    public String getNom_dress() {
        return nom_dress;
    }

    public void setNom_dress(String nom_dress) {
        this.nom_dress = nom_dress;
    }

    @Override
    public String toString() {
        return "Dresseur{" + "id_dress=" + id_dress + ", nom_dress=" + nom_dress + '}';
    }
 


    
   
    
    
}
