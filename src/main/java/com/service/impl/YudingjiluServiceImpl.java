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


import com.dao.YudingjiluDao;
import com.entity.YudingjiluEntity;
import com.service.YudingjiluService;
import com.entity.vo.YudingjiluVO;
import com.entity.view.YudingjiluView;

@Service("yudingjiluService")
public class YudingjiluServiceImpl extends ServiceImpl<YudingjiluDao, YudingjiluEntity> implements YudingjiluService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YudingjiluEntity> page = this.selectPage(
                new Query<YudingjiluEntity>(params).getPage(),
                new EntityWrapper<YudingjiluEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YudingjiluEntity> wrapper) {
		  Page<YudingjiluView> page =new Query<YudingjiluView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YudingjiluVO> selectListVO(Wrapper<YudingjiluEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YudingjiluVO selectVO(Wrapper<YudingjiluEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YudingjiluView> selectListView(Wrapper<YudingjiluEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YudingjiluView selectView(Wrapper<YudingjiluEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<YudingjiluEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<YudingjiluEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<YudingjiluEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
