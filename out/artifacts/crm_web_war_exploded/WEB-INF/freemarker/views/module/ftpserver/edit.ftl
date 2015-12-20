<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/ftpserver/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(ftpServer.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="ip" class="control-label x85">IP：</label>
                            <input type="text" name="ip" id="ip" value="${(ftpServer.ip)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="port" class="control-label x85">端口：</label>
                            <input type="text" name="port" id="port" value="${(ftpServer.port)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="user" class="control-label x85">用户：</label>
                            <input type="text" name="user" id="user" value="${(ftpServer.user)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="password" class="control-label x85">密码：</label>
                            <input type="text" name="password" id="password" value="${(ftpServer.password)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="remark" class="control-label x85">备注：</label>
                            <input type="text" name="remark" id="remark" value="${(ftpServer.remark)!}"  >
                        </td>							
                        <td>
                            <label for="createrId" class="control-label x85">创建人ID：</label>
                            <input type="text" name="createrId" id="createrId" value="${(ftpServer.createrId)!}"  >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="createrName" class="control-label x85">创建人名：</label>
                            <input type="text" name="createrName" id="createrName" value="${(ftpServer.createrName)!}"  >
                        </td>							
                        <td>
                            <label for="updaterId" class="control-label x85">更新人ID：</label>
                            <input type="text" name="updaterId" id="updaterId" value="${(ftpServer.updaterId)!}"  >
                        </td>							
                        <td>
                            <label for="updaterName" class="control-label x85">更新人名：</label>
                            <input type="text" name="updaterName" id="updaterName" value="${(ftpServer.updaterName)!}"  >
                        </td>							
					</tr>
					<tr>
                        <td>
                            <label for="createDate" class="control-label x85">创建时间：</label>
                            <input type="text" name="createDate" id="createDate" value="${(ftpServer.createDate)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="updateDate" class="control-label x85">更新时间：</label>
                            <input type="text" name="updateDate" id="updateDate" value="${(ftpServer.updateDate)!}" data-rule="required" >
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
