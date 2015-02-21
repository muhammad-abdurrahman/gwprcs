package org.gwizards.prcs.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/review")
public class ReviewController {
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String showReviewMain(Model model){
		
		return "review-main";
	}
	
}
