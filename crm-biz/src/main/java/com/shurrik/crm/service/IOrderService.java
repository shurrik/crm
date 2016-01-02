
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IOrderDAO;
import com.shurrik.crm.model.Order;
public interface IOrderService extends IBaseService<IOrderDAO,Order>,IPageService<IOrderDAO,Order>{

}