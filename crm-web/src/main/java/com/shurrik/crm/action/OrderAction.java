
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
import com.shurrik.crm.model.Order;
import com.shurrik.crm.service.IOrderService;
import com.shurrik.common.utils.IdGenerator;
import com.shurrik.common.utils.JsonResult;
import com.shurrik.common.utils.PageParam;
import com.shurrik.common.utils.Constants;

@Controller
public class OrderAction extends AbstractAdminController<IOrderService>{

    @Autowired
    private IOrderService orderService;
    
    @RequestMapping(value="/order/list")
    public String list(Order order,ModelMap model,PageParam pageParam,HttpServletRequest request,HttpServletResponse response){

        //获取参数
    	Map<String, Object> conditions = getQueryMap(order); 	
    	BizData4Page<Order> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("order", order);
    	return "/module/order/list";
    }    
    
    @RequestMapping(value="/order/add")
    public String add(ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	model.addAttribute("order", new Order());
        return "module/order/edit";
    }    
    
    @RequestMapping(value="/order/edit")
    public String edit(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){
    	
    	Order order = orderService.fetch(id);
    	model.addAttribute("order", order);
        return "module/order/edit";
    }    
    
    @RequestMapping(value="/order/save")
    @ResponseBody
    public String save(HttpServletRequest request,Order order){
		boolean isAddNew = StringUtils.isBlank(order.getId())?true:false;
		if(isAddNew)
		{
			order.setId(IdGenerator.createNewId());
			orderService.add(order);
		}
		else
		{
			orderService.update(order);
		}
        return JsonResult.saveSuccessClose(Constants.MAIN_TAB).toString();
    }    
    
    @RequestMapping(value="/order/delete")
    @ResponseBody
    public String delete(String ids,HttpServletRequest request){
    	
    	orderService.deleteByIds(ids);
    	return JsonResult.DELETE_SUCCESS.toString();
    }       
	
    protected Map getQueryMap(Order order)
    {
    	Map<String, Object> conditions = new HashMap();
    	
		conditions.put("buyerId", order.getBuyerId());		
		conditions.put("nickName", order.getNickName());		
		conditions.put("realName", order.getRealName());		
		conditions.put("receiver", order.getReceiver());		
		conditions.put("mobile", order.getMobile());		
		conditions.put("address", order.getAddress());		
		conditions.put("payMode", order.getPayMode());		
		conditions.put("postType", order.getPostType());		
		conditions.put("postNo", order.getPostNo());		
		conditions.put("status", order.getStatus());		
		conditions.put("postFree", order.getPostFree());		
		conditions.put("goodsCost", order.getGoodsCost());		
		conditions.put("goodsPrice", order.getGoodsPrice());		
		conditions.put("postPrice", order.getPostPrice());		
		conditions.put("sellAmount", order.getSellAmount());		
		conditions.put("costAmount", order.getCostAmount());		
		conditions.put("profitAmount", order.getProfitAmount());		
		conditions.put("createrId", order.getCreaterId());		
		conditions.put("createrName", order.getCreaterName());		
		conditions.put("updaterId", order.getUpdaterId());		
		conditions.put("updaterName", order.getUpdaterName());		
		conditions.put("createDate", order.getCreateDate());		
		conditions.put("updateDate", order.getUpdateDate());		
    	return conditions;
    }

    @Override
    protected IOrderService getMainService() {
        return orderService;
    }

    @Override
    protected String getMainObjName() {
        return "order";
    }

    @Override
    protected String getViewTitle() {
        return "order";
    }
}
