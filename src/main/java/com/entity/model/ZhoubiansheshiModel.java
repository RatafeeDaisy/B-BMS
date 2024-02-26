package com.entity.model;

import com.entity.ZhoubiansheshiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 周边设施
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
public class ZhoubiansheshiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 设施图片
	 */
	
	private String sheshitupian;
		
	/**
	 * 设施类型
	 */
	
	private String sheshileixing;
		
	/**
	 * 设施位置
	 */
	
	private String sheshiweizhi;
		
	/**
	 * 链接网址
	 */
	
	private String lianjiewangzhi;
		
	/**
	 * 服务设施
	 */
	
	private String fuwusheshi;
		
	/**
	 * 登记日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjiriqi;
		
	/**
	 * 设施介绍
	 */
	
	private String sheshijieshao;
				
	
	/**
	 * 设置：设施图片
	 */
	 
	public void setSheshitupian(String sheshitupian) {
		this.sheshitupian = sheshitupian;
	}
	
	/**
	 * 获取：设施图片
	 */
	public String getSheshitupian() {
		return sheshitupian;
	}
				
	
	/**
	 * 设置：设施类型
	 */
	 
	public void setSheshileixing(String sheshileixing) {
		this.sheshileixing = sheshileixing;
	}
	
	/**
	 * 获取：设施类型
	 */
	public String getSheshileixing() {
		return sheshileixing;
	}
				
	
	/**
	 * 设置：设施位置
	 */
	 
	public void setSheshiweizhi(String sheshiweizhi) {
		this.sheshiweizhi = sheshiweizhi;
	}
	
	/**
	 * 获取：设施位置
	 */
	public String getSheshiweizhi() {
		return sheshiweizhi;
	}
				
	
	/**
	 * 设置：链接网址
	 */
	 
	public void setLianjiewangzhi(String lianjiewangzhi) {
		this.lianjiewangzhi = lianjiewangzhi;
	}
	
	/**
	 * 获取：链接网址
	 */
	public String getLianjiewangzhi() {
		return lianjiewangzhi;
	}
				
	
	/**
	 * 设置：服务设施
	 */
	 
	public void setFuwusheshi(String fuwusheshi) {
		this.fuwusheshi = fuwusheshi;
	}
	
	/**
	 * 获取：服务设施
	 */
	public String getFuwusheshi() {
		return fuwusheshi;
	}
				
	
	/**
	 * 设置：登记日期
	 */
	 
	public void setDengjiriqi(Date dengjiriqi) {
		this.dengjiriqi = dengjiriqi;
	}
	
	/**
	 * 获取：登记日期
	 */
	public Date getDengjiriqi() {
		return dengjiriqi;
	}
				
	
	/**
	 * 设置：设施介绍
	 */
	 
	public void setSheshijieshao(String sheshijieshao) {
		this.sheshijieshao = sheshijieshao;
	}
	
	/**
	 * 获取：设施介绍
	 */
	public String getSheshijieshao() {
		return sheshijieshao;
	}
			
}
