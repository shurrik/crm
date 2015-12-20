
package com.shurrik.crm.service.impl;
import com.shurrik.crm.service.IUserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shurrik.common.service.impl.AbstractPageService;
import com.shurrik.crm.dao.IUserRoleDAO;
import com.shurrik.crm.model.UserRole;

@SuppressWarnings("unchecked")
@Service("UserRoleServiceImpl")

public class UserRoleServiceImpl extends AbstractPageService<IUserRoleDAO,UserRole> implements IUserRoleService {

	@Autowired
	private IUserRoleDAO userRoleDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IUserRoleDAO getDao() {
		return userRoleDAO;
	}
}
