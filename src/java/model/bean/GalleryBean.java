/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author Kevin
 */
public class GalleryBean {
    String imgPath;
    String name;
    String price;
    String category;
    String isHotProduct;

    public String getIsHotProduct() {
        return isHotProduct;
    }

    public void setIsHotProduct(String isHotProduct) {
        this.isHotProduct = isHotProduct;
    }
    
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public String getName() {
        return name;
    }

    public void setName(String title) {
        this.name = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
