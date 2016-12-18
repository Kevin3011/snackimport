/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.api;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import model.dao.MasterDAO;

/**
 *
 * @author Kevin
 */
public class GetMenuNameAction extends ActionSupport {
    String categoryName;
    List<String> categoryList;
    MasterDAO db;

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public List<String> getCategoryList() {
        return categoryList;
    }
    
    @Override
    public String execute(){
        db = new MasterDAO();
        
        categoryList = db.getGalleryMenuDAO().getMenu(categoryName);
        return SUCCESS;
    }
}
