package com.javassem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.service.MemberService;


@Controller
public class Membercontroller2 {
	@Autowired
	MemberService memberService;
	
	@RequestMapping("{step}.do")
	public String step(@PathVariable String step) {
		return "/" + step;
	}
}
