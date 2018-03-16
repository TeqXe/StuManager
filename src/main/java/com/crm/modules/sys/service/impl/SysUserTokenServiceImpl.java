package com.crm.modules.sys.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crm.common.utils.R;
import com.crm.modules.sys.dao.SysUserTokenDao;
import com.crm.modules.sys.entity.SysUserTokenEntity;
import com.crm.modules.sys.oauth.TokenGenerator;
import com.crm.modules.sys.service.SysUserTokenService;

@Service("sysUserTokenService")
public class SysUserTokenServiceImpl implements SysUserTokenService {

	@Autowired
	private SysUserTokenDao sysUserTokenDao;

	private final static int EXPIRE = 3600 * 12;

	@Override
	public SysUserTokenEntity queryByUserId(Long userId) {
		return sysUserTokenDao.queryByUserId(userId);
	}

	@Override
	public void save(SysUserTokenEntity token) {
		sysUserTokenDao.save(token);
	}

	@Override
	public void update(SysUserTokenEntity token) {
		sysUserTokenDao.update(token);
	}

	@Override
	public R createToken(long userId) {
		String token = TokenGenerator.generateValue();
		Date now = new Date();
		Date expireTime = new Date(now.getTime() + EXPIRE * 1000);
		SysUserTokenEntity tokenEntity = queryByUserId(userId);
		if (tokenEntity == null) {
			tokenEntity = new SysUserTokenEntity();
			tokenEntity.setUserId(userId);
			tokenEntity.setToken(token);
			tokenEntity.setUpdateTime(now);
			tokenEntity.setExpireTime(expireTime);
			save(tokenEntity);
		} else {
			tokenEntity.setToken(token);
			tokenEntity.setUpdateTime(now);
			tokenEntity.setExpireTime(expireTime);
			update(tokenEntity);
		}
		R r = R.ok().put("token", token).put("expire", EXPIRE);
		return r;
	}

	@Override
	public void logout(long userId) {
		String token = TokenGenerator.generateValue();
		SysUserTokenEntity tokenEntity = new SysUserTokenEntity();
		tokenEntity.setUserId(userId);
		tokenEntity.setToken(token);
		update(tokenEntity);
	}
}
