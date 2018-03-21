package com.crm.modules.master.service.impl;

import com.crm.common.utils.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.util.List;
import java.util.Map;

import com.crm.modules.master.dao.StudentDao;
import com.crm.modules.master.entity.StudentEntity;
import com.crm.modules.master.service.StudentService;
import org.springframework.web.multipart.MultipartFile;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	@Override
	public StudentEntity queryObject(Integer sid) {
		return studentDao.queryObject(sid);
	}
	
	@Override
	public List<StudentEntity> queryList(Map<String, Object> map) {
		return studentDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map) {
		return studentDao.queryTotal(map);
	}
	
	@Override
	public void save(StudentEntity student) {
		studentDao.save(student);
	}
	
	@Override
	public void update(StudentEntity student) {
		studentDao.update(student);
	}
	
	@Override
	public void delete(Integer sid) {
		studentDao.delete(sid);
	}
	
	@Override
	public void deleteBatch(Integer[] sids) {
		studentDao.deleteBatch(sids);
	}

	@Override
	public String uploadImg(MultipartFile file) {
		if (!file.isEmpty()) {
			String storePath = "";
			try {
				storePath = Constant.imgStorePath+file.getOriginalFilename();
				BufferedOutputStream out = new BufferedOutputStream(
						new FileOutputStream(new File(storePath	)));
				out.write(file.getBytes());
				out.flush();
				out.close();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
				return "error";
			} catch (IOException e) {
				e.printStackTrace();
				return "error,";
			}
			return "success";
		} else {
			return "error";
		}
	}
}
