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
public class DeleteCategoryAction
extends ActionSupport {
    private String categoryName;
    private MasterDAO db;
    private String statusReport;

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public void setStatusReport(String statusReport) {
        this.statusReport = statusReport;
    }

    public String getStatusReport() {
        return this.statusReport;
    }

    public String execute() {
        this.db = new MasterDAO();
        if (this.categoryName != null) {
            if (!this.categoryName.isEmpty()) {
                this.setStatusReport(this.db.getGalleryCategoryDAO().deleteName(this.categoryName));
            } else {
                this.setStatusReport("failed");
            }
        } else {
            this.setStatusReport("failed");
        }
        return "success";
    }
}
