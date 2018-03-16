package com.crm.modules.sys.dao;

import com.crm.modules.sys.entity.SysRoleMenuEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysRoleMenuDao extends BaseDao<SysRoleMenuEntity> {
	
	List<Long> queryMenuIdList(Long roleId);
}
