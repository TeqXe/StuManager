package com.crm.modules.master.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import com.crm.modules.master.dao.GradeDao;
import com.crm.modules.master.entity.GradeEntity;
import com.crm.modules.master.service.GradeService;

@Service("gradeService")
public class GradeServiceImpl implements GradeService {

	@Autowired
	private GradeDao gradeDao;
	
	@Override
	public GradeEntity queryObject(Integer gid) {
		return gradeDao.queryObject(gid);
	}
	
	@Override
	public List<GradeEntity> queryList(Map<String, Object> map) {
		return gradeDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map) {
		return gradeDao.queryTotal(map);
	}
	
	@Override
	public void save(GradeEntity grade) {
		gradeDao.save(grade);
	}
	
	@Override
	public void update(GradeEntity grade) {
		gradeDao.update(grade);
	}
	
	@Override
	public void delete(Integer gid) {
		gradeDao.delete(gid);
	}
	
	@Override
	public void deleteBatch(Integer[] gids) {
		gradeDao.deleteBatch(gids);
	}
}
