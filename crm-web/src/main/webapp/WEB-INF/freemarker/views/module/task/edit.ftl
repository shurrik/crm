<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/task/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(task.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="scheId" class="control-label x85">计划ID：</label>
                            <input type="text" name="scheId" id="scheId" value="${(task.scheId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="tplId" class="control-label x85">模板ID：</label>
                            <input type="text" name="tplId" id="tplId" value="${(task.tplId)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="tplName" class="control-label x85">模板：</label>
                            <input type="text" name="tplName" id="tplName" value="${(task.tplName)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="clazz" class="control-label x85">模板类：</label>
                            <input type="text" name="clazz" id="clazz" value="${(task.clazz)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="agentClazz" class="control-label x85">模板类：</label>
                            <input type="text" name="agentClazz" id="agentClazz" value="${(task.agentClazz)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="param" class="control-label x85">参数：</label>
                            <input type="text" name="param" id="param" value="${(task.param)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="progress" class="control-label x85">进度：</label>
                            <input type="text" name="progress" id="progress" value="${(task.progress)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="status" class="control-label x85">状态：</label>
                            <input type="text" name="status" id="status" value="${(task.status)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="startDate" class="control-label x85">开始时间：</label>
                            <input type="text" name="startDate" id="startDate" value="${(task.startDate)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="finishDate" class="control-label x85">完成时间：</label>
                            <input type="text" name="finishDate" id="finishDate" value="${(task.finishDate)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="createrId" class="control-label x85">创建人ID：</label>
                            <input type="text" name="createrId" id="createrId" value="${(task.createrId)!}"  >
                        </td>							
                        <td>
                            <label for="createrName" class="control-label x85">创建人名：</label>
                            <input type="text" name="createrName" id="createrName" value="${(task.createrName)!}"  >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="updaterId" class="control-label x85">更新人ID：</label>
                            <input type="text" name="updaterId" id="updaterId" value="${(task.updaterId)!}"  >
                        </td>							
                        <td>
                            <label for="updaterName" class="control-label x85">更新人名：</label>
                            <input type="text" name="updaterName" id="updaterName" value="${(task.updaterName)!}"  >
                        </td>							
                        <td>
                            <label for="createDate" class="control-label x85">创建时间：</label>
                            <input type="text" name="createDate" id="createDate" value="${(task.createDate)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="updateDate" class="control-label x85">更新时间：</label>
                            <input type="text" name="updateDate" id="updateDate" value="${(task.updateDate)!}" data-rule="required" >
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
