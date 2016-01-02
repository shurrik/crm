package com.shurrik.crm.model;
import com.shurrik.common.domain.BaseDomain;
import java.math.BigDecimal;
import java.util.Date;

public class OrderItem extends BaseDomain{
	private String orderId; //订单ID
	private String goodsName; //商品
	private String format; //规格
	private BigDecimal goodsCost; //宝贝成本
	private BigDecimal goodsPrice; //宝贝售价
	private Date createDate; //创建时间
	private Date updateDate; //更新时间

	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getFormat() {
		return format;
	}
	public void setFormat(String format) {
		this.format = format;
	}
	public BigDecimal getGoodsCost() {
		return goodsCost;
	}
	public void setGoodsCost(BigDecimal goodsCost) {
		this.goodsCost = goodsCost;
	}
	public BigDecimal getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(BigDecimal goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
}
