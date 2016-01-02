
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IBuyerDAO;
import com.shurrik.crm.model.Buyer;
public interface IBuyerService extends IBaseService<IBuyerDAO,Buyer>,IPageService<IBuyerDAO,Buyer>{

}