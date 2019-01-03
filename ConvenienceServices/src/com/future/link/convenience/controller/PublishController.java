package com.future.link.convenience.controller;

import java.io.UnsupportedEncodingException;

import com.future.link.common.Result;
import com.future.link.convenience.model.Publish;
import com.future.link.convenience.service.PublishService;
import com.future.link.system.service.CarouselService;
import com.future.link.utils.Constant;
import com.jfinal.core.Controller;

public class PublishController extends Controller{
	
	
	/**
	 * 新增
	 */
	public void doAdd() {
		
		Publish model = this.getModel(Publish.class);
		renderJson(PublishService.service.add(model));
	}
	
	/**
	 * 修改
	 */
	public void doUpdate() {
		Publish model = this.getModel(Publish.class);
		renderJson(PublishService.service.update(model));
	}
	
	/**
	 * 根据id查询
	 */
	public void doGetById() {
		
		int id = this.getParaToInt("id");
		renderJson(PublishService.service.getById(id));
	}
	
	/**
	 * 分页查询
	 * @throws UnsupportedEncodingException 
	 */
	public void doPage() throws UnsupportedEncodingException {
		
		int pageNumber = this.getParaToInt("pageNumber");
        int pageSize = this.getParaToInt("pageSize");
		String content = this.getPara("content");
		String categoryId = this.getPara("categoryId");
		
		this.renderJson(new Result(Constant.SUCCESS, PublishService.service.page(pageNumber, pageSize, content, categoryId)));
	}

}
