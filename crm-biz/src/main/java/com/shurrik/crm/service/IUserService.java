
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IUserDAO;
import com.shurrik.crm.model.User;

public interface IUserService extends IBaseService<IUserDAO,User>,IPageService<IUserDAO,User>{

	
	public User createNew(User user);
	public void incMsgUnread(User user);//增加用户未读消息数
	public void decMsgUnread(User user);//减少用户未读消息数
}