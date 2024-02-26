package com.dao;

import com.entity.YudingjiluEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YudingjiluVO;
import com.entity.view.YudingjiluView;


/**
 * 预定记录
 * 
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
public interface YudingjiluDao extends BaseMapper<YudingjiluEntity> {
	
	List<YudingjiluVO> selectListVO(@Param("ew") Wrapper<YudingjiluEntity> wrapper);
	
	YudingjiluVO selectVO(@Param("ew") Wrapper<YudingjiluEntity> wrapper);
	
	List<YudingjiluView> selectListView(@Param("ew") Wrapper<YudingjiluEntity> wrapper);

	List<YudingjiluView> selectListView(Pagination page,@Param("ew") Wrapper<YudingjiluEntity> wrapper);
	
	YudingjiluView selectView(@Param("ew") Wrapper<YudingjiluEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YudingjiluEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YudingjiluEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YudingjiluEntity> wrapper);



}
