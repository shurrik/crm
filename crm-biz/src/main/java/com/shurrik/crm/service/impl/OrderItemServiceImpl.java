
package com.shurrik.crm.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shurrik.common.service.impl.AbstractPageService;
import com.shurrik.crm.dao.IOrderItemDAO;
import com.shurrik.crm.model.OrderItem;
import com.shurrik.crm.service.IOrderItemService;

@SuppressWarnings("unchecked")
@Service("OrderItemServiceImpl")

public class OrderItemServiceImpl extends AbstractPageService<IOrderItemDAO,OrderItem> implements IOrderItemService {

	@Autowired
	private IOrderItemDAO orderItemDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IOrderItemDAO getDao() {
		return orderItemDAO;
	}
}
