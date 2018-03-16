package com.crm.modules.sys.dao;

import com.crm.modules.sys.entity.SysRoleEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysRoleDao extends BaseDao<SysRoleEntity> {
	
	List<Long> queryRoleIdList(Long createUserId);
}
