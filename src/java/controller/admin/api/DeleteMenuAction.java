/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.api;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Kevin
 */
public class DeleteMenuAction extends ActionSupport {
    String menuName;
    String categoryName;
    String statusReport;

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getStatusReport() {
        return statusReport;
    }

    @Override
    public String execute() throws Exception {
    
        if(menuName!=null && categoryName !=null){
            statusReport = "success";
        }else{
            statusReport = "false";
        }
        return SUCCESS;
    }
    
    
    
}
