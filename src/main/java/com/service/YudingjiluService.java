package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YudingjiluEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YudingjiluVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YudingjiluView;


/**
 * 预定记录
 *
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
public interface YudingjiluService extends IService<YudingjiluEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YudingjiluVO> selectListVO(Wrapper<YudingjiluEntity> wrapper);
   	
   	YudingjiluVO selectVO(@Param("ew") Wrapper<YudingjiluEntity> wrapper);
   	
   	List<YudingjiluView> selectListView(Wrapper<YudingjiluEntity> wrapper);
   	
   	YudingjiluView selectView(@Param("ew") Wrapper<YudingjiluEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YudingjiluEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<YudingjiluEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<YudingjiluEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<YudingjiluEntity> wrapper);



}

