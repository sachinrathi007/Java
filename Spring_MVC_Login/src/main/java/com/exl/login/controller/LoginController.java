package com.exl.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.exl.login.bean.LoginBean;
import com.exl.login.service.LoginService;

/*
 * This is controller class 
 */
@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String init(Model model) {
		model.addAttribute("msg", "Login From DB Please Enter Your Login Details");
		return "login";
	}

	@RequestMapping(method = RequestMethod.POST, params = {"submitDB"})
	public String submitDB1(Model model,
			@ModelAttribute("loginBean") LoginBean loginBean) {

		String loginResult = loginService.loginFromDB(loginBean);

		if ("welcome".equals(loginResult)) {
			model.addAttribute("message", "Welcome ");
			model.addAttribute("name", loginBean.getUserName());
			model.addAttribute("type", "  through DB ");
			return loginResult;
		} else {
			model.addAttribute("error", "Invalid Details");
			model.addAttribute("msg", "Login From DB Please Enter Your Login Details");
			return "login";
		}
	}
	
	@RequestMapping(method = RequestMethod.POST, params = {"submitWS"})
	public String submitWS1(Model model,
			@ModelAttribute("loginBean") LoginBean loginBean) {

		String loginResult = loginService.loginFromWS(loginBean);
		
		if ("welcome".equals(loginResult)) {
			model.addAttribute("message", "Welcome ");
			model.addAttribute("name", loginBean.getUserName());
			model.addAttribute("type", "  through webservice ");
			return loginResult;
		}
		else if("exp".equals(loginResult)) {
			model.addAttribute("error", "Webservice not available");
			model.addAttribute("msg", "Login From Webservice Please Enter Your Login Details");
			return "login2";
		}
		else {
			model.addAttribute("error", "Invalid Details");
			model.addAttribute("msg", "Login From Webservice Please Enter Your Login Details");
			return "login2";
		}
	}
	
	@RequestMapping(value = "/loginWS", method = RequestMethod.GET)
	public String callWebservice(Model model) {
		model.addAttribute("msg", "Login From Webservice Please Enter Your Login Details");
		return "login2";
	}

}