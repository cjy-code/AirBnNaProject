package com.test.bnna.member.tripplan;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class TripPlanController {
	
	
	@RequestMapping(value="/member/tripplan/start.action", method={RequestMethod.GET})
	public String start(HttpServletRequest req, HttpServletResponse resp) {
		
		
		return "member.tripplanwfooter.start";
	}
	

	@RequestMapping(value="/member/tripplan/make.action", method={RequestMethod.GET})
	public String make(HttpServletRequest req, HttpServletResponse resp) {

		
		return "member.tripplan.make";
	}
	
	@RequestMapping(value="/member/tripplan/board.action", method={RequestMethod.GET})
	public String board(HttpServletRequest req, HttpServletResponse resp) {
		
		
		return "member.tripplanwfooter.board";
	}
	
	@RequestMapping(value="/member/tripplan/result.action", method={RequestMethod.GET})
	public String result(HttpServletRequest req, HttpServletResponse resp) {
		
		
		return "member.tripplanwfooter.result";
	}
	

	
}
