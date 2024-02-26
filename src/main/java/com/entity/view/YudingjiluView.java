package com.entity.view;

import com.entity.YudingjiluEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 预定记录
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
@TableName("yudingjilu")
public class YudingjiluView  extends YudingjiluEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YudingjiluView(){
	}
 
 	public YudingjiluView(YudingjiluEntity yudingjiluEntity){
 	try {
			BeanUtils.copyProperties(this, yudingjiluEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
