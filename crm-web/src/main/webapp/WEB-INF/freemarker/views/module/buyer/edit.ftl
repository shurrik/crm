<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/buyer/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(buyer.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="nickName" class="control-label x85">昵称：</label>
                            <input type="text" name="nickName" id="nickName" value="${(buyer.nickName)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="realName" class="control-label x85">姓名：</label>
                            <input type="text" name="realName" id="realName" value="${(buyer.realName)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="mobile" class="control-label x85">手机：</label>
                            <input type="text" name="mobile" id="mobile" value="${(buyer.mobile)!}" data-rule="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="province" class="control-label x85">省：</label>
                            <input type="text" name="province" id="province" value="${(buyer.province)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="city" class="control-label x85">市：</label>
                            <input type="text" name="city" id="city" value="${(buyer.city)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="sex" class="control-label x85">性别：</label>
                            <select name="sex" id="sex" data-toggle="selectpicker">
                                <option value="未知" <#if !buyer.sex??||buyer.sex=''||buyer.sex='未知'>selected</#if>>未知</option>
                                <option value="女" <#if buyer.sex??&&buyer.sex='女'>selected</#if>>女</option>
                                <option value="男" <#if buyer.sex??&&buyer.sex='男'>selected</#if>>男</option>
                            </select>
                        </td>
                    </tr>
                    <#--<tr>-->
                        <#--<td>-->
                            <#--<label for="birth" class="control-label x85">出生日期：</label>-->
                            <#--<input type="text" name="birth" id="birth" value="${(buyer.birth)!}" data-rule="required" >-->
                        <#--</td>-->
                        <#--<td>-->
                            <#--<label for="consumeAmount" class="control-label x85">消费金额：</label>-->
                            <#--<input type="text" name="consumeAmount" id="consumeAmount" value="${(buyer.consumeAmount)!}" data-rule="required" >-->
                        <#--</td>-->
                        <#--<td>-->
                            <#--<label for="buyerType" class="control-label x85">买家类型：</label>-->
                            <#--<input type="text" name="buyerType" id="buyerType" value="${(buyer.buyerType)!}"  >-->
                        <#--</td>-->
                    <#--</tr>-->
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
