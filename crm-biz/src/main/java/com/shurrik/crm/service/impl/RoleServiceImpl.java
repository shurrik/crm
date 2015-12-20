
package com.shurrik.crm.service.impl;
import com.shurrik.crm.dao.IRoleDAO;
import com.shurrik.crm.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shurrik.common.service.impl.AbstractPageService;
import com.shurrik.crm.service.IRoleService;

@SuppressWarnings("unchecked")
@Service("RoleServiceImpl")

public class RoleServiceImpl extends AbstractPageService<IRoleDAO,Role> implements IRoleService {

	@Autowired
	private IRoleDAO roleDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IRoleDAO getDao() {
		return roleDAO;
	}
}
