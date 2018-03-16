package com.crm.modules.sys.service;

import com.crm.modules.sys.entity.SysUserTokenEntity;
import com.crm.common.utils.R;

public interface SysUserTokenService {

	SysUserTokenEntity queryByUserId(Long userId);

	void save(SysUserTokenEntity token);

	void update(SysUserTokenEntity token);

	R createToken(long userId);

	void logout(long userId);
}
