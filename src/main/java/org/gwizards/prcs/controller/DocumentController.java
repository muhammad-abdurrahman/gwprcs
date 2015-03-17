package org.gwizards.prcs.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;

import org.gwizards.prcs.LiveProject;
import org.gwizards.prcs.LiveProjectDocument;
import org.gwizards.prcs.LiveProjectStage;
import org.gwizards.prcs.LiveProjectStageDocument;
import org.gwizards.prcs.LiveProjectStageTask;
import org.gwizards.prcs.LiveProjectStageTaskDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
			@RequestParam(value = "sid") int sid,
			@RequestParam(value = "tid") int tid, Model model) {
		LiveProject liveProject = LiveProject.findLiveProject(pid);
		List<LiveProject> liveProjects = LiveProject.findAllLiveProjects();
		LiveProjectStage stage = LiveProjectStage.findLiveProjectStage(sid);
		LiveProjectStageTask task = LiveProjectStageTask
				.findLiveProjectStageTask(tid);
		Set<LiveProjectStageTaskDocument> taskDocuments = task
				.getLiveProjectStageTaskDocuments();

		model.addAttribute("projects", liveProjects);
		model.addAttribute("selectedProject", liveProject);
		model.addAttribute("selectedStage", stage);
		model.addAttribute("selectedTask", task);
		model.addAttribute("taskDocuments", taskDocuments);

		return "document-main";
	}

	@Autowired
	ServletContext servletContext;

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody String handleFileUpload(
			@RequestParam("file") MultipartFile file) {
		String name = "uploaded.txt";
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				name = file.getOriginalFilename();
				// Create the file on server
				String path = servletContext.getRealPath("/documents/")+"/";// + "/documents/";
				File serverFile = new File(path + name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				return "redirect:document-main";
//				return "Server File Location=" + serverFile.getAbsolutePath();
				// return "You successfully uploaded " + name + "!";
			} catch (Exception e) {
				return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + name
					+ " because the file was empty.";
		}
	}
}
