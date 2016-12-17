package model;

import com.mysql.jdbc.Connection;
import java.io.PrintStream;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class dbConnector {
    Connection con = null;

    public Connection startConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/snack-import", "root", "");
            if (null != this.con) {
                System.out.print("YEAY");
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(dbConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(dbConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return this.con;
    }

    public ResultSet executeQuery(String query) {
        this.startConnection();
        Statement stmt = null;
        ResultSet rs = null;
        try {
            stmt = this.con.createStatement();
            rs = stmt.executeQuery(query);
        }
        catch (SQLException ex) {
            Logger.getLogger(dbConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public void closeConnection() {
        try {
            this.con.close();
        } catch (SQLException ex) {
            Logger.getLogger(dbConnector.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}