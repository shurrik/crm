
package com.shurrik.crm.action;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shurrik.crm.model.User;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shurrik.common.domain.view.BizData4Page;
import com.shurrik.crm.model.Buyer;
import com.shurrik.crm.service.IBuyerService;
import com.shurrik.common.utils.IdGenerator;
import com.shurrik.common.utils.JsonResult;
import com.shurrik.common.utils.PageParam;
import com.shurrik.common.utils.Constants;

@Controller
public class BuyerAction extends AbstractAdminController<IBuyerService>{

    @Autowired
    private IBuyerService buyerService;
    
    @RequestMapping(value="/buyer/list")
    public String list(Buyer buyer,ModelMap model,PageParam pageParam,HttpServletRequest request,HttpServletResponse response){

        //获取参数
    	Map<String, Object> conditions = getQueryMap(buyer); 	
    	BizData4Page<Buyer> pageCtx = doPage(model, conditions, pageParam);
    	model.addAttribute("buyer", buyer);
    	return "/module/buyer/list";
    }    
    
    @RequestMapping(value="/buyer/add")
    public String add(ModelMap model,HttpServletRequest request,HttpServletResponse response){

    	model.addAttribute("buyer", new Buyer());
        return "module/buyer/edit";
    }    
    
    @RequestMapping(value="/buyer/edit")
    public String edit(String id,ModelMap model,HttpServletRequest request,HttpServletResponse response){
    	
    	Buyer buyer = buyerService.fetch(id);
    	model.addAttribute("buyer", buyer);
        return "module/buyer/edit";
    }    
    
    @RequestMapping(value="/buyer/save")
    @ResponseBody
    public String save(HttpServletRequest request,Buyer buyer){
        User user = getCurrentUser();
		boolean isAddNew = StringUtils.isBlank(buyer.getId())?true:false;
		if(isAddNew)
		{
			buyer.setId(IdGenerator.createNewId());
            buyer.setCreaterId(user.getId());
            buyer.setCreaterName(user.getUserName());
            buyer.setConsumeAmount(BigDecimal.ZERO);
			buyerService.add(buyer);
		}
		else
		{
            buyer.setUpdaterId(user.getId());
            buyer.setUpdaterName(user.getUserName());
            buyerService.update(buyer);
		}
        return JsonResult.saveSuccessClose(Constants.MAIN_TAB).toString();
    }    
    
    @RequestMapping(value="/buyer/delete")
    @ResponseBody
    public String delete(String ids,HttpServletRequest request){
    	
    	buyerService.deleteByIds(ids);
    	return JsonResult.DELETE_SUCCESS.toString();
    }       
	
    protected Map getQueryMap(Buyer buyer)
    {
    	Map<String, Object> conditions = new HashMap();
    	
		conditions.put("nickName", buyer.getNickName());		
		conditions.put("realName", buyer.getRealName());		
		conditions.put("mobile", buyer.getMobile());		
		conditions.put("province", buyer.getProvince());		
		conditions.put("city", buyer.getCity());		
		conditions.put("sex", buyer.getSex());		
		conditions.put("birth", buyer.getBirth());		
		conditions.put("consumeAmount", buyer.getConsumeAmount());		
		conditions.put("buyerType", buyer.getBuyerType());		
		conditions.put("createrId", buyer.getCreaterId());		
		conditions.put("createrName", buyer.getCreaterName());		
		conditions.put("updaterId", buyer.getUpdaterId());		
		conditions.put("updaterName", buyer.getUpdaterName());		
		conditions.put("createDate", buyer.getCreateDate());		
		conditions.put("updateDate", buyer.getUpdateDate());		
    	return conditions;
    }

    @Override
    protected IBuyerService getMainService() {
        return buyerService;
    }

    @Override
    protected String getMainObjName() {
        return "buyer";
    }

    @Override
    protected String getViewTitle() {
        return "buyer";
    }
}
