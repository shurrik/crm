package com.shurrik.crm.model;
import com.shurrik.common.domain.BaseDomain;
import java.math.BigDecimal;
import java.util.Date;

public class Order extends BaseDomain{
	private String buyerId; //买家ID
	private String nickName; //昵称
	private String realName; //姓名
	private String receiver; //收货人
	private String mobile; //手机
	private String address; //地址
	private String payMode; //付款方式
	private String postType; //快递类型
	private String postNo; //快递单号
	private String status; //状态
	private Boolean postFree; //是否包邮
	private BigDecimal goodsCost; //宝贝成本
	private BigDecimal goodsPrice; //宝贝售价
	private BigDecimal postPrice; //邮费
	private BigDecimal sellAmount; //销售金额
	private BigDecimal costAmount; //成本金额
	private BigDecimal profitAmount; //利润
	private String createrId; //创建人ID
	private String createrName; //创建人名
	private String updaterId; //更新人ID
	private String updaterName; //更新人名
	private Date createDate; //创建时间
	private Date updateDate; //更新时间

	public String getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPayMode() {
		return payMode;
	}
	public void setPayMode(String payMode) {
		this.payMode = payMode;
	}
	public String getPostType() {
		return postType;
	}
	public void setPostType(String postType) {
		this.postType = postType;
	}
	public String getPostNo() {
		return postNo;
	}
	public void setPostNo(String postNo) {
		this.postNo = postNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Boolean getPostFree() {
		return postFree;
	}
	public void setPostFree(Boolean postFree) {
		this.postFree = postFree;
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
	public BigDecimal getPostPrice() {
		return postPrice;
	}
	public void setPostPrice(BigDecimal postPrice) {
		this.postPrice = postPrice;
	}
	public BigDecimal getSellAmount() {
		return sellAmount;
	}
	public void setSellAmount(BigDecimal sellAmount) {
		this.sellAmount = sellAmount;
	}
	public BigDecimal getCostAmount() {
		return costAmount;
	}
	public void setCostAmount(BigDecimal costAmount) {
		this.costAmount = costAmount;
	}
	public BigDecimal getProfitAmount() {
		return profitAmount;
	}
	public void setProfitAmount(BigDecimal profitAmount) {
		this.profitAmount = profitAmount;
	}
	public String getCreaterId() {
		return createrId;
	}
	public void setCreaterId(String createrId) {
		this.createrId = createrId;
	}
	public String getCreaterName() {
		return createrName;
	}
	public void setCreaterName(String createrName) {
		this.createrName = createrName;
	}
	public String getUpdaterId() {
		return updaterId;
	}
	public void setUpdaterId(String updaterId) {
		this.updaterId = updaterId;
	}
	public String getUpdaterName() {
		return updaterName;
	}
	public void setUpdaterName(String updaterName) {
		this.updaterName = updaterName;
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
