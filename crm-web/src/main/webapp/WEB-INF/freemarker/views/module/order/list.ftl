<div class="bjui-pageHeader">
    <div class="toolBar">
        <div class="btn-group" role="group" aria-label="操作栏">
            <a type="utton" class="btn btn-success" href="${wwwroot}/admin/order/add" data-toggle="navtab" data-id="form"><i class="fa fa-plus"></i>新增</a>
            <a type="button" class="btn btn-danger" href="${wwwroot}/admin/order/delete?ids={#bjui-selected}" data-toggle="doajax" data-confirm-msg="确定要删除选中项吗？" data-id="form" data-mask="true"><i class="fa fa-trash-o"></i>删除选中行</a>
        </div>
    </div>
    <form id="pagerForm" data-toggle="ajaxsearch" action="${wwwroot}/admin/order/list" method="post">
        <input type="hidden" name="pageSize" value="">
        <input type="hidden" name="pageCurrent" value="">
        <input type="hidden" name="orderField" value="">
        <input type="hidden" name="orderDirection" value="">
        <div class="bjui-searchBar">
			<label>买家ID：</label><input type="text" id="buyerId" name="buyerId" value="${(order.buyerId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>昵称：</label><input type="text" id="nickName" name="nickName" value="${(order.nickName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>姓名：</label><input type="text" id="realName" name="realName" value="${(order.realName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>收货人：</label><input type="text" id="receiver" name="receiver" value="${(order.receiver)!}"  class="form-control" size="10">&nbsp;				    			
			<label>手机：</label><input type="text" id="mobile" name="mobile" value="${(order.mobile)!}"  class="form-control" size="10">&nbsp;				    			
			<label>地址：</label><input type="text" id="address" name="address" value="${(order.address)!}"  class="form-control" size="10">&nbsp;				    			
			<label>付款方式：</label><input type="text" id="payMode" name="payMode" value="${(order.payMode)!}"  class="form-control" size="10">&nbsp;				    			
			<label>快递类型：</label><input type="text" id="postType" name="postType" value="${(order.postType)!}"  class="form-control" size="10">&nbsp;				    			
			<label>快递单号：</label><input type="text" id="postNo" name="postNo" value="${(order.postNo)!}"  class="form-control" size="10">&nbsp;				    			
			<label>状态：</label><input type="text" id="status" name="status" value="${(order.status)!}"  class="form-control" size="10">&nbsp;				    			
			<label>是否包邮：</label><input type="text" id="postFree" name="postFree" value="${(order.postFree)!}"  class="form-control" size="10">&nbsp;				    			
			<label>宝贝成本：</label><input type="text" id="goodsCost" name="goodsCost" value="${(order.goodsCost)!}"  class="form-control" size="10">&nbsp;				    			
			<label>宝贝售价：</label><input type="text" id="goodsPrice" name="goodsPrice" value="${(order.goodsPrice)!}"  class="form-control" size="10">&nbsp;				    			
			<label>邮费：</label><input type="text" id="postPrice" name="postPrice" value="${(order.postPrice)!}"  class="form-control" size="10">&nbsp;				    			
			<label>销售金额：</label><input type="text" id="sellAmount" name="sellAmount" value="${(order.sellAmount)!}"  class="form-control" size="10">&nbsp;				    			
			<label>成本金额：</label><input type="text" id="costAmount" name="costAmount" value="${(order.costAmount)!}"  class="form-control" size="10">&nbsp;				    			
			<label>利润：</label><input type="text" id="profitAmount" name="profitAmount" value="${(order.profitAmount)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建人ID：</label><input type="text" id="createrId" name="createrId" value="${(order.createrId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建人名：</label><input type="text" id="createrName" name="createrName" value="${(order.createrName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新人ID：</label><input type="text" id="updaterId" name="updaterId" value="${(order.updaterId)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新人名：</label><input type="text" id="updaterName" name="updaterName" value="${(order.updaterName)!}"  class="form-control" size="10">&nbsp;				    			
			<label>创建时间：</label><input type="text" id="createDate" name="createDate" value="${(order.createDate)!}"  class="form-control" size="10">&nbsp;				    			
			<label>更新时间：</label><input type="text" id="updateDate" name="updateDate" value="${(order.updateDate)!}"  class="form-control" size="10">&nbsp;				    			
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
    			<th data-order-direction="" data-order-field="nickName">昵称</th>               
    			<th data-order-direction="" data-order-field="realName">姓名</th>               
    			<th data-order-direction="" data-order-field="receiver">收货人</th>               
    			<th data-order-direction="" data-order-field="mobile">手机</th>               
    			<th data-order-direction="" data-order-field="address">地址</th>               
    			<th data-order-direction="" data-order-field="payMode">付款方式</th>               
    			<th data-order-direction="" data-order-field="postType">快递类型</th>               
    			<th data-order-direction="" data-order-field="postNo">快递单号</th>               
    			<th data-order-direction="" data-order-field="status">状态</th>               
    			<th data-order-direction="" data-order-field="postFree">是否包邮</th>               
    			<th data-order-direction="" data-order-field="goodsCost">宝贝成本</th>               
    			<th data-order-direction="" data-order-field="goodsPrice">宝贝售价</th>               
    			<th data-order-direction="" data-order-field="postPrice">邮费</th>               
    			<th data-order-direction="" data-order-field="sellAmount">销售金额</th>               
    			<th data-order-direction="" data-order-field="costAmount">成本金额</th>               
    			<th data-order-direction="" data-order-field="profitAmount">利润</th>               
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
                 <td title="${(row.buyerId)!}">${(row.buyerId)!}</td>
                 <td title="${(row.nickName)!}">${(row.nickName)!}</td>
                 <td title="${(row.realName)!}">${(row.realName)!}</td>
                 <td title="${(row.receiver)!}">${(row.receiver)!}</td>
                 <td title="${(row.mobile)!}">${(row.mobile)!}</td>
                 <td title="${(row.address)!}">${(row.address)!}</td>
                 <td title="${(row.payMode)!}">${(row.payMode)!}</td>
                 <td title="${(row.postType)!}">${(row.postType)!}</td>
                 <td title="${(row.postNo)!}">${(row.postNo)!}</td>
                 <td title="${(row.status)!}">${(row.status)!}</td>
                 <td title="${(row.postFree)!}">${(row.postFree)!}</td>
                 <td title="${(row.goodsCost)!}">${(row.goodsCost)!}</td>
                 <td title="${(row.goodsPrice)!}">${(row.goodsPrice)!}</td>
                 <td title="${(row.postPrice)!}">${(row.postPrice)!}</td>
                 <td title="${(row.sellAmount)!}">${(row.sellAmount)!}</td>
                 <td title="${(row.costAmount)!}">${(row.costAmount)!}</td>
                 <td title="${(row.profitAmount)!}">${(row.profitAmount)!}</td>
                 <td title="${(row.createrId)!}">${(row.createrId)!}</td>
                 <td title="${(row.createrName)!}">${(row.createrName)!}</td>
                 <td title="${(row.updaterId)!}">${(row.updaterId)!}</td>
                 <td title="${(row.updaterName)!}">${(row.updaterName)!}</td>
                 <td title="${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.createDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                 <td title="${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}">${(row.updateDate?string('yyyy-MM-dd HH:mm:ss'))!}</td>
                <td>
                    <a href="${wwwroot}/admin/order/edit?id=${(row.id)!}" class="btn btn-blue" data-toggle="navtab" data-id="form" data-reload-warn="本页已有打开的内容，确定将刷新本页内容，是否继续？" data-title="编辑">编辑</a>
                    <a href="${wwwroot}/admin/order/delete?ids=${(row.id)!}" class="btn btn-red" data-toggle="doajax" data-confirm-msg="确定要删除该行信息吗？">删</a>
                </td>	        	
        	</tr>
		</#list>	        	
        </tbody>
    </table>  
</div>
<@p.pagination pageCtx=pageCtx pageParam=pageParam/>