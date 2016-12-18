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
import org.apache.commons.io.FileUtils;

/**
 *
 * @author Kevin
 */
public class AddMenuAction extends ActionSupport {
    String categoryName;
    String menuName;
    File imgFile;
    String imgFileContentType;
    String imgFileFileName;
    String destinationPath;
    String statusReport;

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    public File getImgFile() {
        return imgFile;
    }

    public void setImgFile(File imgFile) {
        this.imgFile = imgFile;
    }

    public String getImgFileContentType() {
        return imgFileContentType;
    }

    public void setImgFileContentType(String imgFileContentType) {
        this.imgFileContentType = imgFileContentType;
    }

    public String getImgFileFileName() {
        return imgFileFileName;
    }

    public void setImgFileFileName(String imgFileFileName) {
        this.imgFileFileName = imgFileFileName;
    }

    public String getStatusReport() {
        return statusReport;
    }
    
    
    
    @Override
    public String execute(){
        destinationPath = "C:/Users/Kevin/Documents/NetBeansProjects/Univ/SnackImportIndonesia/web/images/uploads/";
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        File img = new File(destinationPath,menuName + "-" + dateFormat.format(date) + ".jpg");
        try {
            FileUtils.copyFile(imgFile,img);
            statusReport = "success";
        } catch (IOException ex) {
            Logger.getLogger(AddMenuAction.class.getName()).log(Level.SEVERE, null, ex);
            statusReport ="failed";
        }

        return SUCCESS;
    }
    
    
    
    
}
