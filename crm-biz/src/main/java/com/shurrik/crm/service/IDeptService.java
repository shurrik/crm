
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IDeptDAO;
import com.shurrik.crm.model.Dept;
public interface IDeptService extends IBaseService<IDeptDAO,Dept>,IPageService<IDeptDAO,Dept>{

}