package com.rainbow.web.home;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rainbow.web.member.MemberDTO;
import com.rainbow.web.movie.MovieDTO;
import com.rainbow.web.movie.MovieService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired MemberDTO member;
	@Autowired MovieDTO movie;
	@Autowired MovieService movieService;
	
	@RequestMapping(value="/", method=RequestMethod.GET) 
	public String home(
			Model model,
			HttpSession session) { // 어플리케이션 실행 시 체일 먼저 호출되는 메소드 (web.xml에서 설정되어있다)
		logger.info("메인 페이지 진입 체크");
		member.setId(null);
		member.setName("비회원");
		session.setAttribute("user", member);
		
		movie.setStart(1);
		movie.setEnd(8);
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		list = movieService.getList(movie);
		model.addAttribute("movieList", list);
		return "global/main.user";
	}
	
	@RequestMapping("/home/main")
	public String main(Model model) {
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		list = movieService.getList(movie);
		model.addAttribute("movieList", list);
		return "global/main.user";
	}
	
}
