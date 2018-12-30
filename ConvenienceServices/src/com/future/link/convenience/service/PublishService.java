package com.future.link.convenience.service;

import java.util.ArrayList;
import java.util.List;

import com.future.link.base.service.ImageManagerService;
import com.future.link.common.Result;
import com.future.link.convenience.model.Publish;
import com.future.link.system.model.Advertising;
import com.future.link.utils.Constant;
import com.future.link.utils.ToolDateTime;
import com.jfinal.aop.Enhancer;
import com.jfinal.kit.StrKit;
import com.jfinal.plugin.activerecord.Page;

public class PublishService {

	public static final PublishService service = Enhancer.enhance(PublishService.class);
	
	/**
	 * 新增
	 * @param publish
	 * @return
	 */
	public Result add(Publish publish) {
		
		publish.setStatus(Constant.UN_DELETE);
		publish.setCreateTime(ToolDateTime.getDate());
		publish.save();
		return new Result(Constant.SUCCESS);
	}
	
	/**
	 * 修改
	 * @param publish
	 * @return
	 */
	public Result update(Publish publish) {
		publish.update();
		return new Result(Constant.SUCCESS);
	}
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public Result getById(int id) {
		return new Result(Constant.SUCCESS, Publish.dao.findById(id));
	}
	
	/**
     * 分页查询
     * @return
     */
    public Page<Publish> page(int pageNumber, int pageSize, String content, String categoryId){

        StringBuffer sql = new StringBuffer(" from convenience_publish where status = 1 ");
        List<Object> params = new ArrayList<>();
        
        if(StrKit.notBlank(content)){
            sql.append(" and content like ?");
            params.add("%" + content + "%");
        }
        
        if(StrKit.notBlank(categoryId)){
            sql.append(" and categoryId = ?");
            params.add(Long.parseLong(categoryId));
        }
        
        sql.append(" order by topStatus, createTime desc");
        Page<Publish> page = Publish.dao.paginate(pageNumber, pageSize, "select * ", sql.toString(), params.toArray());
        
        List<Publish> list = page.getList();
        for(Publish publish : list)
        {
        	this.completeShowUrl(publish);
        }
        
        return page;
    }
    
 // 图片绝对地址写入Advertising对象中
    private void completeShowUrl(Publish publish) {
    	
    	// 获取相对地址
        String relUrl = publish.getImageUrl();
        if (StrKit.isBlank(relUrl)) {
            return;
        }
        // 绝对地址
        String absUrl = ImageManagerService.service.processAbsUrl(relUrl);
        publish.setShowUrl(absUrl);
    }
}
