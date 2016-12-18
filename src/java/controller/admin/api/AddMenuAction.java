/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.api;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.bean.GalleryBean;
import model.dao.MasterDAO;
import org.apache.commons.io.FileUtils;

/**
 *
 * @author Kevin
 */
public class AddMenuAction extends ActionSupport {
    String categoryName;
    String menuName;
    String menuPrice;
    File imgFile;
    String imgFileContentType;
    String imgFileFileName;
    String destinationPath;
    String statusReport;
    MasterDAO db;
    GalleryBean galleryBean;

    public void setMenuPrice(String menuPrice) {
        this.menuPrice = menuPrice;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }


    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public void setImgFile(File imgFile) {
        this.imgFile = imgFile;
    }

    public void setImgFileContentType(String imgFileContentType) {
        this.imgFileContentType = imgFileContentType;
    }

    public void setImgFileFileName(String imgFileFileName) {
        this.imgFileFileName = imgFileFileName;
    }

    public String getStatusReport() {
        return statusReport;
    }
    
    
    
    @Override
    public String execute(){
        db = new MasterDAO();
        galleryBean = new GalleryBean();
        
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
       
        destinationPath = "C:/Users/Kevin/Documents/NetBeansProjects/Univ/SnackImportIndonesia/web/images/uploads/";
        
        
        if(menuName != null && categoryName != null & imgFile != null && menuPrice != null){
            String fileName = menuName + "-" + dateFormat.format(date) + ".jpg";
            File img = new File(destinationPath,fileName);

            galleryBean.setName(menuName);
            galleryBean.setCategory(categoryName);
            galleryBean.setImgPath("images/uploads/"+fileName);
            galleryBean.setPrice(menuPrice);
            try {
                FileUtils.copyFile(imgFile,img);
                statusReport = db.getGalleryMenuDAO().addMenu(galleryBean);

            } catch (IOException ex) {
                Logger.getLogger(AddMenuAction.class.getName()).log(Level.SEVERE, null, ex);
                statusReport ="saving image went wrong!";
            }
        }

        return SUCCESS;
    }
    
    
    
    
}
