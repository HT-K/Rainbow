package com.rainbow.web.movie;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rainbow.web.reply.ReplyDTO;
import com.rainbow.web.reply.ReplyService;

@Controller
@RequestMapping("/movie")
public class MovieController {
	private static final Logger logger = LoggerFactory.getLogger(MovieService.class);
	@Autowired MovieDTO movie;
	@Autowired MovieService service;
	@Autowired ReplyDTO reply;
	@Autowired ReplyService replyService;
	
	@RequestMapping("/input")
	public String input() {
		return "";
	}
	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String search(@RequestParam("keyField")String keyField,
			@RequestParam("keyWord")String keyWord,
			Model model) {
		logger.info("=== MovieController-search 진입 체크 ===");
		return "redirect:/movie/movie_list?keyField="+keyField+"&keyWord="+keyWord;
	}
	
	@RequestMapping("/movie_list/{startRow}")
	public String list(
			@PathVariable(value="startRow")String startRow,
			@RequestParam(value="keyField",defaultValue ="none")String keyField,
			@RequestParam(value="keyWord",defaultValue ="none")String keyWord,
			Model model) {
		logger.info("=== MovieController-list 진입 체크 ===");
		List<MovieDTO> list = new ArrayList<MovieDTO>();
		
		// 그냥 목록을 보여주든 검색으로 보여주든 최대치는 5개로~
		movie.setStart(Integer.parseInt(startRow));
		movie.setEnd(5);
		
		if (keyField.equals("none")) { // 그냥 영화 목록 보여줄 때
			movie.setTotalMovie(service.count());
			model.addAttribute("page", movie);
			list = service.getList(movie);
			model.addAttribute("movieList", list); 
		} else { // 검색으로 영화목록 보여줄 때
			movie.setKeyField(keyField);
			movie.setKeyWord(keyWord);
			movie.setTotalMovie(service.countBySearch(movie));
			model.addAttribute("page", movie);
			list = service.getBySearch(movie);
			model.addAttribute("movieList", list);
			
		}
		logger.info("model :{}",model);
		return "movie/movie_list.user";
	}
	
	@RequestMapping("/update")
	public String update() {
		return "";
	}
	
	@RequestMapping("/dalete")
	public String delete() {
		return "";
	}
	
	@RequestMapping("/movie_detail/{movieSeq}")
	public String detail(
			@PathVariable("movieSeq")int movieSeq,
			Model model) {
		logger.info("=== MovieController-detail{} ===");
		movie.setMovieSeq(movieSeq);
		movie = service.getBySeq(movie);
		model.addAttribute("movie", movie);
		
		// 현재 디테일로 넘어간 영화의 시퀀스를 이용하여 댓글 구해오기
		reply.setMovieSeq(movie.getMovieSeq());
		List<ReplyDTO> list = replyService.getBySeq(reply);
		model.addAttribute("reply_list", list);
		
		// 현재 영화에 달린 댓글이 몇개인지
		model.addAttribute("reply_count", replyService.count(reply));
		
		return "movie/movie_detail.user";
	}
}
