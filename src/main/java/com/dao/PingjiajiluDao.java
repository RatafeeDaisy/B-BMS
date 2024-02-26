package com.dao;

import com.entity.PingjiajiluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.PingjiajiluVO;
import com.entity.view.PingjiajiluView;


/**
 * 评价记录
 * 
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
public interface PingjiajiluDao extends BaseMapper<PingjiajiluEntity> {
	
	List<PingjiajiluVO> selectListVO(@Param("ew") Wrapper<PingjiajiluEntity> wrapper);
	
	PingjiajiluVO selectVO(@Param("ew") Wrapper<PingjiajiluEntity> wrapper);
	
	List<PingjiajiluView> selectListView(@Param("ew") Wrapper<PingjiajiluEntity> wrapper);

	List<PingjiajiluView> selectListView(Pagination page,@Param("ew") Wrapper<PingjiajiluEntity> wrapper);
	
	PingjiajiluView selectView(@Param("ew") Wrapper<PingjiajiluEntity> wrapper);
	

}
