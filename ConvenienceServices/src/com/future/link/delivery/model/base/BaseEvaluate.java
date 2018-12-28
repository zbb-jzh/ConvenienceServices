package com.future.link.delivery.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseEvaluate<M extends BaseEvaluate<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Long id) {
		set("id", id);
	}

	public java.lang.Long getId() {
		return get("id");
	}

	public void setOrderId(java.lang.Long orderId) {
		set("orderId", orderId);
	}

	public java.lang.Long getOrderId() {
		return get("orderId");
	}

	public void setStarNum(java.lang.Integer starNum) {
		set("starNum", starNum);
	}

	public java.lang.Integer getStarNum() {
		return get("starNum");
	}

	public void setContent(java.lang.String content) {
		set("content", content);
	}

	public java.lang.String getContent() {
		return get("content");
	}

	public void setCreateTime(java.util.Date createTime) {
		set("createTime", createTime);
	}

	public java.util.Date getCreateTime() {
		return get("createTime");
	}

}
