<div class="bjui-pageContent">
    <form action="${wwwroot}/admin/order/save" id="editForm" data-toggle="validate" data-alertmsg="false" reloadNavtab="true">
        <input type="hidden" name="id" value="${(order.id)!}" />
        <div class="pageFormContent" data-layout-h="0">
            <table class="table table-condensed table-hover" width="100%">
                <tbody>
                    <tr>
                        <td>
                            <label for="buyerId" class="control-label x85">买家ID：</label>
                            <input type="text" name="buyerId" id="buyerId" value="${(order.buyerId)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="nickName" class="control-label x85">昵称：</label>
                            <input type="text" name="nickName" id="nickName" value="${(order.nickName)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="realName" class="control-label x85">姓名：</label>
                            <input type="text" name="realName" id="realName" value="${(order.realName)!}" data-rule="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="receiver" class="control-label x85">收货人：</label>
                            <input type="text" name="receiver" id="receiver" value="${(order.receiver)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="mobile" class="control-label x85">手机：</label>
                            <input type="text" name="mobile" id="mobile" value="${(order.mobile)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="address" class="control-label x85">地址：</label>
                            <input type="text" name="address" id="address" value="${(order.address)!}" data-rule="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="payMode" class="control-label x85">付款方式：</label>
                            <input type="text" name="payMode" id="payMode" value="${(order.payMode)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="postType" class="control-label x85">快递类型：</label>
                            <input type="text" name="postType" id="postType" value="${(order.postType)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="postNo" class="control-label x85">快递单号：</label>
                            <input type="text" name="postNo" id="postNo" value="${(order.postNo)!}" data-rule="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="status" class="control-label x85">状态：</label>
                            <input type="text" name="status" id="status" value="${(order.status)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="postFree" class="control-label x85">是否包邮：</label>
                            <input type="text" name="postFree" id="postFree" value="${(order.postFree)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="goodsCost" class="control-label x85">宝贝成本：</label>
                            <input type="text" name="goodsCost" id="goodsCost" value="${(order.goodsCost)!}" data-rule="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="goodsPrice" class="control-label x85">宝贝售价：</label>
                            <input type="text" name="goodsPrice" id="goodsPrice" value="${(order.goodsPrice)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="postPrice" class="control-label x85">邮费：</label>
                            <input type="text" name="postPrice" id="postPrice" value="${(order.postPrice)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="sellAmount" class="control-label x85">销售金额：</label>
                            <input type="text" name="sellAmount" id="sellAmount" value="${(order.sellAmount)!}" data-rule="required" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="costAmount" class="control-label x85">成本金额：</label>
                            <input type="text" name="costAmount" id="costAmount" value="${(order.costAmount)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="profitAmount" class="control-label x85">利润：</label>
                            <input type="text" name="profitAmount" id="profitAmount" value="${(order.profitAmount)!}" data-rule="required" >
                        </td>
                        <td>
                            <label for="createrId" class="control-label x85">创建人ID：</label>
                            <input type="text" name="createrId" id="createrId" value="${(order.createrId)!}"  >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="createrName" class="control-label x85">创建人名：</label>
                            <input type="text" name="createrName" id="createrName" value="${(order.createrName)!}"  >
                        </td>
                        <td>
                            <label for="updaterId" class="control-label x85">更新人ID：</label>
                            <input type="text" name="updaterId" id="updaterId" value="${(order.updaterId)!}"  >
                        </td>
                        <td>
                            <label for="updaterName" class="control-label x85">更新人名：</label>
                            <input type="text" name="updaterName" id="updaterName" value="${(order.updaterName)!}"  >
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
