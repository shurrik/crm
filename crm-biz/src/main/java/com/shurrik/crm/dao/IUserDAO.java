package com.shurrik.crm.dao;

import java.util.List;

import com.shurrik.common.dao.IBaseDAO;
import com.shurrik.crm.model.User;


public interface IUserDAO extends IBaseDAO<User>{

	public	List<User> findRoleUser();

}
