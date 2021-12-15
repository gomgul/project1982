package com.javassem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.OwnerVO;

@Controller
@RequestMapping("owner")
public class YiController {
	
	@RequestMapping("owner_login")
	public void ownerlogin(OwnerVO vo){
		
		
	}
	
	@RequestMapping("owner_register")
	public void owner_register(OwnerVO vo){
		
		
	}
}
