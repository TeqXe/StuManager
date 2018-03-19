package com.crm.modules.master.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 
 * @author yuyugang
 * @webSite ${webSite}
 * @date 2018-03-19 15:34:47
 */
public class GradeEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	// 
	private Integer gid;

	// 
	private String gname;

	// 
	private String gdesc;

	/**
	 * SET：
	 */
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	
	/**
	 * GET：
	 */
	public Integer getGid() {
		return gid;
	}

	/**
	 * SET：
	 */
	public void setGname(String gname) {
		this.gname = gname;
	}
	
	/**
	 * GET：
	 */
	public String getGname() {
		return gname;
	}

	/**
	 * SET：
	 */
	public void setGdesc(String gdesc) {
		this.gdesc = gdesc;
	}
	
	/**
	 * GET：
	 */
	public String getGdesc() {
		return gdesc;
	}
}
