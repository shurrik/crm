<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/artifact/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(artifact.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="actType" class="control-label x85">构件类型：</label>
                            <input type="text" name="actType" id="actType" value="${(artifact.actType)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="name" class="control-label x85">名称：</label>
                            <input type="text" name="name" id="name" value="${(artifact.name)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="path" class="control-label x85">路径：</label>
                            <input type="text" name="path" id="path" value="${(artifact.path)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="size" class="control-label x85">文件大小：</label>
                            <input type="text" name="size" id="size" value="${(artifact.size)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="createrId" class="control-label x85">创建人ID：</label>
                            <input type="text" name="createrId" id="createrId" value="${(artifact.createrId)!}"  >
                        </td>							
                        <td>
                            <label for="createrName" class="control-label x85">创建人名：</label>
                            <input type="text" name="createrName" id="createrName" value="${(artifact.createrName)!}"  >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="updaterId" class="control-label x85">更新人ID：</label>
                            <input type="text" name="updaterId" id="updaterId" value="${(artifact.updaterId)!}"  >
                        </td>							
                        <td>
                            <label for="updaterName" class="control-label x85">更新人名：</label>
                            <input type="text" name="updaterName" id="updaterName" value="${(artifact.updaterName)!}"  >
                        </td>							
                        <td>
                            <label for="createDate" class="control-label x85">创建时间：</label>
                            <input type="text" name="createDate" id="createDate" value="${(artifact.createDate)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="updateDate" class="control-label x85">更新时间：</label>
                            <input type="text" name="updateDate" id="updateDate" value="${(artifact.updateDate)!}" data-rule="required" >
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
