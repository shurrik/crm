<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/schedule/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(schedule.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="cron" class="control-label x85">时间表达式：</label>
                            <input type="text" name="cron" id="cron" value="${(schedule.cron)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="cronDesc" class="control-label x85">定时说明：</label>
                            <input type="text" name="cronDesc" id="cronDesc" value="${(schedule.cronDesc)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="tplId" class="control-label x85">模板ID：</label>
                            <input type="text" name="tplId" id="tplId" value="${(schedule.tplId)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="tplName" class="control-label x85">模板：</label>
                            <input type="text" name="tplName" id="tplName" value="${(schedule.tplName)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="status" class="control-label x85">状态：</label>
                            <input type="text" name="status" id="status" value="${(schedule.status)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="createrId" class="control-label x85">创建人ID：</label>
                            <input type="text" name="createrId" id="createrId" value="${(schedule.createrId)!}"  >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="createrName" class="control-label x85">创建人名：</label>
                            <input type="text" name="createrName" id="createrName" value="${(schedule.createrName)!}"  >
                        </td>							
                        <td>
                            <label for="updaterId" class="control-label x85">更新人ID：</label>
                            <input type="text" name="updaterId" id="updaterId" value="${(schedule.updaterId)!}"  >
                        </td>							
                        <td>
                            <label for="updaterName" class="control-label x85">更新人名：</label>
                            <input type="text" name="updaterName" id="updaterName" value="${(schedule.updaterName)!}"  >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="createDate" class="control-label x85">创建时间：</label>
                            <input type="text" name="createDate" id="createDate" value="${(schedule.createDate)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="updateDate" class="control-label x85">更新时间：</label>
                            <input type="text" name="updateDate" id="updateDate" value="${(schedule.updateDate)!}" data-rule="required" >
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
