
package com.shurrik.crm.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shurrik.common.service.impl.AbstractPageService;
import com.shurrik.crm.dao.IOrderDAO;
import com.shurrik.crm.model.Order;
import com.shurrik.crm.service.IOrderService;

@SuppressWarnings("unchecked")
@Service("OrderServiceImpl")

public class OrderServiceImpl extends AbstractPageService<IOrderDAO,Order> implements IOrderService {

	@Autowired
	private IOrderDAO orderDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IOrderDAO getDao() {
		return orderDAO;
	}
}
