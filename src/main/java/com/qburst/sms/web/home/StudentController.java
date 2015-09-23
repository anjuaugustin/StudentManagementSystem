package com.qburst.sms.web.home;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.qburst.sms.domain.Student;
import com.qburst.sms.student.service.StudentService;
@Controller
public class StudentController {
	@Autowired
	private StudentService<Student> studentService;
	
	@RequestMapping(value = {"/student"}, method = RequestMethod.GET)

	public String profile (Model model,Student student,Principal principal,BindingResult result ) {
	Student profileUser = studentService.getProfileInfo(principal.getName());
	//System.out.println(principal.getName());
	//System.out.println(student.getMobileNumber());
	
	if (profileUser!= null)
		model.addAttribute("student", profileUser);
		else
		model.addAttribute("student", new Student());
	List<?> listUser = studentService.list(Student.class);
	model.addAttribute("students", listUser);
		
	return "student/studentHome";
	
}
	@RequestMapping(value = "/student/update", method = RequestMethod.POST)
	 
	public String update (Model model,Principal principal, Student student) {
		Student profileUser=studentService.getProfileInfo(principal.getName());
		if(profileUser!=null){
			
			studentService.delete(profileUser);
			//student.setId(profileUser.getId());
			studentService.update(student);}
		else{
			studentService.save(student);
		}
		
	return "student/studentHome";
	}
@RequestMapping(value = "/student/image", method = RequestMethod.GET)
	
	public void imageDisplay(HttpServletRequest request,HttpServletResponse response, Student student,Principal principal, @RequestParam int id )throws ServletException, IOException{
	byte[] images = studentService.loadImage(Student.class, id);
		//byte[] image = (byte[])profileUser.getImages();
		response.setContentType("image/jpeg/jpg/gif");
		ServletOutputStream outputStream = response.getOutputStream();
		outputStream.write(images);
		outputStream.close();
		
	}
@RequestMapping(value = "/student/fileupload", method = RequestMethod.POST)
public String save(@RequestParam MultipartFile files,Student student) throws IOException {

    byte [] bFile =files.getBytes();
    studentService.uploadImageOnId(student.getUsername(),bFile);
	return "redirect:/student";

}
}
