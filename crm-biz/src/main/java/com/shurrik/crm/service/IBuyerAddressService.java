
package com.shurrik.crm.service;
import com.shurrik.common.service.IBaseService;
import com.shurrik.common.service.IPageService;
import com.shurrik.crm.dao.IBuyerAddressDAO;
import com.shurrik.crm.model.BuyerAddress;
public interface IBuyerAddressService extends IBaseService<IBuyerAddressDAO,BuyerAddress>,IPageService<IBuyerAddressDAO,BuyerAddress>{

}