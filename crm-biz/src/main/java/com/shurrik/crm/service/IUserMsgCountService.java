
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IUserMsgCountDAO;
import com.shurrik.crm.model.User;
import com.shurrik.crm.model.UserMsgCount;

public interface IUserMsgCountService extends IBaseService<IUserMsgCountDAO,UserMsgCount>,IPageService<IUserMsgCountDAO,UserMsgCount>{

	public void createNew(User user);
	
	public void increaseUserUnreadForIncCount(String userId, Integer incCount);
	
	public void descreaseUserUnreadForDesCount(String userId, Integer desCount);
	
	public void incUserUnread(String userId);
	
	public void desUserUnread(String userId);
	
	public void clear(String userId);
}