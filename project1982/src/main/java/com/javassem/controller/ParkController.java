package com.javassem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.ParkVO;
import com.javassem.domain.UserVO;
import com.javassem.service.ParkService;
import com.javassem.service.UserService;

@Controller
@RequestMapping("admin")
public class ParkController {
	
	
	@Autowired
	public ParkService parkService;
	
	@RequestMapping("{step}.do")
	public String parkJoin(@PathVariable String step){
		System.out.println("호출");
		return "/admin/" +step;
	}
	
	@RequestMapping("adminPage.do")
	public String userLogin(ParkVO vo){
		ParkVO result =  parkService.idCheck_Login(vo);
		if(result != null){
			return "/admin/" + "adminPage";
			
		}else{
			System.out.println("실패");
			return "./main";
		}
	}

}
