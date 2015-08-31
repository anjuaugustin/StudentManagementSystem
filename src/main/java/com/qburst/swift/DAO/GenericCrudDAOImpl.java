package com.qburst.swift.DAO;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.transaction.Transactional;


public class GenericCrudDAOImpl<T> implements GenericCrudDAO<T> {
	
	
	@PersistenceContext
	protected EntityManager entityManager;
	//protected Logger logger = LoggerFactory.getLogger(GenericCrudDaoImpl.class);
	@Transactional
	@Override
	public void save(T entity) {
		entityManager.persist(entity);
	}

	@Override
	public T saveOrUpdate(T entity) {
		return entityManager.merge(entity);
	}

	@Override
	public T update(T entity) {
		return entityManager.merge(entity);
	}
	@Transactional
	@Override
	public void delete (T entity) {
		entityManager.remove(entity);
	}
	@Transactional
	@Override
	public void deleteById(Class<T> clazz, Serializable pk) {
		T t = findById(clazz, pk);
		if (t != null) {
			delete(t);
		}
	}

	@Override
	public T findById(Class<T> clazz, Serializable pk) {
		return entityManager.find(clazz, pk);
	}
	@Transactional
	@Override
	public List<?> list(Class<T> clazz) {
		return entityManager.createQuery("from " + clazz.getName())
				.getResultList();
	}

	@Override
	public List<?> list(Class<T> clazz, int offset, int limit) {
		return entityManager.createQuery("from " + clazz.getName())
				.setFirstResult(offset).setMaxResults(limit).getResultList();
	}

	
	public long count(Class<T> clazz) {
		CriteriaBuilder qb = entityManager.getCriteriaBuilder();
		CriteriaQuery<Long> cq = qb.createQuery(Long.class);
		cq.select(qb.count(cq.from(clazz)));
		// cq.where(/*your stuff*/);
		return entityManager.createQuery(cq).getSingleResult();
	}

	
}
