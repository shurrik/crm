package com.shurrik.crm.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shurrik.crm.model.Role;
import com.shurrik.crm.model.RoleResource;
import com.shurrik.crm.service.IOpLogService;
import com.shurrik.crm.service.IRoleResourceService;
import com.shurrik.crm.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shurrik.common.domain.view.BizData4Page;
import com.shurrik.common.utils.Constants;
import com.shurrik.common.utils.IdGenerator;
import com.shurrik.common.utils.JsonResult;
import com.shurrik.common.utils.PageParam;

@Controller
public class RoleResourceAction extends
		AbstractAdminController<IRoleResourceService> {

	@Autowired
	private IRoleResourceService roleResourceService;
	@Autowired
	private IOpLogService opLogService;
	@Autowired
	private IRoleService roleService;

	@RequestMapping(value = "/roleresource/list")
	public String list(RoleResource roleResource, ModelMap model,
					   PageParam pageParam, HttpServletRequest request,
					   HttpServletResponse response) {

		// 获取参数
		Map<String, Object> conditions = getQueryMap(roleResource);
		BizData4Page<RoleResource> pageCtx = doPage(model, conditions,
				pageParam);
		model.addAttribute("roleResource", roleResource);
		return "/module/roleresource/list";
	}

	@RequestMapping(value = "/roleresource/add")
	public String add(String roleId, ModelMap model,
			HttpServletRequest request, HttpServletResponse response) {

		Role role = roleService.fetch(roleId);
		// List<RoleResource> roleResources =
		// roleResourceService.findList("roleId", roleId);
		model.addAttribute("role", role);
		return "module/roleresource/edit";
	}

	@RequestMapping(value = "/roleresource/edit")
	public String edit(String roleId, ModelMap model,
			HttpServletRequest request, HttpServletResponse response) {

		Role role = roleService.fetch(roleId);
		List<RoleResource> roleResources = roleResourceService.findList(
				"roleId", roleId);
		Map roleResourceMap = new HashMap();
		for (RoleResource roleResource : roleResources) {
			roleResourceMap.put(roleResource.getResourceId(),
					roleResource.getResourceId());
		}

		model.addAttribute("roleResourceMap", roleResourceMap);
		model.addAttribute("role", role);
		model.addAttribute("rids", getRids(roleResources));
		return "module/roleresource/edit";
	}

	private String getRids(List<RoleResource> roleResources) {
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < roleResources.size(); i++) {
			sb.append(roleResources.get(i).getResourceId());
			if (i < roleResources.size() - 1) {
				sb.append(",");
			}
		}

		return sb.toString();
	}

	/*
	 * @RequestMapping(value="/roleresource/edit") public String edit(String
	 * id,ModelMap model,HttpServletRequest request,HttpServletResponse
	 * response){
	 * 
	 * RoleResource roleResource = roleResourceService.fetch(id);
	 * model.addAttribute("roleResource", roleResource); return
	 * "module/roleresource/edit"; }
	 */

	@RequestMapping(value = "/roleresource/save")
	@ResponseBody
	public String save(String rids, HttpServletRequest request,
			RoleResource roleResource) {
		// boolean isAddNew =
		// StringUtils.isBlank(roleResource.getId())?true:false;
		String roleId = roleResource.getRoleId();
		Role role = roleService.fetch(roleId);
		roleResourceService.deleteByProperty("roleId", roleId);
		String[] ridArr = rids.split(",");
		for (String rid : ridArr) {
			RoleResource rr = new RoleResource();
			rr.setId(IdGenerator.createNewId());
			rr.setRoleId(role.getId());
			rr.setRoleName(role.getName());
			rr.setResourceId(rid);
			// rr.setResourceName(resourceName);
			roleResourceService.add(rr);
		}
		opLogService.createNew("角色赋权", "角色名称：" + role.getName(),
				getCurrentUser());
		return JsonResult.saveSuccessClose(Constants.MAIN_TAB).toString();
	}

	@RequestMapping(value = "/roleresource/delete")
	@ResponseBody
	public String delete(String ids, HttpServletRequest request) {

		roleResourceService.deleteByIds(ids);
		return JsonResult.DELETE_SUCCESS.toString();
	}

	protected Map getQueryMap(RoleResource roleResource) {
		Map<String, Object> conditions = new HashMap();

		conditions.put("roleId", roleResource.getRoleId());
		conditions.put("roleName", roleResource.getRoleName());
		conditions.put("resourceId", roleResource.getResourceId());
		conditions.put("resourceName", roleResource.getResourceName());
		return conditions;
	}

	@Override
	protected IRoleResourceService getMainService() {
		return roleResourceService;
	}

	@Override
	protected String getMainObjName() {
		return "roleresource";
	}

	@Override
	protected String getViewTitle() {
		return "roleresource";
	}
}
