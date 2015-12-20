
package com.shurrik.crm.service.impl;
import com.shurrik.crm.dao.IOpLogDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shurrik.common.service.impl.AbstractPageService;
import com.shurrik.crm.model.OpLog;
import com.shurrik.crm.model.User;
import com.shurrik.crm.service.IOpLogService;
import com.shurrik.common.utils.IdGenerator;

@SuppressWarnings("unchecked")
@Service("OpLogServiceImpl")

public class OpLogServiceImpl extends AbstractPageService<IOpLogDAO,OpLog> implements IOpLogService {

	@Autowired
	private IOpLogDAO opLogDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IOpLogDAO getDao() {
		return opLogDAO;
	}
	@Override
	public void createNew(String title, String content, User user) {
		// TODO Auto-generated method stub
		OpLog oplog=new OpLog();
		oplog.setTitle(title);
		oplog.setContent(content);
		oplog.setId(IdGenerator.createNewId());
		oplog.setRealName(user.getRealName());
		oplog.setUserName(user.getUserName());
		try {
			this.insert(oplog);
		} catch (Exception e) {
			System.out.println(e.toString());
		}		
		
	}
}
