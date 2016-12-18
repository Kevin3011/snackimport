/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import com.opensymphony.xwork2.ActionSupport;
import model.dao.MasterDAO;

/**
 *
 * @author Kevin
 */
public class LoginAction extends ActionSupport{

    String token;
    String userName;
    String passWord;
    MasterDAO db;
    public String getToken() {
        return token;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    
    
    @Override
    public String execute() throws Exception {
        db = new MasterDAO();
        String name = db.getAdminDAO().getAuthentication(userName,passWord);
        if(name.equals("")){
            token = "";
            return "failed";
        }else{
            token = "4856514891924862";
            return "success"; //To change body of generated methods, choose Tools | Templates.
        }
    }
    
    
}
