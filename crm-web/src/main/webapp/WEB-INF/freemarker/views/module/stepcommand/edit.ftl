<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/stepcommand/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(stepCommand.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="stepId" class="control-label x85">步骤ID：</label>
                            <input type="text" name="stepId" id="stepId" value="${(stepCommand.stepId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="cmdId" class="control-label x85">动作ID：</label>
                            <input type="text" name="cmdId" id="cmdId" value="${(stepCommand.cmdId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="createrId" class="control-label x85">创建人ID：</label>
                            <input type="text" name="createrId" id="createrId" value="${(stepCommand.createrId)!}"  >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="createrName" class="control-label x85">创建人名：</label>
                            <input type="text" name="createrName" id="createrName" value="${(stepCommand.createrName)!}"  >
                        </td>							
                        <td>
                            <label for="createDate" class="control-label x85">创建时间：</label>
                            <input type="text" name="createDate" id="createDate" value="${(stepCommand.createDate)!}" data-rule="required" >
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
