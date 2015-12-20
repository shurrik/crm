<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/node/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(node.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="ip" class="control-label x85">IP：</label>
                            <input type="text" name="ip" id="ip" value="${(node.ip)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="targetId" class="control-label x85">目标ID：</label>
                            <input type="text" name="targetId" id="targetId" value="${(node.targetId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="bizType" class="control-label x85">业务类型：</label>
                            <input type="text" name="bizType" id="bizType" value="${(node.bizType)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="remark" class="control-label x85">备注：</label>
                            <input type="text" name="remark" id="remark" value="${(node.remark)!}"  >
                        </td>							
                        <td>
                            <label for="createrId" class="control-label x85">创建人ID：</label>
                            <input type="text" name="createrId" id="createrId" value="${(node.createrId)!}"  >
                        </td>							
                        <td>
                            <label for="createrName" class="control-label x85">创建人名：</label>
                            <input type="text" name="createrName" id="createrName" value="${(node.createrName)!}"  >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="updaterId" class="control-label x85">更新人ID：</label>
                            <input type="text" name="updaterId" id="updaterId" value="${(node.updaterId)!}"  >
                        </td>							
                        <td>
                            <label for="updaterName" class="control-label x85">更新人名：</label>
                            <input type="text" name="updaterName" id="updaterName" value="${(node.updaterName)!}"  >
                        </td>							
                        <td>
                            <label for="createDate" class="control-label x85">创建时间：</label>
                            <input type="text" name="createDate" id="createDate" value="${(node.createDate)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="updateDate" class="control-label x85">更新时间：</label>
                            <input type="text" name="updateDate" id="updateDate" value="${(node.updateDate)!}" data-rule="required" >
                        </td>							
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</div>
<div class="bjui-pageFooter" >
    <ul>
        <li><button type="button" class="btn btn-close" data-icon="close">取消</button></li>
        <li><button type="submit" class="btn btn-success" data-icon="save">保存</button></li>
    </ul>
</div>
