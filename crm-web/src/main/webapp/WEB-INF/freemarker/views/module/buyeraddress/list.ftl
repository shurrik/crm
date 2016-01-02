<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="utton" class="btn btn-success" href="${wwwroot}/admin/buyeraddress/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/buyeraddress/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/buyeraddress/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>买家ID：</label><input type="text" id="buyerId" name="buyerId" value="${(buyerAddress.buyerId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>收货人：</label><input type="text" id="receiver" name="receiver" value="${(buyerAddress.receiver)!}"  class="form-control" size="10">&nbsp;				    			
			<label>手机：</label><input type="text" id="mobile" name="mobile" value="${(buyerAddress.mobile)!}"  class="form-control" size="10">&nbsp;				    			
			<label>地址：</label><input type="text" id="address" name="address" value="${(buyerAddress.address)!}"  class="form-control" size="10">&nbsp;				    			
			<label>是否默认：</label><input type="text" id="isDefault" name="isDefault" value="${(buyerAddress.isDefault)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建时间：</label><input type="text" id="createDate" name="createDate" value="${(buyerAddress.createDate)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新时间：</label><input type="text" id="updateDate" name="updateDate" value="${(buyerAddress.updateDate)!}"  class="form-control" size="10">&nbsp;				    			
            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table data-toggle="tablefixed" data-width="100%" data-nowrap="true">
        <thead>
            <tr>
				<th width="50">No.</th>                
    			<th data-order-direction="" data-order-field="buyerId">买家ID</th>               
    			<th data-order-direction="" data-order-field="receiver">收货人</th>               
    			<th data-order-direction="" data-order-field="mobile">手机</th>               
    			<th data-order-direction="" data-order-field="address">地址</th>               
    			<th data-order-direction="" data-order-field="isDefault">是否默认</th>               
    			<th data-order-direction="" data-order-field="createDate">创建时间</th>               
    			<th data-order-direction="" data-order-field="updateDate">更新时间</th>               
                <th width="100">操作</th>
            </tr>
        </thead>
        <tbody>
        <#list pageCtx.rows as row>
        	<tr data-id="${(row.id)!}">
				<td>${(row_index+1)!}</td>	        	
                 <td title="${(row.buyerId)!}">${(row.buyerId)!}</td>
                 <td title="${(row.receiver)!}">${(row.receiver)!}</td>
                 <td title="${(row.mobile)!}">${(row.mobile)!}</td>
                 <td title="${(row.address)!}">${(row.address)!}</td>
                 <td title="${(row.isDefault)!}">${(row.isDefault)!}</td>
                 <td title="${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                 <td title="${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                <td>
                    <a href="${wwwroot}/admin/buyeraddress/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
                    <a href="${wwwroot}/admin/buyeraddress/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
                </td>	        	
        	</tr>
		</#list>	        	
        </tbody>
    </table>  
</div>
<@p.pagination pageCtx=pageCtx pageParam=pageParam/>