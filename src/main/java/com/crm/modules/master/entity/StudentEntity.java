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
public class StudentEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	// 
	private Integer sid;

	// 
	private String sname;

	// 
	private String sex;

	// 
	private Date birth;

	// 
	private Integer gid;

	/**
	 * SET：
	 */
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	
	/**
	 * GET：
	 */
	public Integer getSid() {
		return sid;
	}

	/**
	 * SET：
	 */
	public void setSname(String sname) {
		this.sname = sname;
	}
	
	/**
	 * GET：
	 */
	public String getSname() {
		return sname;
	}

	/**
	 * SET：
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	/**
	 * GET：
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * SET：
	 */
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	
	/**
	 * GET：
	 */
	public Date getBirth(){
		return birth;
	}

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
}
