package com.qburst.sms.web.home;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.qburst.sms.domain.Student;
import com.qburst.sms.student.service.StudentService;

@Controller
public class HomeController {

	@Autowired
	private StudentService<Student> studentService;
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String welcomePage()
	{
		return "welcome";
	}
	
	@RequestMapping(value="/admin",method = RequestMethod.GET)
	public String adminhome()
	{
		return "adminhome";
	}
	@RequestMapping(value="/faculty",method = RequestMethod.GET)
	public String facultyhome()
	{
		return "facultyhome";
	}
	@RequestMapping(value="/student",method = RequestMethod.GET)
	public String studenthome()
	{
		return "studenthome";
	}
	
	@RequestMapping(value = "/admin/studentmanagement", method = RequestMethod.GET)
	public String listAll(Model model) {
		
		List<?> listUser = studentService.list(Student.class);
		
		//for(int i=0;i<listUser.size();i++){
		    //System.out.println(listUser.get(i));
		//} 
	
		model.addAttribute("persons", listUser);
		return "home";
	}

	@RequestMapping(value = "/admin/addPerson", method = RequestMethod.POST)
	public String addperson(@ModelAttribute Student student) {
		studentService.save(student);
		return "redirect:/admin/studentmanagement";
	}

	@RequestMapping(value = "/admin/deletePerson")
	public String deletePerson(@ModelAttribute Student student, @RequestParam int id) {

		studentService.deleteById(Student.class, id);

		return "redirect:/admin/studentmanagement";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}

}
