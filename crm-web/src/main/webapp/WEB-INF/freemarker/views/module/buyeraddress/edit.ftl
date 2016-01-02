<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/buyeraddress/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(buyerAddress.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="buyerId" class="control-label x85">买家ID：</label>
                            <input type="text" name="buyerId" id="buyerId" value="${(buyerAddress.buyerId)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="receiver" class="control-label x85">收货人：</label>
                            <input type="text" name="receiver" id="receiver" value="${(buyerAddress.receiver)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="mobile" class="control-label x85">手机：</label>
                            <input type="text" name="mobile" id="mobile" value="${(buyerAddress.mobile)!}" data-rule="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="address" class="control-label x85">地址：</label>
                            <input type="text" name="address" id="address" value="${(buyerAddress.address)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="isDefault" class="control-label x85">是否默认：</label>
                            <input type="text" name="isDefault" id="isDefault" value="${(buyerAddress.isDefault)!}" data-rule="required" >
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
