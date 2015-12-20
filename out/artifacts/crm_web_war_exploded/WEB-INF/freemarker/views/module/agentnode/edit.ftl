<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/agentnode/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(agentNode.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="agentId" class="control-label x85">代理ID：</label>
                            <input type="text" name="agentId" id="agentId" value="${(agentNode.agentId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="nodeId" class="control-label x85">节点ID：</label>
                            <input type="text" name="nodeId" id="nodeId" value="${(agentNode.nodeId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="targetId" class="control-label x85">目标ID：</label>
                            <input type="text" name="targetId" id="targetId" value="${(agentNode.targetId)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="bizType" class="control-label x85">业务类型：</label>
                            <input type="text" name="bizType" id="bizType" value="${(agentNode.bizType)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="remark" class="control-label x85">备注：</label>
                            <input type="text" name="remark" id="remark" value="${(agentNode.remark)!}"  >
                        </td>							
                        <td>
                            <label for="createrId" class="control-label x85">创建人ID：</label>
                            <input type="text" name="createrId" id="createrId" value="${(agentNode.createrId)!}"  >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="createrName" class="control-label x85">创建人名：</label>
                            <input type="text" name="createrName" id="createrName" value="${(agentNode.createrName)!}"  >
                        </td>							
                        <td>
                            <label for="createDate" class="control-label x85">创建时间：</label>
                            <input type="text" name="createDate" id="createDate" value="${(agentNode.createDate)!}" data-rule="required" >
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
