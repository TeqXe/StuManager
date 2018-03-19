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

import com.crm.modules.master.entity.GradeEntity;
import com.crm.modules.master.service.GradeService;
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
@RequestMapping("/master/grade")
public class GradeController {

	@Autowired
	private GradeService gradeService;
	
	/**
	 * LIST
	 */
	@RequestMapping("/list")
	@RequiresPermissions("master:grade:list")
	public R list(@RequestParam Map<String, Object> params) {
        Query query = new Query(params);
		List<GradeEntity> gradeList = gradeService.queryList(query);
		int total = gradeService.queryTotal(query);
		PageUtils pageUtil = new PageUtils(gradeList, total, query.getLimit(), query.getPage());
		return R.ok().put("page", pageUtil);
	}
	
	/**
	 * INFO
	 */
	@RequestMapping("/info/{gid}")
	@RequiresPermissions("master:grade:info")
	public R info(@PathVariable("gid") Integer gid) {
		GradeEntity grade = gradeService.queryObject(gid);
		return R.ok().put("grade", grade);
	}
	
	/**
	 * SAVE
	 */
	@RequestMapping("/save")
	@RequiresPermissions("master:grade:save")
	public R save(@RequestBody GradeEntity grade) {
		gradeService.save(grade);
		return R.ok();
	}
	
	/**
	 * UPDATE
	 */
	@RequestMapping("/update")
	@RequiresPermissions("master:grade:update")
	public R update(@RequestBody GradeEntity grade) {
		gradeService.update(grade);
		return R.ok();
	}
	
	/**
	 * DELETE
	 */
	@RequestMapping("/delete")
	@RequiresPermissions("master:grade:delete")
	public R delete(@RequestBody Integer[] gids) {
		gradeService.deleteBatch(gids);
		return R.ok();
	}
}
