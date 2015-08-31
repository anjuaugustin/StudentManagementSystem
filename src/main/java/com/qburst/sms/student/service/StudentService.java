package com.qburst.sms.student.service;

import org.springframework.stereotype.Service;

import com.qburst.swift.DAO.GenericCrudDAO;
@Service
public interface StudentService<T> extends GenericCrudDAO<T>{

}
