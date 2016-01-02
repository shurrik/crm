
package com.shurrik.crm.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shurrik.common.service.impl.AbstractPageService;
import com.shurrik.crm.dao.IBuyerDAO;
import com.shurrik.crm.model.Buyer;
import com.shurrik.crm.service.IBuyerService;

@SuppressWarnings("unchecked")
@Service("BuyerServiceImpl")

public class BuyerServiceImpl extends AbstractPageService<IBuyerDAO,Buyer> implements IBuyerService {

	@Autowired
	private IBuyerDAO buyerDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IBuyerDAO getDao() {
		return buyerDAO;
	}
}
