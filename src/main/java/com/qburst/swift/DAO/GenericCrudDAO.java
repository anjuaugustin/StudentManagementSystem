package com.qburst.swift.DAO;

import java.io.Serializable;
import java.util.List;

public interface GenericCrudDAO<T> {
     void save(T entity);

	T saveOrUpdate(T entity);

	T update(T entity);

	void delete(T entity);

	void deleteById(Class<T> clazz, Serializable id);

	T findById(Class<T> clazz, Serializable id);

	List<?> list(Class<T> clazz);

	List<?> list(Class<T> clazz, int offset, int limit);

	long count(Class<T> clazz);
}

