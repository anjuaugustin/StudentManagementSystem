package com.qburst.sms.web.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.qburst.sms.domain.Faculty;
import com.qburst.sms.domain.Student;
import com.qburst.sms.faculty.service.FacultyService;
import com.qburst.sms.security.SecurityService;
import com.qburst.sms.student.service.StudentService;

@Controller
public class AdminController {

	@Autowired
	private StudentService<Student> studentService;

	@Autowired
	private FacultyService<Faculty> facultyService;
	
	@Autowired
	SecurityService securityService;
	
	@RequestMapping(value = "/admin/homepage", method = RequestMethod.GET)
	public String adminhome() {
		return "/admin/homepage";
	}

	@RequestMapping(value = "/admin/deleteFaculty")
	public String deleteeFaculty(@ModelAttribute Faculty faculty, @RequestParam int id) {

		facultyService.deleteById(Faculty.class, id);

		return "redirect:/admin/facultylist";
	}

	@RequestMapping(value = "/admin/facultylist", method = RequestMethod.GET)
	public String facultyList(Model model) {

		List<?> listUser = facultyService.list(Faculty.class);
		model.addAttribute("persons", listUser);
		return "/admin/facultylist";
	}

	@RequestMapping(value = "/admin/newfaculty", method = RequestMethod.GET)
	public String newfaculty() {

		return "/admin/newfaculty";
	}

	@RequestMapping(value = "/admin/newfaculty", method = RequestMethod.POST)
	public void addFaculty(@ModelAttribute Faculty faculty) {
		facultyService.save(faculty);

	}

	@RequestMapping(value = "/admin/studentlist", method = RequestMethod.GET)
	public String studentList(Model model) {

		List<?> listUser = studentService.list(Student.class);

		// for(int i=0;i<listUser.size();i++){
		// System.out.println(listUser.get(i));
		// }

		model.addAttribute("persons", listUser);
		return "/admin/studentlist";
	}

	@RequestMapping(value = "/admin/newstudent", method = RequestMethod.GET)
	public String newstudent() {
		return "/admin/newstudent";
	}

	@RequestMapping(value = "/admin/newstudent", method = RequestMethod.POST)
	public void addStudent(@ModelAttribute Student student) {
		studentService.save(student);

	}

	@RequestMapping(value = "/admin/deleteStudent")
	public String deleteStudent(@ModelAttribute Student student, @RequestParam int id) {

		studentService.deleteById(Student.class, id);

		return "redirect:/admin/studentlist";
	}
}
