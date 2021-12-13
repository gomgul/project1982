package com.javassem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.UserVO;
import com.javassem.service.UserService;
import com.javassem.service.UserServiceImpl;

@Controller
@RequestMapping("login")
public class LoginController {
	
	@RequestMapping("{step}.do")
	public String userJoin(@PathVariable String step){
		return "/login/" + step;
	}
	
	@Autowired
	public UserService userService;
	
	@RequestMapping("userInsert.do")
	public String userinsert(UserVO vo){
		userService.userInsert(vo);
		return "redirect:1_login.do";
	}
	
	@RequestMapping("login.do")
	public String userLogin(UserVO vo){
		UserVO result =  userService.idCheck_Login(vo);
		if(result == null){
			return "/login/1_login";
			
		}else{
			return "./main";
		}
	}

}
