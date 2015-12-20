
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IRoleResourceDAO;
import com.shurrik.crm.model.RoleResource;

public interface IRoleResourceService extends IBaseService<IRoleResourceDAO,RoleResource>,IPageService<IRoleResourceDAO,RoleResource>{

}