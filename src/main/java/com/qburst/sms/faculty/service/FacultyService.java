package com.qburst.sms.faculty.service;


import java.io.Serializable;

import org.springframework.stereotype.Service;

import com.qburst.swift.DAO.GenericCrudDAO;

@Service
public interface FacultyService<T> extends GenericCrudDAO<T> {

	T getSearchedFaculty(String facultyName);
	public void saveById(Class<T> clazz, Serializable pk);
	//T updateFacultyInfo(int id, String dateOfBirth);
}
