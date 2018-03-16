package com.crm.modules.sys.service.impl;

import com.crm.common.utils.Constant;
import com.crm.modules.sys.dao.SysMenuDao;
import com.crm.modules.sys.dao.SysUserDao;
import com.crm.modules.sys.dao.SysUserTokenDao;
import com.crm.modules.sys.entity.SysMenuEntity;
import com.crm.modules.sys.entity.SysUserEntity;
import com.crm.modules.sys.entity.SysUserTokenEntity;
import com.crm.modules.sys.service.ShiroService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ShiroServiceImpl implements ShiroService {

	@Autowired
	private SysMenuDao sysMenuDao;

	@Autowired
	private SysUserDao sysUserDao;

	@Autowired
	private SysUserTokenDao sysUserTokenDao;

	@Override
	public Set<String> getUserPermissions(long userId) {
		List<String> permsList;

		if (userId == Constant.SUPER_ADMIN) {
			List<SysMenuEntity> menuList = sysMenuDao.queryList(new HashMap<>());
			permsList = new ArrayList<>(menuList.size());
			for (SysMenuEntity menu : menuList) {
				permsList.add(menu.getPerms());
			}
		} else {
			permsList = sysUserDao.queryAllPerms(userId);
		}
		Set<String> permsSet = new HashSet<>();
		for (String perms : permsList) {
			if (StringUtils.isBlank(perms)) {
				continue;
			}
			permsSet.addAll(Arrays.asList(perms.trim().split(",")));
		}
		return permsSet;
	}

	@Override
	public SysUserTokenEntity queryByToken(String token) {
		return sysUserTokenDao.queryByToken(token);
	}

	@Override
	public SysUserEntity queryUser(Long userId) {
		return sysUserDao.queryObject(userId);
	}
}
