package com.crm.modules.sys.service;

import com.crm.modules.sys.entity.SysUserEntity;
import com.crm.modules.sys.entity.SysUserTokenEntity;

import java.util.Set;

public interface ShiroService {
	
	Set<String> getUserPermissions(long userId);

	SysUserTokenEntity queryByToken(String token);

	SysUserEntity queryUser(Long userId);
}
