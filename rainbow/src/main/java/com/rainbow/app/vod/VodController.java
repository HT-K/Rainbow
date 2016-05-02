package com.rainbow.app.vod;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;



@Controller
@SessionAttributes("user")
@RequestMapping("/vod")
public class VodController {
	private static final Logger logger = LoggerFactory.getLogger(VodController.class);
	@Autowired VodDTO vod;
	@Autowired VodService service; 
	
	@RequestMapping("/login")
	public String login() {
		return "member/login.user";
	}
}
