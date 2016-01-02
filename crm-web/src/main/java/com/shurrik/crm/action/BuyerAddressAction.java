
package com.shurrik.crm.action;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shurrik.common.domain.view.BizData4Page;
import com.shurrik.crm.model.BuyerAddress;
import com.shurrik.crm.service.IBuyerAddressService;
import com.shurrik.common.utils.IdGenerator;
import com.shurrik.common.utils.JsonResult;
import com.shurrik.common.utils.PageParam;
import com.shurrik.common.utils.Constants;

@Controller
public class BuyerAddressAction extends AbstractAdminController<IBuyerAddressService>{

    @Autowired
    private IBuyerAddressService buyerAddressService;
    
    @RequestMapping(value="/buyeraddress/list")
    public String list(BuyerAddress buyerAddress,ModelMap model,PageParam pageParam,HttpServletRequest request,HttpServletResponse response){

        //获取参数
    	Map<String, Object> conditions = getQueryMap(buyerAddress); 	
    	BizData4Page<BuyerAddress> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("buyerAddress", buyerAddress);
    	return "/module/buyeraddress/list";
    }    
    
    @RequestMapping(value="/buyeraddress/add")
    public String add(ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	model.addAttribute("buyerAddress", new BuyerAddress());
        return "module/buyeraddress/edit";
    }    
    
    @RequestMapping(value="/buyeraddress/edit")
    public String edit(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){
    	
    	BuyerAddress buyerAddress = buyerAddressService.fetch(id);
    	model.addAttribute("buyerAddress", buyerAddress);
        return "module/buyeraddress/edit";
    }    
    
    @RequestMapping(value="/buyeraddress/save")
    @ResponseBody
    public String save(HttpServletRequest request,BuyerAddress buyerAddress){
		boolean isAddNew = StringUtils.isBlank(buyerAddress.getId())?true:false;
		if(isAddNew)
		{
			buyerAddress.setId(IdGenerator.createNewId());
			buyerAddressService.add(buyerAddress);
		}
		else
		{
			buyerAddressService.update(buyerAddress);
		}
        return JsonResult.saveSuccessClose(Constants.MAIN_TAB).toString();
    }    
    
    @RequestMapping(value="/buyeraddress/delete")
    @ResponseBody
    public String delete(String ids,HttpServletRequest request){
    	
    	buyerAddressService.deleteByIds(ids);
    	return JsonResult.DELETE_SUCCESS.toString();
    }       
	
    protected Map getQueryMap(BuyerAddress buyerAddress)
    {
    	Map<String, Object> conditions = new HashMap();
    	
		conditions.put("buyerId", buyerAddress.getBuyerId());		
		conditions.put("receiver", buyerAddress.getReceiver());		
		conditions.put("mobile", buyerAddress.getMobile());		
		conditions.put("address", buyerAddress.getAddress());		
		conditions.put("isDefault", buyerAddress.getIsDefault());		
		conditions.put("createDate", buyerAddress.getCreateDate());		
		conditions.put("updateDate", buyerAddress.getUpdateDate());		
    	return conditions;
    }

    @Override
    protected IBuyerAddressService getMainService() {
        return buyerAddressService;
    }

    @Override
    protected String getMainObjName() {
        return "buyeraddress";
    }

    @Override
    protected String getViewTitle() {
        return "buyeraddress";
    }
}
