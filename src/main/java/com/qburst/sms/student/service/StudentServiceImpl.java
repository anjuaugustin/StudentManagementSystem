package com.qburst.sms.student.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;
import com.qburst.swift.DAO.GenericCrudDAOImpl;
@Component
@Transactional
public class StudentServiceImpl<T> extends GenericCrudDAOImpl<T> implements StudentService<T>{

}
