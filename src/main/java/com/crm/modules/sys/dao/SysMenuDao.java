package com.crm.modules.sys.dao;

import com.crm.modules.sys.entity.SysMenuEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysMenuDao extends BaseDao<SysMenuEntity> {
	
	List<SysMenuEntity> queryListParentId(Long parentId);
	
	List<SysMenuEntity> queryNotButtonList();
	
	List<SysMenuEntity> queryUserList(Long userId);
}
