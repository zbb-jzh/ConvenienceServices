package com.future.link.goods.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseGoodsCategoryRelation<M extends BaseGoodsCategoryRelation<M>> extends Model<M> implements IBean {

	public void setId(java.lang.String id) {
		set("id", id);
	}

	public java.lang.String getId() {
		return get("id");
	}

	public void setCategoryId(java.lang.String categoryId) {
		set("categoryId", categoryId);
	}

	public java.lang.String getCategoryId() {
		return get("categoryId");
	}

	public void setGoodsId(java.lang.String goodsId) {
		set("goodsId", goodsId);
	}

	public java.lang.String getGoodsId() {
		return get("goodsId");
	}

}
