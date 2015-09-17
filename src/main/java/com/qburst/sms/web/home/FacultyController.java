package com.qburst.sms.web.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.security.Principal;

import com.qburst.sms.domain.Faculty;
import com.qburst.sms.faculty.service.FacultyService;

@Controller
public class FacultyController {
	@Autowired
	private FacultyService<Faculty> facultyService;
	
	@RequestMapping(value = "/faculty",method=RequestMethod.GET)
	public String facultyhome(Model model,Principal principal) {
		Faculty faculty = facultyService.getSearchedFaculty(principal.getName());
		if(faculty != null){
			model.addAttribute("faculty",faculty);
		}else {
			model.addAttribute("faculty",new Faculty());
		}
		List<?> listUser = facultyService.list(Faculty.class);
		model.addAttribute("persons", listUser);
		return "faculty/facultyPage";
	}
	
	@RequestMapping(value="/faculty/facultyEdit",method=RequestMethod.POST)
	public String facultyEdit(@ModelAttribute Faculty faculty,Principal principal){
		if(faculty.id == 0){
			facultyService.save(faculty);
		}else{
		//facultyService.saveById(Faculty.class,faculty.id);
		facultyService.deleteById(Faculty.class,faculty.id);
		facultyService.save(faculty);
		}
		return "redirect:/faculty";
	}
}
