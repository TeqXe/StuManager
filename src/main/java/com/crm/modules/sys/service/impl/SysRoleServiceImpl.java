package com.crm.modules.sys.service.impl;

import com.crm.modules.sys.dao.SysRoleDao;
import com.crm.modules.sys.entity.SysRoleEntity;
import com.crm.modules.sys.service.SysRoleMenuService;
import com.crm.modules.sys.service.SysRoleService;
import com.crm.modules.sys.service.SysUserRoleService;
import com.crm.modules.sys.service.SysUserService;
import com.crm.common.utils.Constant;
import com.crm.common.exception.RRException;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("sysRoleService")
public class SysRoleServiceImpl implements SysRoleService {
	
	@Autowired
	private SysRoleDao sysRoleDao;
	
	@Autowired
	private SysRoleMenuService sysRoleMenuService;
	
	@Autowired
	private SysUserRoleService sysUserRoleService;
	
	@Autowired
	private SysUserService sysUserService;

	@Override
	public SysRoleEntity queryObject(Long roleId) {
		return sysRoleDao.queryObject(roleId);
	}

	@Override
	public List<SysRoleEntity> queryList(Map<String, Object> map) {
		return sysRoleDao.queryList(map);
	}

	@Override
	public int queryTotal(Map<String, Object> map) {
		return sysRoleDao.queryTotal(map);
	}

	@Override
	@Transactional
	public void save(SysRoleEntity role) {
		role.setCreateTime(new Date());
		sysRoleDao.save(role);
		checkPrems(role);
		sysRoleMenuService.saveOrUpdate(role.getRoleId(), role.getMenuIdList());
	}

	@Override
	@Transactional
	public void update(SysRoleEntity role) {
		sysRoleDao.update(role);
		checkPrems(role);
		sysRoleMenuService.saveOrUpdate(role.getRoleId(), role.getMenuIdList());
	}

	@Override
	@Transactional
	public void deleteBatch(Long[] roleIds) {
		sysRoleDao.deleteBatch(roleIds);
	}

	@Override
	public List<Long> queryRoleIdList(Long createUserId) {
		return sysRoleDao.queryRoleIdList(createUserId);
	}

	private void checkPrems(SysRoleEntity role) {
		if (role.getCreateUserId() == Constant.SUPER_ADMIN) {
			return;
		}
		List<Long> menuIdList = sysUserService.queryAllMenuId(role.getCreateUserId());
		if (!menuIdList.containsAll(role.getMenuIdList())) {
			throw new RRException("error");
		}
	}
}
