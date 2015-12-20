
package com.shurrik.crm.service;
import java.util.List;

import com.shurrik.crm.dao.IResourceDAO;
import org.apache.ibatis.annotations.Param;

import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.model.Resource;
public interface IResourceService extends IBaseService<IResourceDAO,Resource>,IPageService<IResourceDAO,Resource>{

	public List<Resource> findMenuByUserIdAndPid(@Param("userId") String userId, @Param("pid") String pid);
}