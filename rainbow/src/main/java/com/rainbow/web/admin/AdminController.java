package com.rainbow.web.admin;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;





import java.util.Properties;

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
import org.springframework.web.multipart.MultipartFile;

import com.rainbow.web.movie.Constants;
import com.rainbow.web.movie.MovieDTO;
import com.rainbow.web.movie.MovieService;
import com.rainbow.web.movie.FileUpload;
import com.rainbow.web.reply.ReplyDTO;
import com.rainbow.web.reply.ReplyService;

@Controller
@SessionAttributes("movie")
@RequestMapping("/admin")
public class AdminController {
   private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
   @Autowired MovieDTO movie;
   @Autowired MovieService movieService;
   @Autowired ReplyDTO reply;
   @Autowired ReplyService replyService;
   
   
// ================================= MOVIE MANAGED BY ADMIN =========================================================
   
   
   //=====TRANSPORTS MOVIE ADD FROM ======
  /* @RequestMapping("/input_form")
	public String input_form (){
		return "admin/input_form.admin";
	}*/
   
   //========= MOVIE ADD ================
   @RequestMapping("/input")
	public String input (@RequestParam(value="title",required=false)String title,
			@RequestParam(value="rating",required=false)int rating,
			@RequestParam(value="genre",required=false)String genre,
			@RequestParam(value="openDate",required=false)String openDate,
			@RequestParam(value="grade",required=false)String grade,
			@RequestParam(value="runningtime",required=false)String runningtime,
			@RequestParam(value="director",required=false)String director,
			@RequestParam(value="actor",required=false)String actor,
			@RequestParam(value="content",required=false)String content,
			@RequestParam(value="image",required=false)MultipartFile image,
			Model model){
		logger.info("====== ArticleController-input()======");
		logger.info("=== title {} ===",title);
		logger.info("=== rating {} ===",rating);
		logger.info("=== genre {} ===",genre);
		logger.info("=== openDate {} ===",openDate);
		logger.info("=== grade {} ===",grade);
		logger.info("=== runningtime {} ===",runningtime);
		logger.info("=== director {} ===",director);
		logger.info("=== actor {} ===",actor);
		logger.info("=== content {} ===",content);
		logger.info("=== image {} ===",image);
		Properties p = new Properties();
		String filePath="";
		try {
			FileInputStream file = new FileInputStream("../rainbow/src/main/resources/config/fileUpload.properties");
			try {
				p.load(file);
				filePath = p.getProperty("fileUpload.vodPath");
				file.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				logger.info("파일 업로드 경로가 잘 못 되었습니다.");
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			logger.info("파일 업로드 경로가 잘 못 되었습니다.");
		}
		FileUpload fileUpload = new FileUpload();
		String fileName = image.getOriginalFilename();
		logger.info("수정폼에서 넘어온 파일 = {}",fileName);
		String fullPath = fileUpload.uploadFile(image,filePath, fileName);
		logger.info("이미지 저장 경로 : {}",fullPath);
		
		movie.setTitle(title);
		movie.setRating(rating);
		movie.setGenre(genre);
		movie.setOpenDate(openDate);
		movie.setGrade(grade);
		movie.setRunningtime(runningtime);
		movie.setDirector(director);
		movie.setActor(actor);
		movie.setContent(content);
		movie.setImage(fileName);
		int result = movieService.input(movie);
		String view = "";
		
		if (result == 1) {
			logger.info("영화 등록 성공!! ");
			model.addAttribute("movie", movie);
			view = "redirect:/admin/content";
		} else {
			logger.info("영화 등록 실패!! ");
			model.addAttribute("movie", "");
			view = "redirect:/admin/input";
		}
		logger.info("MYSQL이 보낸 결과 : {}",result);
		return view; 
	}
 //========= VOD ADD ================
   @RequestMapping("/vodInput")
	public String vodInput (@RequestParam(value="title",required=false)String title,
			@RequestParam(value="rating",required=false)int rating,
			@RequestParam(value="genre",required=false)String genre,
			@RequestParam(value="openDate",required=false)String openDate,
			@RequestParam(value="grade",required=false)String grade,
			@RequestParam(value="runningtime",required=false)String runningtime,
			@RequestParam(value="director",required=false)String director,
			@RequestParam(value="actor",required=false)String actor,
			@RequestParam(value="content",required=false)String content,
			@RequestParam(value="image",required=false)MultipartFile image,
			Model model){
		logger.info("====== ArticleController-input()======");
		logger.info("=== title {} ===",title);
		logger.info("=== rating {} ===",rating);
		logger.info("=== genre {} ===",genre);
		logger.info("=== openDate {} ===",openDate);
		logger.info("=== grade {} ===",grade);
		logger.info("=== runningtime {} ===",runningtime);
		logger.info("=== director {} ===",director);
		logger.info("=== actor {} ===",actor);
		logger.info("=== content {} ===",content);
		logger.info("=== image {} ===",image);
		Properties p = new Properties();
		String filePath="";
		try {
			FileInputStream file = new FileInputStream("../rainbow/src/main/resources/config/fileUpload.properties");
			try {
				p.load(file);
				filePath = p.getProperty("fileUpload.moviePath");
				file.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				logger.info("파일 업로드 경로가 잘 못 되었습니다.");
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			logger.info("파일 업로드 경로가 잘 못 되었습니다.");
		}
		FileUpload fileUpload = new FileUpload();
		String fileName = image.getOriginalFilename();
		logger.info("수정폼에서 넘어온 파일 = {}",fileName);
		String fullPath = fileUpload.uploadFile(image,filePath, fileName);
		logger.info("이미지 저장 경로 : {}",fullPath);
		
		movie.setTitle(title);
		movie.setRating(rating);
		movie.setGenre(genre);
		movie.setOpenDate(openDate);
		movie.setGrade(grade);
		movie.setRunningtime(runningtime);
		movie.setDirector(director);
		movie.setActor(actor);
		movie.setContent(content);
		movie.setImage(fileName);
		int result = movieService.input(movie);
		String view = "";
		
		if (result == 1) {
			logger.info("영화 등록 성공!! ");
			model.addAttribute("movie", movie);
			view = "redirect:/admin/content";
		} else {
			logger.info("영화 등록 실패!! ");
			model.addAttribute("movie", "");
			view = "redirect:/admin/input";
		}
		logger.info("MYSQL이 보낸 결과 : {}",result);
		return view; 
	}
   //===========TRANSPORTS MOVIE LIST =============
   @RequestMapping("/content")
   public String getAdminPage(Model model){
      logger.info("===movie-list(GET)===");
		List<MovieDTO> list =  new ArrayList<MovieDTO>();
		movie.setStart(0);
		movie.setEnd(movieService.count());
		list = movieService.getList(movie);
		model.addAttribute("list",list);
      return "admin/content.admin";
	}
   
  /* @RequestMapping("/content")
   public @ResponseBody List<MovieDTO> content(){
      logger.info("===movie-list(GET)===");
		List<MovieDTO> list =  new ArrayList<MovieDTO>();
		movie.setStart(0);
		movie.setEnd(movieService.count());
		list = movieService.getList(movie);
      return list;
	}*/
   
   
   //========= ENTERS THE MOVIE TITLE BY SEQEUNSE============
   @RequestMapping("/edit/{movieSeq}")
	public String getBySeq(@PathVariable("movieSeq")int movieSeq, 
			Model model){
		logger.info("=== movie-getBySeq() === {}", movieSeq);
			movie.setMovieSeq(movieSeq);
			movie = movieService.getBySeq(movie);
			model.addAttribute("movie",movie);
			
		return "admin/edit.admin";
	}
   	//========TRANSPORTS UPDATE FORM===============
   	@RequestMapping("/update")
	public String update ( 
	Model model){
	movie = movieService.getBySeq(movie);
	model.addAttribute("movie",movie);

		return "admin/update.admin";
	}
   	//==========MOVIE UPADATE===========
   	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String  update (@RequestParam(value="title",required=false)String title,
			@RequestParam(value="rating",required=false)int rating,
			@RequestParam(value="genre",required=false)String genre,
			@RequestParam(value="openDate",required=false)String openDate,
			@RequestParam(value="grade",required=false)String grade,
			@RequestParam(value="runningtime",required=false)String runningtime,
			@RequestParam(value="director",required=false)String director,
			@RequestParam(value="actor",required=false)String actor,
			@RequestParam(value="content",required=false)String content,
			@RequestParam(value="image",required=false)MultipartFile image,
			Model model){
   		
		logger.info("=== title {} ===",title);
		logger.info("=== rating {} ===",rating);
		logger.info("=== genre {} ===",genre);
		logger.info("=== openDate {} ===",openDate);
		logger.info("=== grade {} ===",grade);
		logger.info("=== runningtime {} ===",runningtime);
		logger.info("=== director {} ===",director);
		logger.info("=== actor {} ===",actor);
		logger.info("=== content {} ===",content);
		logger.info("=== image {} ===",image);
		
		
	
		
		FileUpload fileUpload = new FileUpload();
		String fileName = image.getOriginalFilename();
		logger.info("수정폼에서 넘어온 파일 = {}",fileName);
		String fullPath = fileUpload.uploadFile(image, 
				Constants.IMAGE_DOMAIN, fileName);
		logger.info("이미지 저장 경로 : {}",fullPath);
		logger.info("Movie Session Check = {}",movie.getActor());
		
		
		movie.setTitle(title);
		movie.setRating(rating);
		movie.setGenre(genre);
		movie.setOpenDate(openDate);
		movie.setGrade(grade);
		movie.setRunningtime(runningtime);
		movie.setDirector(director);
		movie.setActor(actor);
		movie.setContent(content);
		movie.setImage(fileName);
		int result = movieService.update(movie);
		String view = "";
		
		if (result == 1) {
			logger.info("업데이트 성공");
			model.addAttribute("movie", movie);
			view = "redirect:/admin/content";
		} else {
			logger.info("업데이트 실패");
			model.addAttribute("movie","");
			view = "redirect:/admin/update";
		}
		return view;
		
	}
   	
   	//=========MOVIE DELETE=========== 
   	@RequestMapping("/delete")
	public String delete(@RequestParam("movieSeq")int movieSeq, Model model){
		logger.info("=== movie-delete() ===");
		logger.info("삭제 할 영화 번호 ={}",movie.getMovieSeq());
		String view = "";
		int result = movieService.remove(movie);
		if (result == 1) {
			model.addAttribute("movie",movie);
			logger.info("영화삭제 성공");
			view = "redirect:/admin/content";
		} else {
			logger.info("영화삭제 실패");
			view = "redirect:/admin/content";
		}
		return view;
	}	
   	
   	
   	// ================================= REPLY IS MANAGED BY ADMIN =====================================================
   	@RequestMapping("/reply_content/{movieSeq}")
   	public String getReplyPage(@PathVariable("movieSeq")int movieSeq, Model model){
   		List<ReplyDTO> list =  new ArrayList<ReplyDTO>();
   		logger.info("댓글 영화순번 리스트 {}",movieSeq);
   		reply.setMovieSeq(movieSeq);
   		list = replyService.getBySeq(reply);
   		model.addAttribute("list", list);
   		return "admin/reply_content.admin";
   	}
	
   	@RequestMapping("/Delete")
	public String replyDelete(@RequestParam("replySeq")int[] replySeqs, Model model){
		logger.info("=== replys-delete() ===");
		logger.info("삭제 할 댓글 수 ={}"+replySeqs.length);
		logger.info("삭제 할 댓글 번호 ={}"+reply.getReplySeq());
		for( int replySeq : replySeqs){
			reply.setReplySeq(replySeq);
			replyService.delete(reply);
		}
		return "redirect:/admin/content";
	}	
 
}