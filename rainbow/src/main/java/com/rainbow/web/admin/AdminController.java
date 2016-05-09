package com.rainbow.web.admin;

import java.util.ArrayList;
import java.util.List;








import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rainbow.web.member.MemberDTO;
import com.rainbow.web.movie.MovieDTO;
import com.rainbow.web.movie.MovieService;



@Controller
@RequestMapping("/admin")
public class AdminController {
   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
   @Autowired MemberDTO member;
   @Autowired MovieDTO movie;
   @Autowired AdminService service;
   @Autowired MovieService movieService;
   
   @RequestMapping("/content")
   public String getAdminPage(Model model){
      logger.info("===movie-list(GET)===");
		List<MovieDTO> list =  new ArrayList<MovieDTO>();
		movie.setStart(1);
		movie.setEnd(movieService.count());
		list = service.getList(movie);
		model.addAttribute("list",list);
      return "/admin/content";
	}
   

   @RequestMapping("/edit/{movieSeq}")
	public String getBySeq(@PathVariable("movieSeq")int movieSeq, 
			Model model){
		logger.info("=== movie-getBySeq() === {}", movieSeq);
			movie.setMovieSeq(movieSeq);
			movie = service.getBySeq(movie);
			model.addAttribute("movie",movie);
		
			
		return "/admin/edit";
	}
   
   
   
   @RequestMapping(value = "/update",  method=RequestMethod.POST)
	public void update(
			@RequestParam()String title,
			@RequestParam()int rating,
			@RequestParam()String genre,
			@RequestParam()String openDate,
			@RequestParam()String grade,
			@RequestParam()String runningtime,
			@RequestParam()String director,
			@RequestParam()String actor,
			@RequestParam()String content,
			@RequestParam()String image,
			Model model){
		logger.info("=== update() ===");
		logger.info("update() 에 넘어온 컨텐츠 : {}",title);
		movie.setTitle(title);
		movie.setRating(rating);
		movie.setGenre(genre);
		movie.setOpenDate(openDate);
		movie.setGrade(grade);
		movie.setRunningtime(runningtime);
		movie.setDirector(director);
		movie.setActor(actor);
		movie.setContent(content);
		movie.setImage(image);
		service.update(movie);
		model.addAttribute("movie",movie);
	}
	
   @RequestMapping("/delete")
	public String delete(
			@RequestParam("title")String title,Model model){
	   movie.setTitle(title);
		int result = service.remove(movie);
		if (result == 1) {
			model.addAttribute("movie","삭제 성공 !!");
		} else {
			model.addAttribute("movie","삭제 실패 !!");
		}
		return "/admin/content";
	}
}