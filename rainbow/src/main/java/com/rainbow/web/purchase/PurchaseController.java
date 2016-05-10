package com.rainbow.web.purchase;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rainbow.web.member.MemberDTO;
import com.rainbow.web.movie.MovieDTO;
import com.rainbow.web.movie.MovieService;
import com.rainbow.web.reserveSeat.ReserveSeatDTO;
import com.rainbow.web.reserveSeat.ReserveSeatService;

@Controller
@RequestMapping("/purchase")
public class PurchaseController {
	private static final Logger logger = LoggerFactory.getLogger(PurchaseController.class);
	@Autowired PurchaseDTO purchase;
	@Autowired ReserveSeatDTO reserve;
	@Autowired PurchaseService service;
	@Autowired MovieService movieService;
	@Autowired ReserveSeatService reserveService;
	@Autowired MovieDTO movie;
	
	@RequestMapping("/step1")
	public String step1(Model model) {
		logger.info("purchase - step1()");
		model.addAttribute("list", movieService.getList(movie));
		logger.info("model : {}", model);
		return "purchase/step1.user";
	}
	
	@RequestMapping(value="/step2", method=RequestMethod.POST)
	public String step2(@RequestParam("movie")String movie,
			@RequestParam("date")String date,
			@RequestParam("time")String time, 
			Model model, HttpSession session) {
		logger.info("purchase - step2()");
		logger.info("movie : {}", movie);
		logger.info("date : {}", date);
		logger.info("time : {}", time);
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		reserve.setMovieTitle(movie);
		reserve.setReserveDate(date);
		reserve.setBeginTime(time);
		reserve.setId(member.getId());
		
		if(reserveService.getByReserve(reserve).size()==0){
			reserveService.insert(reserve);
		}

		purchase.setMovieTitle(movie);
		purchase.setDate(date);
		purchase.setBeginTime(time);
		
		model.addAttribute("reserveData", reserveService.getByReserve(reserve));
		model.addAttribute("seat", service.getByReserve(purchase));
		logger.info("model : {}", model);
		return "purchase/step2.user";
	}
	
	@RequestMapping(value="/seatSelect", method=RequestMethod.POST)
	public String seatSelect(@RequestParam("movie")String movie,
			@RequestParam("date")String date,
			@RequestParam("time")String time,
			@RequestParam("seat")String seat,
			@RequestParam("sum")int price,
			Model model, HttpSession session) {
		logger.info("purchase - step2 - seatSelect()");
		logger.info("movie : {}", movie);
		logger.info("date : {}", date);
		logger.info("time : {}", time);
		logger.info("seat : {}", seat);
		logger.info("price : {}", price);
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		reserve.setMovieTitle(movie);
		reserve.setReserveDate(date);
		reserve.setBeginTime(time);
		reserve.setSeat(seat);
		reserve.setId(member.getId());
		reserve.setPrice(price);
		purchase.setMovieTitle(movie);
		purchase.setDate(date);
		purchase.setBeginTime(time);
		reserveService.insert(reserve);
		model.addAttribute("reserveData", reserveService.getByReserve(reserve));
		model.addAttribute("seat", service.getByReserve(purchase));
		logger.info("model : {}", model);
		return "purchase/step2.user";
	}
	
	@RequestMapping(value="/seatDelete", method=RequestMethod.POST)
	public String seatDelete(@RequestParam("movie")String movie,
			@RequestParam("date")String date,
			@RequestParam("time")String time,
			@RequestParam("seat")String seat,
			Model model, HttpSession session) {
		logger.info("purchase - step2 - seatDelete()");
		logger.info("movie : {}", movie);
		logger.info("date : {}", date);
		logger.info("time : {}", time);
		logger.info("seat : {}", seat);
	
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		reserve.setMovieTitle(movie);
		reserve.setReserveDate(date);
		reserve.setBeginTime(time);
		reserve.setSeat(seat);
		reserve.setId(member.getId());
		
		purchase.setMovieTitle(movie);
		purchase.setDate(date);
		purchase.setBeginTime(time);
		reserveService.deleteBySeat(reserve);
		model.addAttribute("reserveData", reserveService.getByReserve(reserve));
		model.addAttribute("seat", service.getByReserve(purchase));
		logger.info("model : {}", model);
		return "purchase/step2.user";
	}
	
	@RequestMapping("/step3")
	public String step3() {
		logger.info("purchase - step3()");
		return "purchase/step3.user";
	}
	
	@RequestMapping(value="/step4", method=RequestMethod.POST)
	public String step4(@RequestParam("movie")String movie,
			@RequestParam("date")String date,
			@RequestParam("time")String time,
			@RequestParam("seat")String seat,
			@RequestParam("price")int price,
			Model model, HttpSession session) {
		logger.info("purchase - step4()");
		logger.info("movie : {}", movie);
		logger.info("date : {}", date);
		logger.info("time : {}", time);
		logger.info("seat : {}", seat);
		logger.info("price :{}",price);
	
		MemberDTO member = (MemberDTO) session.getAttribute("user");
		reserve.setMovieTitle(movie);
		reserve.setReserveDate(date);
		reserve.setBeginTime(time);
		reserve.setId(member.getId());
		
		purchase.setMovieTitle(movie);
		purchase.setDate(date);
		purchase.setBeginTime(time);
		purchase.setReserveSeat(seat);
		purchase.setPurchasePrice(price);
		purchase.setMemberId(member.getId());
		reserveService.delete(reserve);
	
		service.insert(purchase);
		model.addAttribute("purchaseData", purchase);
		logger.info("model : {}", model);
		return "purchase/step4.user";
	}
}
