package com.rainbow.web.member;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired MemberDTO member;
	@Autowired MemberService service; 
	
	// /member URL 들어오고 뒤에 action 값은 이곳에 넣는다.
	@RequestMapping("/login_form") // 이건 get방식
	public String login() {
		logger.info("로그인 버튼 클릭 체크");
		return "member/login_form.user";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@RequestParam("id")String id, 
						@RequestParam("password")String password,
						HttpSession session, 
						Model model) { 
		logger.info("로그인 컨트롤러 파라미터 ID : {}", id);
		logger.info("로그인 컨트롤러 파라미터 PW : {}", password);
		
		MemberDTO param = new MemberDTO();
		param.setId(id);
		param.setPassword(password);
		member = service.login(param);
		String view = "";
		
		if (member.getId() != null) {
			logger.info("로그인 성공");
			session.setAttribute("user", member); // 로그인 성공 시 session에 로그인에 성공한 유저의 정보가 담긴 member 객체를 담는다.
			model.addAttribute("member", member); // 로그인 성공 시 다음 페이지에 request와 같은 역할을 하는 model에 member 객체를 담아 보낸다.
			view = "global/main.user"; 
		} else {
			logger.info("로그인 실패");
			view = "member/login_form.user";
		}
		return view;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.setAttribute("user", null);
		session.invalidate(); // 세션 무효화
		return "global/main.user";
	}
}
