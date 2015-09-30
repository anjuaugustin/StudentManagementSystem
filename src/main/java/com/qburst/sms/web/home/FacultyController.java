package com.qburst.sms.web.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.security.Principal;

import com.qburst.sms.domain.Faculty;
import com.qburst.sms.domain.Student;
import com.qburst.sms.faculty.service.FacultyService;
import com.qburst.sms.student.service.StudentService;

@Controller
public class FacultyController {
	@Autowired
	private FacultyService<Faculty> facultyService;
	
	@Autowired
	private StudentService<Student> studentService;
	
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
		List<?> listUser1 = studentService.list(Student.class);
		model.addAttribute("students", listUser1);
		return "faculty/facultyPage";
	}
	
	@RequestMapping(value="/faculty",method = RequestMethod.POST)
	public ModelAndView facultyEdit(@ModelAttribute Faculty faculty,Principal principal){
		Faculty faculty1=facultyService.getSearchedFaculty(faculty.getFacultyName());
		System.out.println("id1="+principal.getName());
		if(faculty1 == null){
			facultyService.save(faculty);
		}else{
			facultyService.update(faculty);	
		}
		ModelAndView modelView = new ModelAndView("faculty/facultyPage");
		modelView.addObject("faculty",faculty);
		List<?> listUser = facultyService.list(Faculty.class);
		modelView.addObject("persons", listUser);
		List<?> listUser1 = studentService.list(Student.class);
		modelView.addObject("students", listUser1);
		
		return modelView;
	}
}
