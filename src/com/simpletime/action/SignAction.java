package com.simpletime.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.simpletime.service.SignService;

public class SignAction extends ActionSupport {
    
    private SignService signService;
    
    public void setSignService(SignService signService) {
		this.signService = signService;
	}

}
