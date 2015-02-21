package org.gwizards.prcs.controller;

import java.util.List;

import org.gwizards.prcs.LiveProject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/project")
public class ProjectController {
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String showProjectMain(Model model) {
		List<LiveProject> liveProjects = LiveProject.findAllLiveProjects();
		model.addAttribute("projects", liveProjects);
		return "project-main";
	}

	@RequestMapping(method = RequestMethod.GET)
	public String showSelectedProject(
			@RequestParam(value = "project_id") int pid, Model model) {
		List<LiveProject> liveProjects = LiveProject.findAllLiveProjects();
		model.addAttribute("projects", liveProjects);
		LiveProject liveProject = LiveProject.findLiveProject(pid);
		model.addAttribute("selectedProject", liveProject);
		return "project-main";
	}
}
