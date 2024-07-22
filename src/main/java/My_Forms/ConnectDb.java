/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package My_Forms;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author VAIBHAV
 */
public class ConnectDb {
    public Connection librarycon;     
        {
            try{
            Class.forName("org.postgresql.Driver");
            librarycon = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","root");
            
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
                
    
}
