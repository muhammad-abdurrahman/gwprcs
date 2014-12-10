package org.gwizards.prcs.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/project")
public class ProjectController {
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String showProjectMain(Model model){
		
		return "project-main";
	}
	
}
