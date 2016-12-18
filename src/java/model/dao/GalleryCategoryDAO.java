package model.dao;

import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.dbConnector;

public class GalleryCategoryDAO {
    List<String> data = new ArrayList<String>();
    dbConnector connector = new dbConnector();

    public List<String> getName() {
        try {
            ResultSet rs = this.connector.executeQuery("SELECT (name) FROM category_list ORDER BY position asc");
            while (rs.next()) {
                this.data.add(rs.getString("name"));
            }
            rs.close();
            this.connector.closeConnection();
        }
        catch (SQLException ex) {
            Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return this.data;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String addName(String name) {
        PreparedStatement pstmt = null;
        int rowCount = 0;
        int errorNum = 0;
        try {
            String insertQuery = "INSERT INTO category_list (name)VALUES(?)";
            pstmt = this.connector.startConnection().prepareStatement(insertQuery);
            pstmt.setString(1, name);
            rowCount = pstmt.executeUpdate();
        }
        catch (SQLException ex) {
            errorNum = ex.getErrorCode();
            Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            try {
                pstmt.close();
            }
            catch (SQLException ex) {
                Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (rowCount > 0) {
            return "success";
        }
        if (errorNum == 1062) {
            return "duplicate entry";
        }
        return "failed";
    }

    public String editName(String nameAfter, String nameBefore) {
        PreparedStatement pstmt = null;
        int rowCount = 0;
        try {
            String insertQuery = "UPDATE category_list SET name = ?WHERE name = ?";
            pstmt = this.connector.startConnection().prepareStatement(insertQuery);
            pstmt.setString(1, nameAfter);
            pstmt.setString(2, nameBefore);
            rowCount = pstmt.executeUpdate();
        }
        catch (SQLException ex) {
            Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            try {
                pstmt.close();
            }
            catch (SQLException ex) {
                Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (rowCount > 0) {
            return "success";
        }
        return "failed";
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String deleteName(String name) {
        PreparedStatement pstmt = null;
        int rowCount = 0;
        try {
            String insertQuery = "DELETE FROM category_list WHERE name = ?";
            pstmt = this.connector.startConnection().prepareStatement(insertQuery);
            pstmt.setString(1, name);
            rowCount = pstmt.executeUpdate();
        }
        catch (SQLException ex) {
            Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            try {
                pstmt.close();
            }
            catch (SQLException ex) {
                Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (rowCount > 0) {
            return "success";
        }
        return "failed";
    }

    public boolean checkCategory(String cat) {
        for (String s : this.data) {
            if (!s.equalsIgnoreCase(cat)) continue;
            return true;
        }
        return false;
    }
}