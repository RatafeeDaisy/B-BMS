package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 周边设施
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-08 09:32:53
 */
@TableName("zhoubiansheshi")
public class ZhoubiansheshiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ZhoubiansheshiEntity() {
		
	}
	
	public ZhoubiansheshiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 设施名称
	 */
					
	private String sheshimingcheng;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date dengjiriqi;
	
	/**
	 * 设施介绍
	 */
					
	private String sheshijieshao;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：设施名称
	 */
	public void setSheshimingcheng(String sheshimingcheng) {
		this.sheshimingcheng = sheshimingcheng;
	}
	/**
	 * 获取：设施名称
	 */
	public String getSheshimingcheng() {
		return sheshimingcheng;
	}
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
