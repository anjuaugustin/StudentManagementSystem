package com.qburst.sms.student.service;

import java.io.Serializable;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import com.qburst.sms.domain.Student;
import com.qburst.swift.DAO.GenericCrudDAO;
@SuppressWarnings("hiding")
@Service
public interface StudentService<Student> extends GenericCrudDAO<Student>{
	Student getProfileInfo(String username);
	public void uploadImageOnId(String username,byte [] personImage);

	public byte[] loadImage(Class<Student>clazz, Serializable pk);

	
	
}
