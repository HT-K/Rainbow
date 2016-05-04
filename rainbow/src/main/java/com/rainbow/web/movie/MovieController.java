package com.rainbow.web.movie;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String findByTitle() {
		return "";
	}
	
	@RequestMapping("/list")
	public String list() {
		return "";
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
}
