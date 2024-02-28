package com.entity.vo;

import com.entity.YonghuxinxitongjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 用户信息统计
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-08 23:11:21
 */
public class YonghuxinxitongjiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 年级专业
	 */
	
	private String nianjizhuanye;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 认养树木编号
	 */
	
	private String renyangshumubianhao;
		
	/**
	 * 捐款总金额
	 */
	
	private Integer juankuanzongjine;
				
	
	/**
	 * 设置：年级专业
	 */
	 
	public void setNianjizhuanye(String nianjizhuanye) {
		this.nianjizhuanye = nianjizhuanye;
	}
	
	/**
	 * 获取：年级专业
	 */
	public String getNianjizhuanye() {
		return nianjizhuanye;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：认养树木编号
	 */
	 
	public void setRenyangshumubianhao(String renyangshumubianhao) {
		this.renyangshumubianhao = renyangshumubianhao;
	}
	
	/**
	 * 获取：认养树木编号
	 */
	public String getRenyangshumubianhao() {
		return renyangshumubianhao;
	}
				
	
	/**
	 * 设置：捐款总金额
	 */
	 
	public void setJuankuanzongjine(Integer juankuanzongjine) {
		this.juankuanzongjine = juankuanzongjine;
	}
	
	/**
	 * 获取：捐款总金额
	 */
	public Integer getJuankuanzongjine() {
		return juankuanzongjine;
	}
			
}
