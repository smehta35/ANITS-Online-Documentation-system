package com.outbottle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.outbottle.dto.User;
import com.outbottle.dto.Users;
import com.outbottle.service.LoginService;
import com.outbottle.service.RegisterService;
@Controller
@Transactional
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/authenticate", method = RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("login", "command", new User());
	}

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@ModelAttribute("document-management-system")User user, ModelMap model) {
		String page = "index";
                //String page = null;
		if(loginService.login(user)) {
			 page = "home";
		}
		return page;
	}
        @Autowired
	private RegisterService registerService;
        @RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		return new ModelAndView("register", "command", new Users());
	}
        @RequestMapping(value="/register", method=RequestMethod.POST)
        @SuppressWarnings("empty-statement")
	public String register(@ModelAttribute("document-management-system")Users user, ModelMap model) {
	
                String page = "register";
		if(registerService.register(user));
			 page = "index";
		
		return page;
	}
        
}
