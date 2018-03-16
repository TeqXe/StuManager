package com.crm.modules.sys.controller;

import java.io.IOException;
import java.util.Map;

import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.crm.common.utils.R;
import com.crm.modules.sys.entity.SysUserEntity;
import com.crm.modules.sys.service.SysUserService;
import com.crm.modules.sys.service.SysUserTokenService;

@RestController
public class SysLoginController extends AbstractController {
	
	@Autowired
	private SysUserService sysUserService;
	
	@Autowired
	private SysUserTokenService sysUserTokenService;

	@RequestMapping(value = "/sys/login", method = RequestMethod.POST)
	public Map<String, Object> login(String username, String password) throws IOException {
		SysUserEntity user = sysUserService.queryByUserName(username);
		if (user == null || !user.getPassword().equals(new Sha256Hash(password, user.getSalt()).toHex())) {
			return R.error("login error");
		}
		if (user.getStatus() == 0) {
			return R.error("user locked");
		}
		R r = sysUserTokenService.createToken(user.getUserId());
		return r;
	}

	@RequestMapping(value = "/sys/logout", method = RequestMethod.POST)
	public R logout() {
		sysUserTokenService.logout(getUserId());
		return R.ok();
	}
}
