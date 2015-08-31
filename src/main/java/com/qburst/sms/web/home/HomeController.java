package com.qburst.sms.web.home;

import java.io.Serializable;
import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.qburst.sms.domain.Student;
import com.qburst.sms.student.service.StudentService;

@Controller
public class HomeController {

	@Autowired
	private StudentService<Student> studentService;
	

	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listAll(Model model) {
		
		List<?> listUser = studentService.list(Student.class);
		
		//for(int i=0;i<listUser.size();i++){
		    //System.out.println(listUser.get(i));
		//} 
	
		model.addAttribute("persons", listUser);
		return "home";
	}

	@RequestMapping(value = "/addPerson", method = RequestMethod.POST)
	public String addperson(@ModelAttribute Student student) {
		studentService.save(student);
		return "redirect:/";
	}

	@RequestMapping(value = "/deletePerson")
	public String deletePerson(@ModelAttribute Student student, @RequestParam int id) {

		studentService.deleteById(Student.class, id);

		return "redirect:/";
	}

}
