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


import com.dao.RuzhujiluDao;
import com.entity.RuzhujiluEntity;
import com.service.RuzhujiluService;
import com.entity.vo.RuzhujiluVO;
import com.entity.view.RuzhujiluView;

@Service("ruzhujiluService")
public class RuzhujiluServiceImpl extends ServiceImpl<RuzhujiluDao, RuzhujiluEntity> implements RuzhujiluService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<RuzhujiluEntity> page = this.selectPage(
                new Query<RuzhujiluEntity>(params).getPage(),
                new EntityWrapper<RuzhujiluEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<RuzhujiluEntity> wrapper) {
		  Page<RuzhujiluView> page =new Query<RuzhujiluView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<RuzhujiluVO> selectListVO(Wrapper<RuzhujiluEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public RuzhujiluVO selectVO(Wrapper<RuzhujiluEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<RuzhujiluView> selectListView(Wrapper<RuzhujiluEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public RuzhujiluView selectView(Wrapper<RuzhujiluEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
