<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/orderitem/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(orderItem.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="orderId" class="control-label x85">订单ID：</label>
                            <input type="text" name="orderId" id="orderId" value="${(orderItem.orderId)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="goodsName" class="control-label x85">商品：</label>
                            <input type="text" name="goodsName" id="goodsName" value="${(orderItem.goodsName)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="format" class="control-label x85">规格：</label>
                            <input type="text" name="format" id="format" value="${(orderItem.format)!}" data-rule="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="goodsCost" class="control-label x85">宝贝成本：</label>
                            <input type="text" name="goodsCost" id="goodsCost" value="${(orderItem.goodsCost)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="goodsPrice" class="control-label x85">宝贝售价：</label>
                            <input type="text" name="goodsPrice" id="goodsPrice" value="${(orderItem.goodsPrice)!}" data-rule="required" >
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
