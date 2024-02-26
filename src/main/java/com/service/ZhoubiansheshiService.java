package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhoubiansheshiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhoubiansheshiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhoubiansheshiView;


/**
 * 周边设施
 *
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
public interface ZhoubiansheshiService extends IService<ZhoubiansheshiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhoubiansheshiVO> selectListVO(Wrapper<ZhoubiansheshiEntity> wrapper);
   	
   	ZhoubiansheshiVO selectVO(@Param("ew") Wrapper<ZhoubiansheshiEntity> wrapper);
   	
   	List<ZhoubiansheshiView> selectListView(Wrapper<ZhoubiansheshiEntity> wrapper);
   	
   	ZhoubiansheshiView selectView(@Param("ew") Wrapper<ZhoubiansheshiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhoubiansheshiEntity> wrapper);
   	

}

