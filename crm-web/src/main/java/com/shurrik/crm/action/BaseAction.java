package com.shurrik.crm.action;

import com.shurrik.common.service.IPageService;
import com.shurrik.crm.model.User;
import com.shurrik.crm.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.context.support.WebApplicationObjectSupport;


public class BaseAction extends WebApplicationObjectSupport {
    @Autowired
    private IUserService userService;
    
    public User getCurrentUser()
    {

		Object userDetails = SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
		String userName="";
		if( userDetails instanceof String){
			userName = (String)userDetails;
		}else if(userDetails instanceof UserDetails){
			userName = ((UserDetails)userDetails).getUsername();
		}
		User user = userService.findOne("userName", userName);

    	return user;
    }
}
