package com.crm.modules.sys.controller;

import com.crm.common.annotation.SysLog;
import com.crm.common.utils.Constant;
import com.crm.common.utils.PageUtils;
import com.crm.common.utils.Query;
import com.crm.common.utils.R;
import com.crm.common.validator.Assert;
import com.crm.common.validator.ValidatorUtils;
import com.crm.common.validator.group.AddGroup;
import com.crm.common.validator.group.UpdateGroup;
import com.crm.modules.sys.entity.SysUserEntity;
import com.crm.modules.sys.service.SysUserRoleService;
import com.crm.modules.sys.service.SysUserService;
import org.apache.commons.lang.ArrayUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/sys/user")
public class SysUserController extends AbstractController {

	@Autowired
	private SysUserService sysUserService;

	@Autowired
	private SysUserRoleService sysUserRoleService;

	@RequestMapping("/list")
	@RequiresPermissions("sys:user:list")
	public R list(@RequestParam Map<String, Object> params) {
		if (getUserId() != Constant.SUPER_ADMIN) {
			params.put("createUserId", getUserId());
		}
		Query query = new Query(params);
		List<SysUserEntity> userList = sysUserService.queryList(query);
		int total = sysUserService.queryTotal(query);
		PageUtils pageUtil = new PageUtils(userList, total, query.getLimit(), query.getPage());
		return R.ok().put("page", pageUtil);
	}

	@RequestMapping("/info")
	public R info() {
		return R.ok().put("user", getUser());
	}

	@SysLog("updatePassword")
	@RequestMapping("/password")
	public R password(String password, String newPassword) {
		Assert.isBlank(newPassword, "newPassword can not be empty");
		password = new Sha256Hash(password, getUser().getSalt()).toHex();
		newPassword = new Sha256Hash(newPassword, getUser().getSalt()).toHex();
		int count = sysUserService.updatePassword(getUserId(), password, newPassword);
		if (count == 0) {
			return R.error("error");
		}
		return R.ok();
	}

	@RequestMapping("/info/{userId}")
	@RequiresPermissions("sys:user:info")
	public R info(@PathVariable("userId") Long userId) {
		SysUserEntity user = sysUserService.queryObject(userId);
		List<Long> roleIdList = sysUserRoleService.queryRoleIdList(userId);
		user.setRoleIdList(roleIdList);
		return R.ok().put("user", user);
	}

	@SysLog("saveSysUserEntity")
	@RequestMapping("/save")
	@RequiresPermissions("sys:user:save")
	public R save(@RequestBody SysUserEntity user) {
		ValidatorUtils.validateEntity(user, AddGroup.class);
		user.setCreateUserId(getUserId());
		sysUserService.save(user);
		return R.ok();
	}

	@SysLog("updateSysUserEntity")
	@RequestMapping("/update")
	@RequiresPermissions("sys:user:update")
	public R update(@RequestBody SysUserEntity user) {
		ValidatorUtils.validateEntity(user, UpdateGroup.class);
		user.setCreateUserId(getUserId());
		sysUserService.update(user);
		return R.ok();
	}

	@SysLog("deleteSysUserEntity")
	@RequestMapping("/delete")
	@RequiresPermissions("sys:user:delete")
	public R delete(@RequestBody Long[] userIds) {
		if (ArrayUtils.contains(userIds, 1L)) {
			return R.error("can not delete admin");
		}
		if (ArrayUtils.contains(userIds, getUserId())) {
			return R.error("can not delete user");
		}
		sysUserService.deleteBatch(userIds);
		return R.ok();
	}
}
