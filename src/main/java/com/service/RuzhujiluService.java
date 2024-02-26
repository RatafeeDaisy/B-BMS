package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.RuzhujiluEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.RuzhujiluVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.RuzhujiluView;


/**
 * 入住记录
 *
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
public interface RuzhujiluService extends IService<RuzhujiluEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<RuzhujiluVO> selectListVO(Wrapper<RuzhujiluEntity> wrapper);
   	
   	RuzhujiluVO selectVO(@Param("ew") Wrapper<RuzhujiluEntity> wrapper);
   	
   	List<RuzhujiluView> selectListView(Wrapper<RuzhujiluEntity> wrapper);
   	
   	RuzhujiluView selectView(@Param("ew") Wrapper<RuzhujiluEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<RuzhujiluEntity> wrapper);
   	

}

