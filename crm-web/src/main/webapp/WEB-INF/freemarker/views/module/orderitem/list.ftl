<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="utton" class="btn btn-success" href="${wwwroot}/admin/orderitem/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/orderitem/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/orderitem/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>订单ID：</label><input type="text" id="orderId" name="orderId" value="${(orderItem.orderId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>商品：</label><input type="text" id="goodsName" name="goodsName" value="${(orderItem.goodsName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>规格：</label><input type="text" id="format" name="format" value="${(orderItem.format)!}"  class="form-control" size="10">&nbsp;				    			
			<label>宝贝成本：</label><input type="text" id="goodsCost" name="goodsCost" value="${(orderItem.goodsCost)!}"  class="form-control" size="10">&nbsp;				    			
			<label>宝贝售价：</label><input type="text" id="goodsPrice" name="goodsPrice" value="${(orderItem.goodsPrice)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建时间：</label><input type="text" id="createDate" name="createDate" value="${(orderItem.createDate)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新时间：</label><input type="text" id="updateDate" name="updateDate" value="${(orderItem.updateDate)!}"  class="form-control" size="10">&nbsp;				    			
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
    			<th data-order-direction="" data-order-field="orderId">订单ID</th>               
    			<th data-order-direction="" data-order-field="goodsName">商品</th>               
    			<th data-order-direction="" data-order-field="format">规格</th>               
    			<th data-order-direction="" data-order-field="goodsCost">宝贝成本</th>               
    			<th data-order-direction="" data-order-field="goodsPrice">宝贝售价</th>               
    			<th data-order-direction="" data-order-field="createDate">创建时间</th>               
    			<th data-order-direction="" data-order-field="updateDate">更新时间</th>               
                <th width="100">操作</th>
            </tr>
        </thead>
        <tbody>
        <#list pageCtx.rows as row>
        	<tr data-id="${(row.id)!}">
				<td>${(row_index+1)!}</td>	        	
                 <td title="${(row.orderId)!}">${(row.orderId)!}</td>
                 <td title="${(row.goodsName)!}">${(row.goodsName)!}</td>
                 <td title="${(row.format)!}">${(row.format)!}</td>
                 <td title="${(row.goodsCost)!}">${(row.goodsCost)!}</td>
                 <td title="${(row.goodsPrice)!}">${(row.goodsPrice)!}</td>
                 <td title="${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                 <td title="${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                <td>
                    <a href="${wwwroot}/admin/orderitem/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
                    <a href="${wwwroot}/admin/orderitem/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
                </td>	        	
        	</tr>
		</#list>	        	
        </tbody>
    </table>  
</div>
<@p.pagination pageCtx=pageCtx pageParam=pageParam/>