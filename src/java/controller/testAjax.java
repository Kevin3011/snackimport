/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Kevin
 */
public class testAjax extends ActionSupport{
    String ajaxRes;
    String ajaxRes2;
    String categoryName;
    List<String> listAjax = new ArrayList<String>();

    public String getCategoryName() {
        return this.categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public List<String> getListAjax() {
        return this.listAjax;
    }

    public void setListAjax(List<String> listAjax) {
        this.listAjax = listAjax;
    }

    public String getAjaxRes() {
        return this.ajaxRes;
    }

    public void setAjaxRes(String ajaxRes) {
        this.ajaxRes = ajaxRes;
    }

    public String getAjaxRes2() {
        return this.ajaxRes2;
    }

    public void setAjaxRes2(String ajaxRes2) {
        this.ajaxRes2 = ajaxRes2;
    }

    public String actionStart() {
        try {
            this.ajaxRes = "asd" + this.categoryName;
            this.ajaxRes2 = "asdasd" + this.categoryName;
            this.listAjax.add(this.ajaxRes);
            this.listAjax.add(this.ajaxRes2);
            return "success";
        }
        catch (Exception e) {
            e.printStackTrace();
            return "success";
        }
    }
}
