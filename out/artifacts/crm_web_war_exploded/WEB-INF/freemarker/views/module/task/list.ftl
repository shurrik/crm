<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="utton" class="btn btn-success" href="${wwwroot}/admin/task/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/task/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/task/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>计划ID：</label><input type="text" id="scheId" name="scheId" value="${(task.scheId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>模板ID：</label><input type="text" id="tplId" name="tplId" value="${(task.tplId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>模板：</label><input type="text" id="tplName" name="tplName" value="${(task.tplName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>模板类：</label><input type="text" id="clazz" name="clazz" value="${(task.clazz)!}"  class="form-control" size="10">&nbsp;				    			
			<label>模板类：</label><input type="text" id="agentClazz" name="agentClazz" value="${(task.agentClazz)!}"  class="form-control" size="10">&nbsp;				    			
			<label>参数：</label><input type="text" id="param" name="param" value="${(task.param)!}"  class="form-control" size="10">&nbsp;				    			
			<label>进度：</label><input type="text" id="progress" name="progress" value="${(task.progress)!}"  class="form-control" size="10">&nbsp;				    			
			<label>状态：</label><input type="text" id="status" name="status" value="${(task.status)!}"  class="form-control" size="10">&nbsp;				    			
			<label>开始时间：</label><input type="text" id="startDate" name="startDate" value="${(task.startDate)!}"  class="form-control" size="10">&nbsp;				    			
			<label>完成时间：</label><input type="text" id="finishDate" name="finishDate" value="${(task.finishDate)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建人ID：</label><input type="text" id="createrId" name="createrId" value="${(task.createrId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建人名：</label><input type="text" id="createrName" name="createrName" value="${(task.createrName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新人ID：</label><input type="text" id="updaterId" name="updaterId" value="${(task.updaterId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新人名：</label><input type="text" id="updaterName" name="updaterName" value="${(task.updaterName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建时间：</label><input type="text" id="createDate" name="createDate" value="${(task.createDate)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新时间：</label><input type="text" id="updateDate" name="updateDate" value="${(task.updateDate)!}"  class="form-control" size="10">&nbsp;				    			
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
    			<th data-order-direction="" data-order-field="scheId">计划ID</th>               
    			<th data-order-direction="" data-order-field="tplId">模板ID</th>               
    			<th data-order-direction="" data-order-field="tplName">模板</th>               
    			<th data-order-direction="" data-order-field="clazz">模板类</th>               
    			<th data-order-direction="" data-order-field="agentClazz">模板类</th>               
    			<th data-order-direction="" data-order-field="param">参数</th>               
    			<th data-order-direction="" data-order-field="progress">进度</th>               
    			<th data-order-direction="" data-order-field="status">状态</th>               
    			<th data-order-direction="" data-order-field="startDate">开始时间</th>               
    			<th data-order-direction="" data-order-field="finishDate">完成时间</th>               
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
                 <td title="${(row.scheId)!}">${(row.scheId)!}</td>
                 <td title="${(row.tplId)!}">${(row.tplId)!}</td>
                 <td title="${(row.tplName)!}">${(row.tplName)!}</td>
                 <td title="${(row.clazz)!}">${(row.clazz)!}</td>
                 <td title="${(row.agentClazz)!}">${(row.agentClazz)!}</td>
                 <td title="${(row.param)!}">${(row.param)!}</td>
                 <td title="${(row.progress)!}">${(row.progress)!}</td>
                 <td title="${(row.status)!}">${(row.status)!}</td>
                 <td title="${(row.startDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.startDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                 <td title="${(row.finishDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.finishDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                 <td title="${(row.createrId)!}">${(row.createrId)!}</td>
                 <td title="${(row.createrName)!}">${(row.createrName)!}</td>
                 <td title="${(row.updaterId)!}">${(row.updaterId)!}</td>
                 <td title="${(row.updaterName)!}">${(row.updaterName)!}</td>
                 <td title="${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                 <td title="${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                <td>
                    <a href="${wwwroot}/admin/task/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
                    <a href="${wwwroot}/admin/task/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
                </td>	        	
        	</tr>
		</#list>	        	
        </tbody>
    </table>  
 	<@p.pagination pageCtx=pageCtx pageParam=pageParam/>
</div>