package com.crm.modules.sys.oauth;

import com.crm.modules.sys.entity.SysUserEntity;
import com.crm.modules.sys.entity.SysUserTokenEntity;
import com.crm.modules.sys.service.ShiroService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Set;

@Component
public class OAuthRealm extends AuthorizingRealm {
	
	@Autowired
	private ShiroService shiroService;

	@Override
	public boolean supports(AuthenticationToken token) {
		return token instanceof OAuthToken;
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		SysUserEntity user = (SysUserEntity) principals.getPrimaryPrincipal();
		Long userId = user.getUserId();
		Set<String> permsSet = shiroService.getUserPermissions(userId);
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.setStringPermissions(permsSet);
		return info;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String accessToken = (String) token.getPrincipal();
		SysUserTokenEntity tokenEntity = shiroService.queryByToken(accessToken);
		if (tokenEntity == null || tokenEntity.getExpireTime().getTime() < System.currentTimeMillis()) {
			throw new IncorrectCredentialsException("token Expire");
		}
		SysUserEntity user = shiroService.queryUser(tokenEntity.getUserId());
		if (user.getStatus() == 0) {
			throw new LockedAccountException("LockedAccount");
		}
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, accessToken, getName());
		return info;
	}
}
