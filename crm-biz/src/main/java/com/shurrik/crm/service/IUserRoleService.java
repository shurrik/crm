
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IUserRoleDAO;
import com.shurrik.crm.model.UserRole;
public interface IUserRoleService extends IBaseService<IUserRoleDAO,UserRole>,IPageService<IUserRoleDAO,UserRole>{

}