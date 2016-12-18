/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

/**
 *
 * @author Kevin
 */
public class MasterDAO {
    GalleryCategoryDAO galleryCategoryDAO;
    GalleryMenuDAO galleryMenuDAO;
    AdminDAO adminDAO;
    
    public GalleryCategoryDAO getGalleryCategoryDAO() {
        return new GalleryCategoryDAO();
    }

    public GalleryMenuDAO getGalleryMenuDAO() {
        return new GalleryMenuDAO();
    }

    public AdminDAO getAdminDAO() {
        return new AdminDAO();
    }
    
    
}
