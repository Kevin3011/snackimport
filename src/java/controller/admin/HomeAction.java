/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Kevin
 */
public class HomeAction extends ActionSupport 
{

    String token;

    public void setToken(String token) {
        this.token = token;
    }

    public String getToken() {
        return token;
    }
    
    @Override
    public String execute() throws Exception {
        
        return SUCCESS; //To change body of generated methods, choose Tools | Templates.
    }
    
}
