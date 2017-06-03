package UIT.SE325H22.Group2.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import UIT.SE325H22.Group2.dao.intf.IGenericDao;
import UIT.SE325H22.Group2.model.SinhVien;

@Repository
public abstract class GenericDaoImpl<E, I extends Serializable> implements IGenericDao<E, I> {
	@Autowired
	private SessionFactory sessionFactory;
	protected Class<? extends E> daoType;

	@SuppressWarnings("unchecked")
	public GenericDaoImpl() {
		Type t = (Type) getClass().getGenericSuperclass();
		ParameterizedType pt = (ParameterizedType) t;
		daoType = (Class<? extends E>) pt.getActualTypeArguments()[0];
	}

	protected Session currentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Integer insert(E entity) {
		Integer a = (Integer) currentSession().save(entity);
		return a ;
	}

	@Override
	public void update(E entity) {
		currentSession().saveOrUpdate(entity);
	}

	@Override
	public void delete(I id) {
		//Session session = this.sessionFactory.getCurrentSession();
		
		
		E p = (E) currentSession().get(daoType, id);
		if (null != p) {
			currentSession().delete(p);
		}
	//	currentSession().delete(id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public E getById(I id) {
		return (E) currentSession().get(daoType, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<E> getAll() {
		return currentSession().createCriteria(daoType).list();
	}

}
