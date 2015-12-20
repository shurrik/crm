
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IOpLogDAO;
import com.shurrik.crm.model.OpLog;
import com.shurrik.crm.model.User;

public interface IOpLogService extends IBaseService<IOpLogDAO,OpLog>,IPageService<IOpLogDAO,OpLog>{


	public	void createNew(String title, String content, User user);
}