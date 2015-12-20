
package com.shurrik.crm.service.impl;
import com.shurrik.crm.dao.IDeptDAO;
import com.shurrik.crm.service.IDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shurrik.common.service.impl.AbstractPageService;
import com.shurrik.crm.model.Dept;

@SuppressWarnings("unchecked")
@Service("DeptServiceImpl")

public class DeptServiceImpl extends AbstractPageService<IDeptDAO,Dept> implements IDeptService {

	@Autowired
	private IDeptDAO deptDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IDeptDAO getDao() {
		return deptDAO;
	}
}
