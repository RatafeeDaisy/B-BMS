package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ZhoubiansheshiDao;
import com.entity.ZhoubiansheshiEntity;
import com.service.ZhoubiansheshiService;
import com.entity.vo.ZhoubiansheshiVO;
import com.entity.view.ZhoubiansheshiView;

@Service("zhoubiansheshiService")
public class ZhoubiansheshiServiceImpl extends ServiceImpl<ZhoubiansheshiDao, ZhoubiansheshiEntity> implements ZhoubiansheshiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhoubiansheshiEntity> page = this.selectPage(
                new Query<ZhoubiansheshiEntity>(params).getPage(),
                new EntityWrapper<ZhoubiansheshiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhoubiansheshiEntity> wrapper) {
		  Page<ZhoubiansheshiView> page =new Query<ZhoubiansheshiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhoubiansheshiVO> selectListVO(Wrapper<ZhoubiansheshiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhoubiansheshiVO selectVO(Wrapper<ZhoubiansheshiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhoubiansheshiView> selectListView(Wrapper<ZhoubiansheshiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhoubiansheshiView selectView(Wrapper<ZhoubiansheshiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
