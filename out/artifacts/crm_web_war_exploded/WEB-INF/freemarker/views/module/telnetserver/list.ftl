<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="utton" class="btn btn-success" href="${wwwroot}/admin/telnetserver/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/telnetserver/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/telnetserver/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>IP：</label><input type="text" id="ip" name="ip" value="${(telnetServer.ip)!}"  class="form-control" size="10">&nbsp;				    			
			<label>端口：</label><input type="text" id="port" name="port" value="${(telnetServer.port)!}"  class="form-control" size="10">&nbsp;				    			
			<label>备注：</label><input type="text" id="remark" name="remark" value="${(telnetServer.remark)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建人ID：</label><input type="text" id="createrId" name="createrId" value="${(telnetServer.createrId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建人名：</label><input type="text" id="createrName" name="createrName" value="${(telnetServer.createrName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新人ID：</label><input type="text" id="updaterId" name="updaterId" value="${(telnetServer.updaterId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新人名：</label><input type="text" id="updaterName" name="updaterName" value="${(telnetServer.updaterName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建时间：</label><input type="text" id="createDate" name="createDate" value="${(telnetServer.createDate)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新时间：</label><input type="text" id="updateDate" name="updateDate" value="${(telnetServer.updateDate)!}"  class="form-control" size="10">&nbsp;				    			
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
    			<th data-order-direction="" data-order-field="ip">IP</th>               
    			<th data-order-direction="" data-order-field="port">端口</th>               
    			<th data-order-direction="" data-order-field="remark">备注</th>               
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
                 <td title="${(row.ip)!}">${(row.ip)!}</td>
                 <td title="${(row.port)!}">${(row.port)!}</td>
                 <td title="${(row.remark)!}">${(row.remark)!}</td>
                 <td title="${(row.createrId)!}">${(row.createrId)!}</td>
                 <td title="${(row.createrName)!}">${(row.createrName)!}</td>
                 <td title="${(row.updaterId)!}">${(row.updaterId)!}</td>
                 <td title="${(row.updaterName)!}">${(row.updaterName)!}</td>
                 <td title="${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                 <td title="${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                <td>
                    <a href="${wwwroot}/admin/telnetserver/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
                    <a href="${wwwroot}/admin/telnetserver/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
                </td>	        	
        	</tr>
		</#list>	        	
        </tbody>
    </table>  
 	<@p.pagination pageCtx=pageCtx pageParam=pageParam/>
</div>