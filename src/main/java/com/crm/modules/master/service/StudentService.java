package com.crm.modules.master.service;

import com.crm.modules.master.entity.StudentEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 * 
 * @author yuyugang
 * @webSite ${webSite}
 * @date 2018-03-19 15:34:47
 */
public interface StudentService {
	
	StudentEntity queryObject(Integer sid);
	
	List<StudentEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(StudentEntity student);
	
	void update(StudentEntity student);
	
	void delete(Integer sid);
	
	void deleteBatch(Integer[] sids);
}
