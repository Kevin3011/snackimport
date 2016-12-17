/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.client;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.bean.GalleryBean;
import model.dao.MasterDAO;

/**
 *
 * @author Kevin
 */
public class GalleryAction
extends ActionSupport {
    private String categoryName;
    private List<GalleryBean> listGallery;
    private List<String> listCategory;
    private MasterDAO db;

    public String getCategoryName() {
        return this.categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public List<String> getListCategory() {
        return this.listCategory;
    }

    public void setListCategory(List<String> listCategory) {
        this.listCategory = listCategory;
    }

    public List<GalleryBean> getListGallery() {
        return this.listGallery;
    }

    public void setListGallery(List<GalleryBean> listGallery) {
        this.listGallery = listGallery;
    }

    public void setDb(MasterDAO db) {
        this.db = db;
    }

    public String getGalleryList() {
        this.setDb(new MasterDAO());
        Map parameters = ActionContext.getContext().getParameters();
        String cat = parameters.get("param1").toString();
        this.listCategory = this.db.getGalleryCategoryDAO().getName();
        if (cat.matches("[a-zA-Z]+") && cat.length() > 2) {
            this.listGallery = this.db.getGalleryMenuDAO().getData(cat);
            this.setCategoryName(cat);
        }
        try {
            return "success";
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return "failed";
        }
    }
}