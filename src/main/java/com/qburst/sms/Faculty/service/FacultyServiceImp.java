package com.qburst.sms.Faculty.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.qburst.swift.DAO.GenericCrudDAOImpl;

@Component
@Transactional
public class FacultyServiceImp<T> extends GenericCrudDAOImpl<T>implements FacultyService<T> {

	@SuppressWarnings("unchecked")
	@Override
	public T getSearchedFaculty(String facultyName) {
		return (T) entityManager.createNamedQuery("Faculty.getSearchedFaculty").setParameter("facultyName", facultyName)
				.getSingleResult();
	}

}