package com.future.link.system.controller;

import java.io.IOException;

import com.future.link.common.Result;
import com.future.link.goods.service.CategoryService;
import com.future.link.goods.service.GoodsService;
import com.future.link.system.model.Advertising;
import com.future.link.system.service.CarouselService;
import com.future.link.utils.Constant;
import com.jfinal.core.Controller;
import com.jfinal.kit.StrKit;

public class CarouselController extends Controller{
	
	/**
	 * 新增
	 */
	public void doAdd() throws IOException
	{
		Advertising adver = this.getModel(Advertising.class);
		renderJson(CarouselService.service.add(adver));
	}
	
	/**
	 * 更新
	 */
	public void doUpdate() throws IOException
	{
		Advertising adver = this.getModel(Advertising.class);
		renderJson(CarouselService.service.update(adver));
	}
	
	/**
	 * 获取数据
	 */
	public void doGet()
	{
		Integer id = this.getParaToInt("id");
		
		renderJson(CarouselService.service.getById(id));
	}
	
	
	/**
	 * 启用停用
	 */
	public void changeStatus() {
		String id = this.getPara("id");
		String status = this.getPara("status");
		if(StrKit.isBlank(id))
		{
			renderJson(Result.flomErrorData(Constant.ID_IS_EMPTY));
			return;
		}
		if(StrKit.isBlank(status))
		{
			renderJson(Result.flomErrorData(Constant.STATUS_IS_NULL));
			return;
		}
		renderJson(CarouselService.service.changeStatus(id, status));
	}
	
	/**
	 * 分页查询
	 */
	public void doPage() {
		
		int pageNumber = this.getParaToInt("pageNumber");
        int pageSize = this.getParaToInt("pageSize");
		String name = this.getPara("name");
		String status = this.getPara("status");
		
		this.renderJson(new Result(Constant.SUCCESS, CarouselService.service.page(pageNumber, pageSize, name, status)));
	}
	
	/**
	 * 获取父类
	 */
	public void doGetParent()
	{
		renderJson(new Result(Constant.SUCCESS, CategoryService.service.getParent()));
	}
	
	/**
	 * 获取首页顶部轮播图
	 */
	public void doGetAdList() {
		
		Integer position = this.getParaToInt("position");
		renderJson(CarouselService.service.getAdList(position));
	}

}
