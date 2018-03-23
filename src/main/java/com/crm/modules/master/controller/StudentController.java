package com.crm.modules.master.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
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

	@RequestMapping("/getEchartsInfo")
	public R getEchartsInfo(){
		List<Double> result1 = new ArrayList<Double>();
		List<Double> result2 = new ArrayList<Double>();
		List<Double> result3 = new ArrayList<Double>();
		for (int i=0;i<24;i++){
			result1.add(new BigDecimal(Math.random()*1).setScale(2,BigDecimal.ROUND_HALF_DOWN).doubleValue());
			result2.add(new BigDecimal(Math.random()*1).setScale(2,BigDecimal.ROUND_HALF_DOWN).doubleValue());
			result3.add(new BigDecimal(Math.random()*1).setScale(2,BigDecimal.ROUND_HALF_DOWN).doubleValue());
		}
		System.out.println("随机产生的reusltArr1:"+result1);
		System.out.println("随机产生的reusltArr2:"+result2);
		System.out.println("随机产生的reusltArr3:"+result3);
		//延时测试echarts loading
		try{
			Thread.sleep(2000);
		}catch (Exception e){

		}
		return R.ok().put("resultArr1", JSONArray.fromObject(result1)).put("resultArr2",JSONArray.fromObject(result2)).put("resultArr3",JSONArray.fromObject(result3));
	}
}
