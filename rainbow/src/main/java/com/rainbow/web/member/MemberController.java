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

import com.rainbow.web.movie.MovieDTO;
import com.rainbow.web.movie.MovieService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired MemberDTO member;
	@Autowired MemberService service; 
	@Autowired MovieDTO movie;
	@Autowired MovieService movieService;
	
	// /member URL 들어오고 뒤에 action 값은 이곳에 넣는다.
	@RequestMapping("/login_form") // 이건 get방식
	public String login() {
		logger.info("로그인 버튼 클릭 체크");
		return "member/login_form.user";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@RequestParam("id")String id, 
						@RequestParam("password")String password,
						Model model,
						HttpSession session) { 
		logger.info("로그인 컨트롤러 파라미터 ID : {}", id);
		logger.info("로그인 컨트롤러 파라미터 PW : {}", password);
		
		MemberDTO param = new MemberDTO();
		param.setId(id);
		param.setPassword(password);
		member = service.login(param);
		String view = "";
		
		if (member.getId() != null && !member.getId().equals("admin")) {
			logger.info("로그인 성공");
			session.setAttribute("user", member); // 로그인 성공 시 session에 로그인에 성공한 유저의 정보가 담긴 member 객체를 담는다.
			model.addAttribute("member", member); // 로그인 성공 시 다음 페이지에 request와 같은 역할을 하는 model에 member 객체를 담아 보낸다.
			view = "redirect:/home/main"; // HomeController의 /home/main 호출, redirect는 Context 경로를 포함하고 있다. 다른 컨트롤러의 URL에 접근 가능
		}else if (member.getId().equals("admin")){
			logger.info("로그인 성공");
			session.setAttribute("user", member);
			model.addAttribute("member", member);
			view = "admin/main.admin";
		} else {
			logger.info("로그인 실패");
			view = "member/login_form.user";
		}
		return view;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		member.setId(null);
		member.setName("비회원");
		session.setAttribute("user", member);
		//session.invalidate(); // 세션 무효화
		return "redirect:/home/main";
	}
	
	@RequestMapping("/join_form")
	public String join_form() {
		return "member/join_form.user";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(@RequestParam("id")String id, 
			@RequestParam("password")String password,
			@RequestParam("name")String name,
			@RequestParam("birth")String birth,
			@RequestParam("addr")String addr,
			@RequestParam("email")String email,
			HttpSession session){
		
		logger.info("=== id {} ===",id);
		logger.info("=== password {} ===",password);
		logger.info("=== name {} ===",name);
		logger.info("=== birth {} ===",birth);
		logger.info("=== addr {} ===",addr);
		logger.info("=== email {} ===",email);
		
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setBirth(birth);
		member.setAddr(addr);
		member.setEmail(email);
		
		int res = service.insert(member);
		String view = "";
		
		if (res == 1) {
			logger.info("회원가입 성공");
			/*member.setId(null);
			member.setName("비회원");
			session.setAttribute("user", member);*/
			view = "redirect:/home/main";
		} else {
			view = "member/join_form.user";
		}	
		return view;
	}
	
	@RequestMapping("/profile")
	public String profile() {
		return "member/profile.user";
	}
	
	@RequestMapping("/update_form")
	public String update_form() {
		return "member/update_form.user";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(
			@RequestParam("id")String id,
			@RequestParam("password")String password,
			@RequestParam("addr")String addr,
			@RequestParam("email")String email,
			HttpSession session) {
		logger.info("=== id {} ===",id);
		logger.info("=== password {} ===",password);
		logger.info("=== addr {} ===",addr);
		logger.info("=== email {} ===",email);
		
		member.setId(id);
		member.setPassword(password);
		member.setAddr(addr);
		member.setEmail(email);
		
		int res = service.update(member);
		String view = "";
		
		if (res == 1) {
			logger.info("업데이트 성공");
			member = service.getById(member);
			session.setAttribute("user", member); // 세션에 업데이트된 회원정보로 다시 넣기
			view = "redirect:/home/main";
		} else {
			logger.info("업데이트 실패");
			view = "member/update_form";
		}
		return view;
		
	}
	
 
	
	@RequestMapping(value="/vod_login", method=RequestMethod.POST)
	public Model vodLogin(@RequestParam("id")String id, 
						@RequestParam("password")String password,
						Model model,
						HttpSession session) { 
		logger.info("로그인 컨트롤러 파라미터 ID : {}", id);
		logger.info("로그인 컨트롤러 파라미터 PW : {}", password);
		
		MemberDTO param = new MemberDTO();
		param.setId(id);
		param.setPassword(password);
		member = service.login(param);
		if (member.getId() != null && !member.getId().equals("admin")) {
			logger.info("로그인 성공");
			session.setAttribute("user", member); // 로그인 성공 시 session에 로그인에 성공한 유저의 정보가 담긴 member 객체를 담는다.
			model.addAttribute("member", member); // 로그인 성공 시 다음 페이지에 request와 같은 역할을 하는 model에 member 객체를 담아 보낸다.
			
		}  
		return model;
	}
	@RequestMapping("/vod_logout")
	public String vodLogout(HttpSession session) {
				session.invalidate(); // 세션 무효화
		return "layout_vod";
	}
	@RequestMapping(value="/vod_join",method=RequestMethod.POST)
	public  String join(@RequestParam("id") String id
			, @RequestParam("password") String password
			, @RequestParam("name") String name
			, @RequestParam("email") String email
			, @RequestParam("addr") String addr
			, @RequestParam("year") String year,
			Model model){
		logger.info("=== id {} ===",id);
		logger.info("=== name {} ===",name);
		logger.info("=== email {} ===",email);
		logger.info("=== addr {} ===",addr);
		logger.info("=== year {} ===",year);
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setAddr(email);
		member.setBirth(year);
		member.setEmail(email);  
		if(service.getById(member) == null){
			model = service.insert(member) == 1 ? model.addAttribute("check", 1) :model.addAttribute("check", 0);
		}
		return "layout_vod";
	}

	@RequestMapping("/cinema")
	public String cineame() {
		return "global/cinema.user";
	}
}
