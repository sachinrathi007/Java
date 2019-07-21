package com.exl.login;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import com.exl.login.bean.LoginBean;
import com.exl.login.service.LoginService;
import com.exl.login.service.LoginServiceImpl;

/*
 *This is JUnit for Login Webservice 
 */
public class JUnitLoginService {

	@Test
	public void testDoLogin() {
		LoginBean loginBean = new LoginBean(); 
		LoginService loginService = new LoginServiceImpl(); 
		loginBean.setPassword("USER01");
		loginBean.setUserName("US01");
		assertEquals(loginService.loginFromDB(loginBean), "welcome");
	}

}
