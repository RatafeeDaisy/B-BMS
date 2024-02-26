package com.dao;

import com.entity.ZhoubiansheshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhoubiansheshiVO;
import com.entity.view.ZhoubiansheshiView;


/**
 * 周边设施
 * 
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
public interface ZhoubiansheshiDao extends BaseMapper<ZhoubiansheshiEntity> {
	
	List<ZhoubiansheshiVO> selectListVO(@Param("ew") Wrapper<ZhoubiansheshiEntity> wrapper);
	
	ZhoubiansheshiVO selectVO(@Param("ew") Wrapper<ZhoubiansheshiEntity> wrapper);
	
	List<ZhoubiansheshiView> selectListView(@Param("ew") Wrapper<ZhoubiansheshiEntity> wrapper);

	List<ZhoubiansheshiView> selectListView(Pagination page,@Param("ew") Wrapper<ZhoubiansheshiEntity> wrapper);
	
	ZhoubiansheshiView selectView(@Param("ew") Wrapper<ZhoubiansheshiEntity> wrapper);
	

}
