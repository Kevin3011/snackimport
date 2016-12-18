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
    private String statusReport;

    public String getCategoryName() {
        return this.categoryName;
    }

   
    public List<String> getListCategory() {
        return this.listCategory;
    }

   
    public List<GalleryBean> getListGallery() {
        return this.listGallery;
    }
    
    public String getStatusReport() {
        return statusReport;
    }
    
    

    public String getGalleryList() {
        db = new MasterDAO();
        Map parameters = ActionContext.getContext().getParameters();
        String cat = parameters.get("param1").toString();
        listCategory = db.getGalleryCategoryDAO().getName();
        if (cat.matches("[a-zA-Z]+") && cat.length() > 2) {
            listGallery = db.getGalleryMenuDAO().getData(cat);
            if(!listGallery.isEmpty())
            {
                categoryName = cat;
            }else{
                categoryName = "Unavailable";
            }
            statusReport = "success";
        }
        return "success";
    }
}