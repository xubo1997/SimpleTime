package com.simpletime.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.simpletime.pojo.Admin;
import com.simpletime.service.AdminService;
import com.simpletime.utils.MD5Util;

public class AdminAction extends ActionSupport {
    
    private AdminService adminService;
    public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
    
    public String add(){
        Admin admin = new Admin();
        admin.setJoinTime(new Date());
        admin.setLoginName("admin");
        admin.setName("万恶的资本家");
        String md5 = MD5Util.getMD5("admin");
        admin.setPassword(md5);
        admin = adminService.save(admin);
        return SUCCESS;
    }

}
