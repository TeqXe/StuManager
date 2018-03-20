package com.crm.modules.master.controller;

import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.crm.modules.master.entity.StudentEntity;
import com.crm.modules.master.service.StudentService;
import com.crm.common.utils.PageUtils;
import com.crm.common.utils.Query;
import com.crm.common.utils.R;
import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * 
 * @author yuyugang
 * @webSite ${webSite}
 * @date 2018-03-19 15:34:47
 */
@RestController
@RequestMapping("/master/student")
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	/**
	 * LIST
	 */
	@RequestMapping("/list")
	@RequiresPermissions("master:student:list")
	public R list(@RequestParam Map<String, Object> params) {
        Query query = new Query(params);
		List<StudentEntity> studentList = studentService.queryList(query);
		int total = studentService.queryTotal(query);
		PageUtils pageUtil = new PageUtils(studentList, total, query.getLimit(), query.getPage());
		return R.ok().put("page", pageUtil);
	}
	
	/**
	 * INFO
	 */
	@RequestMapping("/info/{sid}")
	@RequiresPermissions("master:student:info")
	public R info(@PathVariable("sid") Integer sid) {
		StudentEntity student = studentService.queryObject(sid);
		return R.ok().put("student", student);
	}
	
	/**
	 * SAVE
	 */
	@RequestMapping("/save")
	@RequiresPermissions("master:student:save")
	public R save(@RequestBody StudentEntity student) {
		studentService.save(student);
		return R.ok();
	}

	@RequestMapping("/uploadImg")
	@RequiresPermissions("master:student:save")
	public R uploadImg(MultipartFile file){
		String storePath = studentService.uploadImg(file);
		return R.ok().put("storePath",storePath);
	}
	
	/**
	 * UPDATE
	 */
	@RequestMapping("/update")
	@RequiresPermissions("master:student:update")
	public R update(@RequestBody StudentEntity student) {
		studentService.update(student);
		return R.ok();
	}
	
	/**
	 * DELETE
	 */
	@RequestMapping("/delete")
	@RequiresPermissions("master:student:delete")
	public R delete(@RequestBody Integer[] sids) {
		studentService.deleteBatch(sids);
		return R.ok();
	}
}
