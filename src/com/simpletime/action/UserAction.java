package com.simpletime.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.simpletime.pojo.User;
import com.simpletime.service.UserService;

public class UserAction extends ActionSupport {
    
    
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }
    
    public String add(){
    	
        User user = new User();
        user.setNickName("万恶的资本家");
        user.setPhone("13341032564");
        user.setSex(1);
        userService.save(user);
        return SUCCESS;
    }
    public String Login(){
    	
    	return null;
    }

}
