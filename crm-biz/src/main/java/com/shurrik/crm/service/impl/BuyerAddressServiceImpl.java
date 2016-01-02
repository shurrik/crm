
package com.shurrik.crm.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shurrik.common.service.impl.AbstractPageService;
import com.shurrik.crm.dao.IBuyerAddressDAO;
import com.shurrik.crm.model.BuyerAddress;
import com.shurrik.crm.service.IBuyerAddressService;

@SuppressWarnings("unchecked")
@Service("BuyerAddressServiceImpl")

public class BuyerAddressServiceImpl extends AbstractPageService<IBuyerAddressDAO,BuyerAddress> implements IBuyerAddressService {

	@Autowired
	private IBuyerAddressDAO buyerAddressDAO;
	@Override
	public boolean getEnableDataPerm() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public IBuyerAddressDAO getDao() {
		return buyerAddressDAO;
	}
}
