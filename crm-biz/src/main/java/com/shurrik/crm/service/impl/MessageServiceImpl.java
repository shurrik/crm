
package com.shurrik.crm.service.impl;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shurrik.crm.dao.IMessageDAO;
import com.shurrik.crm.service.IMessageService;
import com.shurrik.crm.service.IUserMsgCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shurrik.common.service.impl.AbstractPageService;
import com.shurrik.crm.model.Message;
import com.shurrik.crm.model.User;
import com.shurrik.common.utils.Constants;
import com.shurrik.common.utils.IdGenerator;

@SuppressWarnings("unchecked")
@Service("MessageServiceImpl")

public class MessageServiceImpl extends AbstractPageService<IMessageDAO,Message> implements IMessageService {

	@Autowired
	private IMessageDAO messageDAO;
	@Autowired
	private IUserMsgCountService userMsgCountService;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public IMessageDAO getDao() {
		return messageDAO;
	}
	
	@Override
	public void createMsg(User from,User to,String title,String content)
	{
		Message msg = new Message();
		msg.setId(IdGenerator.createNewId());
		if(from!=null)
		{
			msg.setFromId(from.getId());
			msg.setFromName(from.getRealName());
		}
		msg.setToId(to.getId());
		msg.setToName(to.getRealName());
		msg.setTitle(title);
		msg.setContent(content);
		msg.setReadFlag(false);
		this.insert(msg);
		userMsgCountService.incUserUnread(to.getId());
	}
	
	@Override
	public void createSysMsg(User to,String title,String content)
	{
		this.createSysMsg(to, title, content, null);
	}
	
	@Override
	public void createSysMsg(User to, String title, String content, String url) {
		if(null!=to)
		{
			Message msg = new Message();
			msg.setId(IdGenerator.createNewId());
			msg.setFromId(Constants.SYS_ADMIN_ID);
			msg.setFromName(Constants.SYS_ADMIN);		
			msg.setToId(to.getId());
			msg.setToName(to.getRealName());
			msg.setTitle(title);
			msg.setContent(content);
			msg.setReadFlag(false);
			msg.setUrl(url);
			this.insert(msg);
			userMsgCountService.incUserUnread(to.getId());			
		}
	}	

	@Override
	public List<Message> findMessagesByToName(String toName) {
		// TODO Auto-generated method stub
		return this.findList("toName",toName);
	}

	@Override
	public List<Message> findUnreadMsgs(String toId) {
		Map<String,Object> condition = new HashMap();
		condition.put("toId", toId);
		condition.put("readFlag", false);
		
		return this.queryList(condition, "createDate ", "asc");
	}

	@Override
	public void readMsg(String id) {
		Message msg = this.fetch(id);
		msg.setReadFlag(true);
		msg.setUpdateDate(new Date());
		this.update(msg);
		userMsgCountService.desUserUnread(msg.getToId());
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Message> findNewMsgs(String toId) {
		// TODO Auto-generated method stub
		return messageDAO.findNewMsgs(toId);
	}

	@Override
	public void readAll(String toId) {
		// TODO Auto-generated method stub
		messageDAO.readAll(toId);
	}

}
