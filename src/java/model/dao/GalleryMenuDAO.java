package model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.bean.GalleryBean;
import model.dbConnector;

public class GalleryMenuDAO {
    dbConnector connector;
    public List<GalleryBean> getData(String query) {
        ArrayList<GalleryBean> data = new ArrayList<>();
        GalleryBean temp = new GalleryBean();
         try {
            ResultSet rs = this.connector.executeQuery("SELECT menu_list.name As menuName, price, imgPath , category_list.name AS categoryName FROM menu_list LEFT JOIN category_list ON menu_list.id_category = category_list.id ");
            
            while (rs.next()) {
                temp.setTitle(rs.getString("name"));
                temp.setPrice(rs.getString("price"));
                temp.setImgPath(rs.getString("imgPath"));
                temp.setCategory("category");
                data.add(temp);
            }
            rs.close();
            this.connector.closeConnection();
        }
        catch (SQLException ex) {
            Logger.getLogger(GalleryCategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return data;
    }
    
    public String addMenu(){
        return "";
        
    }
    
}