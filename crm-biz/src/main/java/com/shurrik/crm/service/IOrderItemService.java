
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IOrderItemDAO;
import com.shurrik.crm.model.OrderItem;
public interface IOrderItemService extends IBaseService<IOrderItemDAO,OrderItem>,IPageService<IOrderItemDAO,OrderItem>{

}