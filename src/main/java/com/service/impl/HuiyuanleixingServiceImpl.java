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


import com.dao.HuiyuanleixingDao;
import com.entity.HuiyuanleixingEntity;
import com.service.HuiyuanleixingService;
import com.entity.vo.HuiyuanleixingVO;
import com.entity.view.HuiyuanleixingView;

@Service("huiyuanleixingService")
public class HuiyuanleixingServiceImpl extends ServiceImpl<HuiyuanleixingDao, HuiyuanleixingEntity> implements HuiyuanleixingService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuiyuanleixingEntity> page = this.selectPage(
                new Query<HuiyuanleixingEntity>(params).getPage(),
                new EntityWrapper<HuiyuanleixingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuiyuanleixingEntity> wrapper) {
		  Page<HuiyuanleixingView> page =new Query<HuiyuanleixingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuiyuanleixingVO> selectListVO(Wrapper<HuiyuanleixingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuiyuanleixingVO selectVO(Wrapper<HuiyuanleixingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuiyuanleixingView> selectListView(Wrapper<HuiyuanleixingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuiyuanleixingView selectView(Wrapper<HuiyuanleixingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
