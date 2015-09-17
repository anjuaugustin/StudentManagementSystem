package com.qburst.sms.faculty.service;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.qburst.swift.DAO.GenericCrudDAOImpl;

@Component
@Transactional
public class FacultyServiceImp<Faculty> extends GenericCrudDAOImpl<Faculty>
		implements FacultyService<Faculty> {

	@SuppressWarnings("unchecked")
	@Override
	public Faculty getSearchedFaculty(String facultyName) {
		List<Faculty> faculties = (entityManager.createNamedQuery(
				"Faculty.getSearchedFaculty").setParameter("facultyName",
				facultyName).getResultList());
		if (faculties != null && faculties.size() > 0) {
			return faculties.get(0);
		} else {
			return null;
		}
	}

	@Transactional
	@Override
	public void saveById(Class<Faculty> clazz, Serializable pk) {
		Faculty faculty = findById(clazz, pk);
		if (faculty != null) {
			update(faculty);
		}
	}
}
