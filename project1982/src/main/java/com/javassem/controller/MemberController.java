package com.javassem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javassem.domain.MemberVO;
import com.javassem.service.MemberService;
import com.javassem.service.MemberServiceImpl;

@Controller
@RequestMapping("user")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("{step}.do")
	public String step(@PathVariable String step) {
		return "/user/" + step;
	}
	
	@RequestMapping("userInsert.do")
	public ModelAndView userJoin_ok(MemberVO vo) {
		memberService.userInsert(vo);
		
		String message = "가입성공";
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/user/userJoin_ok");
		mv.addObject("message", message);
		return mv;
	}
	
	@RequestMapping("login.do")
	public String login(MemberVO vo, Model m) {
		MemberVO result = memberService.idCheck_Login(vo);
		
		
		if(result == null || result.getUserPass() == null) {
			return "/user/userLogin";
		}else {
			m.addAttribute("userName",result.getUserName());
			m.addAttribute("userId",result.getUserId());
			m.addAttribute("userPass",result.getUserPass());
			
			return "/user/Main";
			
		}

		

	}
	
	@RequestMapping(value="idCheck.do",
			produces="application/x-www-form-urlencoded; charset=UTF-8")
	@ResponseBody //*********************** 비동기 통신을 의미
	public String idCheck(MemberVO vo) {
		MemberVO result = memberService.idCheck_Login(vo);
		String message = "사용가능";
		if(result != null) message = "중복된 아이디입니다.";
		
		return message;
	}
	
//	@RequestMapping("sample.do")
//	public void userJoin_ok2(MemberVO vo) {
//		
//		
//		MemberVO result = memberService.date_check(vo);
//		
//		System.out.println(result.getSysdate());
//	}
	
	@RequestMapping("sample.do")
	public void userJoin_ok2(String date1) {
		
		
		String result = memberService.date_now(date1);
		
		System.out.println(memberService.date_now(date1));
	}
		
	
}
