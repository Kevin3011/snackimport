/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.dbConnector;

/**
 *
 * @author Kevin
 */
public class AdminDAO {
    dbConnector connector = new dbConnector();
    
    
    public String getAuthentication(String username, String password){
        String data= "";
         try {
            ResultSet rs = this.connector.executeQuery("SELECT (name) FROM admin_list WHERE username = '" + username + "' AND password = '" + password + "'");
                while (rs.next()) {
                data =(rs.getString("name"));
            }
            rs.close();
            connector.closeConnection();
        }
        catch (SQLException ex) {
            Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
            return data;
    }
}
