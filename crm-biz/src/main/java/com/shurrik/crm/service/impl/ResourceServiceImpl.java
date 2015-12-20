
package com.shurrik.crm.service.impl;
import java.util.List;

import com.shurrik.crm.dao.IResourceDAO;
import com.shurrik.crm.model.Resource;
import com.shurrik.crm.service.IResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shurrik.common.service.impl.AbstractPageService;

@SuppressWarnings("unchecked")
@Service("ResourceServiceImpl")

public class ResourceServiceImpl extends AbstractPageService<IResourceDAO,Resource> implements IResourceService {

	@Autowired
	private IResourceDAO resourceDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IResourceDAO getDao() {
		return resourceDAO;
	}
	
	@Override
	public List<Resource> findMenuByUserIdAndPid(String userId, String pid) {
		// TODO Auto-generated method stub
		return resourceDAO.findMenuByUserIdAndPid(userId, pid);
	}
}
