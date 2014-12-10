package org.gwizards.prcs.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/document")
public class DocumentController {
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String showDocumentMain(Model model){
		
		return "document-main";
	}
	
}
