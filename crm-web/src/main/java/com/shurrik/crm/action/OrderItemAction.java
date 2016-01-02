
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
import com.shurrik.crm.model.OrderItem;
import com.shurrik.crm.service.IOrderItemService;
import com.shurrik.common.utils.IdGenerator;
import com.shurrik.common.utils.JsonResult;
import com.shurrik.common.utils.PageParam;
import com.shurrik.common.utils.Constants;

@Controller
public class OrderItemAction extends AbstractAdminController<IOrderItemService>{

    @Autowired
    private IOrderItemService orderItemService;
    
    @RequestMapping(value="/orderitem/list")
    public String list(OrderItem orderItem,ModelMap model,PageParam pageParam,HttpServletRequest request,HttpServletResponse response){

        //获取参数
    	Map<String, Object> conditions = getQueryMap(orderItem); 	
    	BizData4Page<OrderItem> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("orderItem", orderItem);
    	return "/module/orderitem/list";
    }    
    
    @RequestMapping(value="/orderitem/add")
    public String add(ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	model.addAttribute("orderItem", new OrderItem());
        return "module/orderitem/edit";
    }    
    
    @RequestMapping(value="/orderitem/edit")
    public String edit(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){
    	
    	OrderItem orderItem = orderItemService.fetch(id);
    	model.addAttribute("orderItem", orderItem);
        return "module/orderitem/edit";
    }    
    
    @RequestMapping(value="/orderitem/save")
    @ResponseBody
    public String save(HttpServletRequest request,OrderItem orderItem){
		boolean isAddNew = StringUtils.isBlank(orderItem.getId())?true:false;
		if(isAddNew)
		{
			orderItem.setId(IdGenerator.createNewId());
			orderItemService.add(orderItem);
		}
		else
		{
			orderItemService.update(orderItem);
		}
        return JsonResult.saveSuccessClose(Constants.MAIN_TAB).toString();
    }    
    
    @RequestMapping(value="/orderitem/delete")
    @ResponseBody
    public String delete(String ids,HttpServletRequest request){
    	
    	orderItemService.deleteByIds(ids);
    	return JsonResult.DELETE_SUCCESS.toString();
    }       
	
    protected Map getQueryMap(OrderItem orderItem)
    {
    	Map<String, Object> conditions = new HashMap();
    	
		conditions.put("orderId", orderItem.getOrderId());		
		conditions.put("goodsName", orderItem.getGoodsName());		
		conditions.put("format", orderItem.getFormat());		
		conditions.put("goodsCost", orderItem.getGoodsCost());		
		conditions.put("goodsPrice", orderItem.getGoodsPrice());		
		conditions.put("createDate", orderItem.getCreateDate());		
		conditions.put("updateDate", orderItem.getUpdateDate());		
    	return conditions;
    }

    @Override
    protected IOrderItemService getMainService() {
        return orderItemService;
    }

    @Override
    protected String getMainObjName() {
        return "orderitem";
    }

    @Override
    protected String getViewTitle() {
        return "orderitem";
    }
}
