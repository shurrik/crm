<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/taskmsg/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(taskMsg.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="taskId" class="control-label x85">任务ID：</label>
                            <input type="text" name="taskId" id="taskId" value="${(taskMsg.taskId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="code" class="control-label x85">状态：</label>
                            <input type="text" name="code" id="code" value="${(taskMsg.code)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="msg" class="control-label x85">内容：</label>
                            <input type="text" name="msg" id="msg" value="${(taskMsg.msg)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="createDate" class="control-label x85">创建时间：</label>
                            <input type="text" name="createDate" id="createDate" value="${(taskMsg.createDate)!}" data-rule="required" >
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
