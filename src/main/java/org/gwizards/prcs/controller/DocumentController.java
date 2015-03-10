package org.gwizards.prcs.controller;

import java.util.List;
import java.util.Set;

import org.gwizards.prcs.LiveProject;
import org.gwizards.prcs.LiveProjectDocument;
import org.gwizards.prcs.LiveProjectStage;
import org.gwizards.prcs.LiveProjectStageDocument;
import org.gwizards.prcs.LiveProjectStageTask;
import org.gwizards.prcs.LiveProjectStageTaskDocument;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/document")
public class DocumentController {
	@RequestMapping(value = "/project", method = RequestMethod.GET)
	public String showDocumentsForProject(@RequestParam(value = "pid") int pid,
			Model model) {
		LiveProject liveProject = LiveProject.findLiveProject(pid);
		liveProject.getLiveProjectStages();
		Set<LiveProjectDocument> liveProjectDouments = liveProject
				.getLiveProjectDocuments();
		List<LiveProject> liveProjects = LiveProject.findAllLiveProjects();
		
		model.addAttribute("projects", liveProjects);
		model.addAttribute("projectDocuments", liveProjectDouments);
		model.addAttribute("selectedProject", liveProject);
		
		return "document-main";
	}

	@RequestMapping(value = "/stage", method = RequestMethod.GET)
	public String showDocumentsForStage(@RequestParam(value = "pid") int pid,
			@RequestParam(value = "sid") int sid, Model model) {
		LiveProject liveProject = LiveProject.findLiveProject(pid);
		List<LiveProject> liveProjects = LiveProject.findAllLiveProjects();
		LiveProjectStage stage = LiveProjectStage.findLiveProjectStage(sid);
		Set<LiveProjectStageDocument> stageDocuments = stage
				.getLiveProjectStageDocuments();

		model.addAttribute("projects", liveProjects);
		model.addAttribute("selectedProject", liveProject);
		model.addAttribute("selectedStage", stage);
		model.addAttribute("stageDocuments", stageDocuments);
		
		return "document-main";
	}
	
	@RequestMapping(value = "/task", method = RequestMethod.GET)
	public String showDocumentsForTask(@RequestParam(value = "pid") int pid,
			@RequestParam(value = "sid") int sid, @RequestParam(value = "tid") int tid, Model model) {
		LiveProject liveProject = LiveProject.findLiveProject(pid);
		List<LiveProject> liveProjects = LiveProject.findAllLiveProjects();
		LiveProjectStage stage = LiveProjectStage.findLiveProjectStage(sid);
		LiveProjectStageTask task = LiveProjectStageTask.findLiveProjectStageTask(tid);
		Set<LiveProjectStageTaskDocument> taskDocuments = task
				.getLiveProjectStageTaskDocuments();

		model.addAttribute("projects", liveProjects);
		model.addAttribute("selectedProject", liveProject);
		model.addAttribute("selectedStage", stage);
		model.addAttribute("selectedTask", task);
		model.addAttribute("taskDocuments", taskDocuments);
		
		return "document-main";
	}
}
