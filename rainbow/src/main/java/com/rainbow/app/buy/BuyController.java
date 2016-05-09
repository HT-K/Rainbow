package com.rainbow.app.buy;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rainbow.web.member.MemberService;


@Controller
@RequestMapping("/buy")
public class BuyController {
	private static final Logger logger = LoggerFactory.getLogger(BuyController.class);
	@Autowired
	BuyDTO buy;
	@Autowired
	BuyService service;
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/getBuy")
	public Model getBuy(@RequestParam("vodTitle")String vodName , Model model, HttpSession session) {
		logger.info("=== getBuy () ===");
	/*	List<BuyDTO> list = new ArrayList<BuyDTO>();
		list = service.selectBuy(1);
		System.out.println(list); 
		//model.addAttribute("CheckId", session.getAttribute("user"));
		model.addAttribute("vodName", vodName);*/
		return model;
	}
	
}
