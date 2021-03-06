package org.gwizards.prcs.controller;

import java.util.List;
import java.util.Set;

import org.gwizards.prcs.LiveProject;
import org.gwizards.prcs.LiveProjectDocument;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/document")
public class DocumentController {
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String showDocumentMain(Model model) {
		List<LiveProject> liveProjects = LiveProject.findAllLiveProjects();
		model.addAttribute("projects", liveProjects);
		return "document-main";
	}

	@RequestMapping(method = RequestMethod.GET)
	public String showDocumentsForProject(@RequestParam(value = "pid") int pid,
			Model model) {
		LiveProject liveProject = LiveProject.findLiveProject(pid);
		Set<LiveProjectDocument> liveProjectDouments = liveProject
				.getLiveProjectDocuments();
		List<LiveProject> liveProjects = LiveProject.findAllLiveProjects();
		model.addAttribute("projects", liveProjects);
		model.addAttribute("projectDocuments", liveProjectDouments);
		model.addAttribute("selectedProject", liveProject);
		return "document-main";
	}
}
