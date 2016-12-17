/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.client;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import model.dao.MasterDAO;

/**
 *
 * @author Kevin
 */
public class AboutAction extends ActionSupport {
    List<String> listCategory;
    MasterDAO db;

    public List<String> getListCategory() {
        return this.listCategory;
    }

    public void setListCategory(List<String> listCategory) {
        this.listCategory = listCategory;
    }

    public void setDb(MasterDAO db) {
        this.db = db;
    }

    public String start() {
        this.setDb(new MasterDAO());
        try {
            this.listCategory = this.db.getGalleryCategoryDAO().getName();
            return "success";
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return "failed";
        }
    }
}