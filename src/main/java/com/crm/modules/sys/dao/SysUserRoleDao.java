package com.crm.modules.sys.dao;

import com.crm.modules.sys.entity.SysUserRoleEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysUserRoleDao extends BaseDao<SysUserRoleEntity> {
	
	List<Long> queryRoleIdList(Long userId);
}
