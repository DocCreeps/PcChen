/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pcchen;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


/**
 *
 * @author Dorian
 */


public class PC_Chen {

    private Dresseur utilisateur;
    private static String URL = "jdbc:mysql://127.0.0.1/pcchen?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static String LOGIN = "root";
    private static String PASSWORD = "";
    private ArrayList<Pokemon> Pokemon;
    private Connection connection;
    private Statement stmt;

    public void PC_Chen(Dresseur d) {
        this.utilisateur = d;
    }

    public boolean connection() {
        boolean result = false;
        connection = null;

        try {
            connection = DriverManager
                    .getConnection(URL, LOGIN, PASSWORD);
        } catch (SQLException e) {
            System.out.println("Connexion ratée!");
            e.printStackTrace();
            return connection();
        }
        if (connection != null) {
            System.out.println("Ok, tout semble correct");
            result = true;
            return result;
        } else {
            System.out.println("La connexion autorisée");
            return result;
        }
    }

    public boolean connecteDress(String d) throws SQLException {
        boolean rep = false;
        this.connection();
        this.stmt = this.connection.createStatement();
        String query = "SELECT * FROM dresseur WHERE nom_dress like '" + d + "'";
        //On crée l'objet avec la requête en paramètre                 
        ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            String nom = rs.getString("nom_dress");
            int id = rs.getInt("id_dress");
            this.utilisateur = new Dresseur(id, nom);
            rep = true;
        }
        return rep;
    }

    public ArrayList<Pokemon> getPokemonDetenu() throws SQLException {
        ArrayList<Pokemon> Pok = new ArrayList<>();
        this.connecteDress(this.utilisateur.getNom_dress());
        this.stmt = this.connection.createStatement();
        String query = "SELECT * FROM pokemon p, dresseur d, detientpokemon dp WHERE p.id_pok = dp.id_pok AND d.id_dress = dp.id_dress AND d.nom_dress like '" + this.utilisateur.getNom_dress() + "'";
        ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            String nompok = rs.getString("nom_pok");
            int levelpok = rs.getInt("lvl_pok");
            int idpok = rs.getInt("id_pok");
            Pokemon p = new Pokemon(idpok, nompok, levelpok);
            Pok.add(p);
        }
        return Pok;
    }

    public ArrayList<Pokemon> getPokemonBoite(int nb) throws SQLException {
        ArrayList<Pokemon> PokBoite = new ArrayList<>();
        
        boolean n= this.connecteDress(this.utilisateur.getNom_dress());
        this.stmt = this.connection.createStatement(); 
        String query = "SELECT * , nom_pok FROM stocker inner join pokemon on stocker.id_pok = pokemon.id_pok inner join dresseur on stocker.id_dress = dresseur.id_dress where Boite like'"+nb+"'";
   
        ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            String nompok = rs.getString("nom_pok");
            int levelpok = rs.getInt("lvl_pok");
            int idpok = rs.getInt("id_pok");
            Pokemon p = new Pokemon(idpok, nompok, levelpok);
            PokBoite.add(p);
        }
        return PokBoite;
    }

   public boolean stockerPokemon(Pokemon p, int boite) throws SQLException {
        this.connecteDress(this.utilisateur.getNom_dress());
        this.stmt = this.connection.createStatement();
        String query = "INSERT INTO stocker"
                + " values (" + this.utilisateur.getId_dress() + "," + p.getId_pok() + "," + p.getLevel() + "," + boite + ")";
        stmt.executeUpdate(query);
        query = "DELETE FROM detientpokemon "
                + "WHERE id_dress like " + this.utilisateur.getId_dress() + " AND id_pok like " + p.getId_pok() + "";
        stmt.executeUpdate(query);
        return true;
    }

    public boolean retierPokemon(Pokemon p, int boite) throws SQLException {
        this.connecteDress(this.utilisateur.getNom_dress());
        this.stmt = this.connection.createStatement();
        String query = "INSERT INTO detientpokemon"
                + " values (" + this.utilisateur.getId_dress() + "," + p.getId_pok() + "," + p.getLevel() + ")";
        stmt.executeUpdate(query);
        String query2 = "DELETE FROM stocker "
                + "WHERE id_dress = " + this.utilisateur.getId_dress() + " AND id_pok = " + p.getId_pok();
        stmt.executeUpdate(query2);
        return true;
    }
    
    
    
    
}
            
           
        
        
    
    
    
    
    
 
 
    
 
 
 
 
 
 
 
 
 
 
 
