package com.rainbow.web.purchase;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rainbow.web.movie.MovieService;
import com.rainbow.web.reserveSeat.ReserveSeatDTO;

@Controller
@RequestMapping("/purchase")
public class PurchaseController {
	private static final Logger logger = LoggerFactory.getLogger(PurchaseController.class);
	@Autowired PurchaseDTO purchase;
	@Autowired ReserveSeatDTO reserve;
	@Autowired PurchaseService service;
	@Autowired MovieService movieService;
	
	@RequestMapping("/step1")
	public String step1(Model model) {
		logger.info("purchase - step1()");
		model.addAttribute("list", movieService.getList());
		return "purchase/step1.user";
	}
	
	@RequestMapping(value="/step2", method=RequestMethod.POST)
	public String step2(@RequestParam("choosen-movie")String movie, @RequestParam("choosen-date")String date,
			@RequestParam("choosen-time")String time, Model model) {
		logger.info("purchase - step2()");
		logger.info("movie : {}", movie);
		logger.info("date : {}", date);
		logger.info("time : {}", time);
		reserve.setMovieTitle(movie);
		reserve.setReserveDate(date);
		reserve.setBeginTime(time);
		model.addAttribute("reserveData", reserve);
		
		return "purchase/step2.user";
	}
	
	@RequestMapping("/step3")
	public String step3() {
		logger.info("purchase - step3()");
		return "purchase/step3.user";
	}
	
	@RequestMapping("/step4")
	public String step4() {
		logger.info("purchase - step4()");
		return "purchase/step4.user";
	}
}
