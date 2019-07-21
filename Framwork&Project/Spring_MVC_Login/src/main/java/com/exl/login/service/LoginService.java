package com.exl.login.service;

import com.exl.login.bean.LoginBean;

public interface LoginService {

	public String loginFromWS(LoginBean loginBean);
	public String loginFromDB(LoginBean loginBean);

}
