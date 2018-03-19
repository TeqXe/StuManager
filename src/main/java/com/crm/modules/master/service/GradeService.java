package com.crm.modules.master.service;

import com.crm.modules.master.entity.GradeEntity;

import java.util.List;
import java.util.Map;

/**
 * 
 * 
 * @author yuyugang
 * @webSite ${webSite}
 * @date 2018-03-19 15:34:47
 */
public interface GradeService {
	
	GradeEntity queryObject(Integer gid);
	
	List<GradeEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(GradeEntity grade);
	
	void update(GradeEntity grade);
	
	void delete(Integer gid);
	
	void deleteBatch(Integer[] gids);
}
