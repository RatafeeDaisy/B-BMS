package com.dao;

import com.entity.RuzhujiluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.RuzhujiluVO;
import com.entity.view.RuzhujiluView;


/**
 * 入住记录
 * 
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
public interface RuzhujiluDao extends BaseMapper<RuzhujiluEntity> {
	
	List<RuzhujiluVO> selectListVO(@Param("ew") Wrapper<RuzhujiluEntity> wrapper);
	
	RuzhujiluVO selectVO(@Param("ew") Wrapper<RuzhujiluEntity> wrapper);
	
	List<RuzhujiluView> selectListView(@Param("ew") Wrapper<RuzhujiluEntity> wrapper);

	List<RuzhujiluView> selectListView(Pagination page,@Param("ew") Wrapper<RuzhujiluEntity> wrapper);
	
	RuzhujiluView selectView(@Param("ew") Wrapper<RuzhujiluEntity> wrapper);
	

}
