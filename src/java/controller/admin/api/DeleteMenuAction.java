/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.api;

import com.opensymphony.xwork2.ActionSupport;
import model.dao.MasterDAO;

/**
 *
 * @author Kevin
 */
public class DeleteMenuAction extends ActionSupport {
    String menuName;
    String categoryName;
    String statusReport;
    MasterDAO db;

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getStatusReport() {
        return statusReport;
    }

     public String execute() {
        db = new MasterDAO();
        if (this.categoryName != null) {
            if (!this.categoryName.isEmpty()) {
                statusReport = db.getGalleryMenuDAO().deleteMenu(menuName);
            } else {
                statusReport = ("failed");
            }
        } else {
            statusReport = ("failed");
        }
        return "success";
    }
    
    
    
}
