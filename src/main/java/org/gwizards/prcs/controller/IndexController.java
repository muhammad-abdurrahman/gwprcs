package org.gwizards.prcs.controller;

import java.util.List;

import org.gwizards.prcs.LiveProject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping(value = "/")
	public String showProjectMain(Model model) {
		List<LiveProject> liveProjects = LiveProject.findAllLiveProjects();
		model.addAttribute("projects", liveProjects);
		return "project-main";
	}
}
