package com.boot.backendProject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {
	
	// 로그인 페이지로 이동
	@RequestMapping("/")
	public String login() {
		return "loginForm";
	}
	
	// 로그인 처리
	@ResponseBody
	@RequestMapping("/login")
	public String loginCheck(@RequestParam("id") String id,
			 									 @RequestParam("pw") String pw) { 
		// Ajax 사용하는 경우 : id와 pw로 보냈으므로, id와 pw로 받음
		// 로그인 체크(가정)
		String result = "";
		if(id.equals("abcd") && pw.equals("1234"))
			result = "success";
		else 
			result = "fail";
		return result;
		
	}
}
