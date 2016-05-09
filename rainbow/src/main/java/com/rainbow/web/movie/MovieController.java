package com.rainbow.web.movie;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/movie")
public class MovieController {
	private static final Logger logger = LoggerFactory.getLogger(MovieService.class);
	@Autowired MovieDTO movie;
	@Autowired MovieService service;
	
	@RequestMapping("/input")
	public String input() {
		return "";
	}
	
	@RequestMapping("/search")
	public String findByTitle(@RequestParam(value="title",defaultValue ="none")String title,
			@RequestParam(value="director",defaultValue ="none")String director,
			Model model) {
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		logger.info("=== 제목 ===",movie.getTitle());
		logger.info("=== 감독 ===",movie.getDirector());
		if (title.equals("none")) {
			list = service.getByName(movie);
			 model.addAttribute("list",list);
			 logger.info("검색된 글 목록1 : {} ",list);
		} else {
			list = service.getByName(movie);
			 model.addAttribute("list",list);
			 logger.info("검색된 글 목록2 : {} ",list);
		}
		model.addAttribute("model", model);
		return "movie/movie_list.user";
	}
	
	@RequestMapping("/movie_list")
	public String list(Model model) {
		logger.info("=== MovieController-list{} ===");
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		logger.info("=== 제목 ===",movie.getTitle());
		logger.info("=== 장르 ===",movie.getGenre());
		logger.info("=== 개봉일 ===",movie.getOpenDate());
		logger.info("=== 등급 ===",movie.getGrade());
		logger.info("=== 상영시간 ===",movie.getRunningtime());
		logger.info("=== 감독 ===",movie.getDirector());
		logger.info("=== 배우 ===",movie.getActor());
		logger.info("=== 이미지 ===",movie.getImage());
		list = service.getList();
		model.addAttribute("list", list);
		return "movie/movie_list.user";
	}
	
	@RequestMapping("/count")
	public String count() {
		return "";
	}
	
	@RequestMapping("/update")
	public String update() {
		return "";
	}
	
	@RequestMapping("/dalete")
	public String delete() {
		return "";
	}
	
	@RequestMapping("/movie_detail")
	public String detail() {
		logger.info("=== MovieController-detail{} ===");
		return "movie/movie_detail";
	}
}
