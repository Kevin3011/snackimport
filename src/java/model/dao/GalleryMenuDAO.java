package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.bean.GalleryBean;
import model.dbConnector;

public class GalleryMenuDAO {
    dbConnector connector = new dbConnector();
    public List<GalleryBean> getData(String cat) {
        ArrayList<GalleryBean> data = new ArrayList<>();
        
        GalleryBean temp = new GalleryBean();
         try {
            ResultSet rs = connector.executeQuery("SELECT menu_list.name As menuName, price, imgPath , category_list.name AS categoryName FROM menu_list LEFT JOIN category_list ON menu_list.id_category = category_list.id WHERE category_list.name = '" + cat +"'");
            if(rs != null){
                while (rs.next()) {
                    temp.setName(rs.getString("menuName"));
                    temp.setPrice(rs.getString("price"));
                    temp.setImgPath(rs.getString("imgPath"));
                    temp.setCategory("categoryName");
                    data.add(temp);
                }
            }
            rs.close();
            this.connector.closeConnection();
        }
        catch (SQLException ex) {
            Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       
            return data;
       
    }
    public List<String> getMenu(String cat) {
        List<String> data = new ArrayList<>();
         try {
            ResultSet rs = connector.executeQuery("SELECT menu_list.name As menuName FROM menu_list LEFT JOIN category_list ON menu_list.id_category = category_list.id WHERE category_list.name = '" + cat +"'");
            if(rs != null){
                while (rs.next()) {
                    data.add(rs.getString("menuName"));
                 }
            }
            rs.close();
            this.connector.closeConnection();
        }
        catch (SQLException ex) {
            Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       
            return data;
       
    }
    public String addMenu(GalleryBean bean){
        PreparedStatement pstmt = null;
        String tempId = "";
        int rowCount = 0;
        int errorNum = 0;
        try {
            ResultSet rs = connector.executeQuery("SELECT (id) FROM category_list WHERE name = '"+ bean.getCategory() +"'");
                while (rs.next()) {
                     tempId = String.valueOf(rs.getInt("id"));
            }
            if(tempId.equals("")){
               rowCount = 0;
            }
            else{
                rs.close();
                String insertQuery = "INSERT INTO menu_list (name,price,imgPath,id_category) VALUES (?,?,?,?) ";
                pstmt = this.connector.startConnection().prepareStatement(insertQuery);
                pstmt.setString(1, bean.getName());
                pstmt.setString(2, bean.getPrice());
                pstmt.setString(3, bean.getImgPath());
                pstmt.setString(4, tempId);
                rowCount = pstmt.executeUpdate();
            }
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
    
     public String deleteMenu(String name) {
        PreparedStatement pstmt = null;
        int rowCount = 0;
        try {
            String insertQuery = "DELETE FROM menu_list WHERE name = ?";
            pstmt = this.connector.startConnection().prepareStatement(insertQuery);
            pstmt.setString(1, name);
            rowCount = pstmt.executeUpdate();
        }
        catch (SQLException ex) {
            Logger.getLogger(GalleryMenuDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            try {
                pstmt.close();
            }
            catch (SQLException ex) {
                Logger.getLogger(GalleryMenuDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (rowCount > 0) {
            return "success";
        }
        return "failed";
    }

    
}