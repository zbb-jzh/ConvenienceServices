package com.future.link.goods.model;

import java.util.ArrayList;
import java.util.List;

import com.future.link.goods.model.base.BaseCategory;

/**
 * Generated by JFinal.
 */
@SuppressWarnings("serial")
public class Category extends BaseCategory<Category> {
	public static final Category dao = new Category();
	
	private List<Category> nodes;

	public List<Category> getNodes() {
		if(this.nodes==null) {
			this.nodes = new ArrayList<Category>();
		}
		return nodes;
	}

	public void setNodes(List<Category> nodes) {
		this.put("nodes", nodes);
		this.nodes = nodes;
	}
}