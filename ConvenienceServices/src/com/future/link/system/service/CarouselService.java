package com.future.link.system.service;

import java.util.ArrayList;
import java.util.List;

import com.future.link.base.service.ImageManagerService;
import com.future.link.common.Result;
import com.future.link.goods.model.Goods;
import com.future.link.system.model.Advertising;
import com.future.link.user.model.User;
import com.future.link.utils.Constant;
import com.future.link.utils.ToolDateTime;
import com.jfinal.aop.Enhancer;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;

public class CarouselService {
	
	public static final CarouselService service = Enhancer.enhance(CarouselService.class);

	/**
	 * 新增
	 * @param ad
	 * @return
	 */
	public Result add(Advertising ad)
	{
		//category.setId(CommonUtil.getUUID());
		ad.setCreateTime(ToolDateTime.getDate());
		ad.save();
		return new Result(Constant.SUCCESS);
	}
	
	/**
	 * 更新
	 * @param ad
	 * @return
	 */
	public Result update(Advertising ad) {
		
		ad.update();
		return new Result(Constant.SUCCESS);
	}
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public Result getById(int id) {
		return new Result(Constant.SUCCESS, Advertising.dao.findById(id));
	}
	
	/**
	 * 启用停用
	 * @param id
	 * @return
	 */
	public Result changeStatus(String id, String status)
	{
		Db.update("update system_advertising set status = ? where id = ?", Integer.parseInt(status), id);
		return new Result(Constant.SUCCESS);
	}
	
	/**
     * 分页查询
     * @return
     */
    public Page<Advertising> page(int pageNumber, int pageSize, String name, String status){

        StringBuffer sql = new StringBuffer(" from system_advertising where 1 = 1 ");
        List<Object> params = new ArrayList<>();
        
        if(StrKit.notBlank(name)){
            sql.append(" and name like ?");
            params.add("%" + name + "%");
        }
        
        if(StrKit.notBlank(status)){
            sql.append(" and status = ?");
            params.add(Integer.parseInt(status));
        }
        
        sql.append(" order by createTime desc");
        Page<Advertising> page = Advertising.dao.paginate(pageNumber, pageSize, "select * ", sql.toString(), params.toArray());
        
        List<Advertising> list = page.getList();
        for(Advertising ad : list)
        {
        	this.completeShowUrl(ad);
        }
        
        return page;
    }
    
    // 图片绝对地址写入Advertising对象中
    private void completeShowUrl(Advertising ad) {
    	
    	// 获取相对地址
        String relUrl = ad.getImageUrl();
        if (StrKit.isBlank(relUrl)) {
            return;
        }
        // 绝对地址
        String absUrl = ImageManagerService.service.processAbsUrl(relUrl);
        ad.setShowUrl(absUrl);
    }
}
