package com.shurrik.crm.model;
import com.shurrik.common.domain.BaseDomain;
import java.math.BigDecimal;
import java.util.Date;

public class BuyerAddress extends BaseDomain{
	private String buyerId; //买家ID
	private String receiver; //收货人
	private String mobile; //手机
	private String address; //地址
	private Boolean isDefault; //是否默认
	private Date createDate; //创建时间
	private Date updateDate; //更新时间

	public String getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
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
	public Boolean getIsDefault() {
		return isDefault;
	}
	public void setIsDefault(Boolean isDefault) {
		this.isDefault = isDefault;
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
