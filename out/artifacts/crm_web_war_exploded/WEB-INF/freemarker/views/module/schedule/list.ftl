<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="utton" class="btn btn-success" href="${wwwroot}/admin/schedule/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/schedule/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/schedule/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>时间表达式：</label><input type="text" id="cron" name="cron" value="${(schedule.cron)!}"  class="form-control" size="10">&nbsp;				    			
			<label>定时说明：</label><input type="text" id="cronDesc" name="cronDesc" value="${(schedule.cronDesc)!}"  class="form-control" size="10">&nbsp;				    			
			<label>模板ID：</label><input type="text" id="tplId" name="tplId" value="${(schedule.tplId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>模板：</label><input type="text" id="tplName" name="tplName" value="${(schedule.tplName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>状态：</label><input type="text" id="status" name="status" value="${(schedule.status)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建人ID：</label><input type="text" id="createrId" name="createrId" value="${(schedule.createrId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建人名：</label><input type="text" id="createrName" name="createrName" value="${(schedule.createrName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新人ID：</label><input type="text" id="updaterId" name="updaterId" value="${(schedule.updaterId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新人名：</label><input type="text" id="updaterName" name="updaterName" value="${(schedule.updaterName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建时间：</label><input type="text" id="createDate" name="createDate" value="${(schedule.createDate)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新时间：</label><input type="text" id="updateDate" name="updateDate" value="${(schedule.updateDate)!}"  class="form-control" size="10">&nbsp;				    			
            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent">
    <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true" data-selected-multi="true">
        <thead>
            <tr>
				<th width="50">No.</th>                
    			<th data-order-direction="" data-order-field="cron">时间表达式</th>               
    			<th data-order-direction="" data-order-field="cronDesc">定时说明</th>               
    			<th data-order-direction="" data-order-field="tplId">模板ID</th>               
    			<th data-order-direction="" data-order-field="tplName">模板</th>               
    			<th data-order-direction="" data-order-field="status">状态</th>               
    			<th data-order-direction="" data-order-field="createrId">创建人ID</th>               
    			<th data-order-direction="" data-order-field="createrName">创建人名</th>               
    			<th data-order-direction="" data-order-field="updaterId">更新人ID</th>               
    			<th data-order-direction="" data-order-field="updaterName">更新人名</th>               
    			<th data-order-direction="" data-order-field="createDate">创建时间</th>               
    			<th data-order-direction="" data-order-field="updateDate">更新时间</th>               
                <th width="100">操作</th>
            </tr>
        </thead>
        <tbody>
        <#list pageCtx.rows as row>
        	<tr data-id="${(row.id)!}">
				<td>${(row_index+1)!}</td>	        	
                 <td title="${(row.cron)!}">${(row.cron)!}</td>
                 <td title="${(row.cronDesc)!}">${(row.cronDesc)!}</td>
                 <td title="${(row.tplId)!}">${(row.tplId)!}</td>
                 <td title="${(row.tplName)!}">${(row.tplName)!}</td>
                 <td title="${(row.status)!}">${(row.status)!}</td>
                 <td title="${(row.createrId)!}">${(row.createrId)!}</td>
                 <td title="${(row.createrName)!}">${(row.createrName)!}</td>
                 <td title="${(row.updaterId)!}">${(row.updaterId)!}</td>
                 <td title="${(row.updaterName)!}">${(row.updaterName)!}</td>
                 <td title="${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                 <td title="${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                <td>
                    <a href="${wwwroot}/admin/schedule/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
                    <a href="${wwwroot}/admin/schedule/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
                </td>	        	
        	</tr>
		</#list>	        	
        </tbody>
    </table>  
 	<@p.pagination pageCtx=pageCtx pageParam=pageParam/>
</div>