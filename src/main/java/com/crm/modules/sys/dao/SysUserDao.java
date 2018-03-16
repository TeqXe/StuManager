package com.crm.modules.sys.dao;

import com.crm.modules.sys.entity.SysUserEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface SysUserDao extends BaseDao<SysUserEntity> {
	
	List<String> queryAllPerms(Long userId);
	
	List<Long> queryAllMenuId(Long userId);
	
	SysUserEntity queryByUserName(String username);
	
	int updatePassword(Map<String, Object> map);
}
