<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/database/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(database.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="ip" class="control-label x85">IP：</label>
                            <input type="text" name="ip" id="ip" value="${(database.ip)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="port" class="control-label x85">端口：</label>
                            <input type="text" name="port" id="port" value="${(database.port)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="dbType" class="control-label x85">数据库类型：</label>
                            <input type="text" name="dbType" id="dbType" value="${(database.dbType)!}" data-rule="required" >
                        </td>							
					</tr>
					<tr>

                        <td>
                            <label for="dbName" class="control-label x85">数据库：</label>
                            <input type="text" name="dbName" id="dbName" value="${(database.dbName)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="tableSpace" class="control-label x85">表空间：</label>
                            <input type="text" name="tableSpace" id="tableSpace" value="${(database.tableSpace)!}"  >
                        </td>
					</tr>
					<tr>
                        <td>
                            <label for="dbUser" class="control-label x85">用户名：</label>
                            <input type="text" name="dbUser" id="dbUser" value="${(database.dbUser)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="dbPw" class="control-label x85">密码：</label>
                            <input type="text" name="dbPw" id="dbPw" value="${(database.dbPw)!}" data-rule="required" >
                        </td>							
                        <td>
                            <label for="remark" class="control-label x85">备注：</label>
                            <input type="text" name="remark" id="remark" value="${(database.remark)!}"  >
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
