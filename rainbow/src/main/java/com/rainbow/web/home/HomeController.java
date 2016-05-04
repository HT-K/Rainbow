package com.rainbow.web.home;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rainbow.web.member.MemberDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired MemberDTO member;
	
	@RequestMapping(value="/", method=RequestMethod.GET) 
	public String home(HttpSession session) { // 어플리케이션 실행 시 체일 먼저 호출되는 메소드 (web.xml에서 설정되어있다)
		logger.info("메인 페이지 진입 체크");
		member.setName("비회원");
		session.setAttribute("user", member);
		return "global/main.user";
	}
	
	@RequestMapping("/home/main")
	public String main() {
		return "global/main.user";
	}
	
}
