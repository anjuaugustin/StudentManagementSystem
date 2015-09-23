package com.qburst.sms.student.service;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;


import org.springframework.stereotype.Component;

import com.qburst.swift.DAO.GenericCrudDAOImpl;



@Component
@Transactional
public class StudentServiceImpl<Student> extends GenericCrudDAOImpl<Student> implements StudentService<Student>{

	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public Student getProfileInfo(String username) {

	List<Student> students= (entityManager.createNamedQuery("Student.getProfileInfo")
			.setParameter("username", username)
			.getResultList());
	if(students!=null && students.size()>0){
		return students.get(0);
	}
	else{
		return null;
	}
}

@Override
public byte[] loadImage(Class<Student> clazz, Serializable pk) {
	Student t = findById(clazz, pk);
	return ((com.qburst.sms.domain.Student) t).getImages();
}

@Override
public void uploadImageOnId(String username,byte [] personImage) {
        entityManager.createNamedQuery("Student.uploadImageOnId")
                .setParameter("username", username).setParameter("personImage", personImage)
                .executeUpdate();

    }


}
