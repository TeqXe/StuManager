package com.crm.modules.sys.service;

import com.crm.modules.sys.entity.SysUserEntity;

import java.util.List;
import java.util.Map;

public interface SysUserService {

	List<String> queryAllPerms(Long userId);

	List<Long> queryAllMenuId(Long userId);

	SysUserEntity queryByUserName(String username);

	SysUserEntity queryObject(Long userId);

	List<SysUserEntity> queryList(Map<String, Object> map);

	int queryTotal(Map<String, Object> map);

	void save(SysUserEntity user);

	void update(SysUserEntity user);

	void deleteBatch(Long[] userIds);

	int updatePassword(Long userId, String password, String newPassword);
}
