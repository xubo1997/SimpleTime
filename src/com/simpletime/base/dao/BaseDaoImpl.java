package com.simpletime.base.dao;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.simpletime.pojo.Page;

public class BaseDaoImpl<T> implements IBaseDao<T> {

	private Class<?> clazz;
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@SuppressWarnings("unchecked")
	public BaseDaoImpl() {
		clazz = (Class<T>) ((ParameterizedType) getClass()
				.getGenericSuperclass()).getActualTypeArguments()[0];
	}

	private String getTableName() {
		return clazz.getSimpleName();
	}

	@Override
	public T save(T t) {
		try {
			hibernateTemplate.save(t);
			return t;
		} catch (Exception e) {

		}
		return null;
	}

	@Override
	public T update(T t) {
		try {
			hibernateTemplate.update(t);
		} catch (Exception e) {

		}
		return null;
	}

	@Override
	public boolean delete(T t) throws IntrospectionException,
			IllegalAccessException, IllegalArgumentException,
			InvocationTargetException {
		Set<Field> fields = new HashSet<Field>();
		Class<?> c = t.getClass();
		while (c != null) {
			for (Field f : c.getDeclaredFields()) {
				fields.add(f);
			}
			c = c.getSuperclass();
		}
		for (Field f : fields) {
			PropertyDescriptor pd = new PropertyDescriptor(f.getName(),
					t.getClass());
			Method setterMethod = null;
			if ("valid".equals(f.getName())) {
				setterMethod = pd.getWriteMethod();
				setterMethod.invoke(t, true);
				update(t);
				return true;
			}
		}

		return false;
	}

	@Override
	public T findById(String id) {
		try {
			T t = (T) hibernateTemplate.get(this.clazz, id);
			return t;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<T> findAll() {
		try {
			List<T> list = (List<T>) hibernateTemplate.loadAll(this.clazz);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<T> querySql(Map<String, String> param) {
		StringBuffer hql = new StringBuffer("from " + getTableName()
				+ " where 1=1");
		Set<String> keys = param.keySet();
		for (String key : keys) {
			String value = param.get(key);
			if (value != null && "".equals(value)) {
				hql.append(" and " + key + "='" + value + "'");
			}
		}
		List<T> list = hibernateTemplate.find(hql.toString());
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll(final Page page) {
		try {
			final String sql = "from " + getTableName();// +" limit "+
														// page.getStartRow()+","+page.getEndRow();
			List<T> list = hibernateTemplate.execute(new HibernateCallback() {
				public Object doInHibernate(Session arg0)
				throws HibernateException, SQLException {
					return getPageList(arg0, sql, page.getStartRow(), page.getEndRow());
				}

			});
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Integer findCount() {
		try{
			String sql = "select count(*) from " + getTableName();
			List<Long> list = hibernateTemplate.find(sql);
			return list.get(0).intValue();
		}catch(Exception e){
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public Integer findCount(Map<String, String> param) {
		StringBuffer sql = new StringBuffer("select count(*) from "
				+ getTableName() + " where 1=1");
		Set<String> keys = param.keySet();
		for (String key : keys) {
			String value = param.get(key);
			if (value != null && "".equals(value)) {
				sql.append(" and " + key + "='" + value + "'");
			}
		}
		List<Long> list = hibernateTemplate.find(sql.toString());
		return list.get(0).intValue();
	}

	@SuppressWarnings("unchecked")
	public List<T> querySql(final Page page, Map<String, String> param) {
		final StringBuffer hql = new StringBuffer("from " + getTableName()
				+ " where 1=1");
		Set<String> keys = param.keySet();
		for (String key : keys) {
			String value = param.get(key);
			if (value != null && "".equals(value)) {
				hql.append(" and " + key + "='" + value + "'");
			}
		}
		//List<T> list = hibernateTemplate.find(hql.toString());
		List<T> list = hibernateTemplate.execute(new HibernateCallback() {
			public Object doInHibernate(Session arg0)
			throws HibernateException, SQLException {
				return getPageList(arg0, hql.toString(), page.getStartRow(), page.getEndRow());
			}

		});
		return list;
	}

	@Override
	public List<T> querySql(String sql) {
		List<T> list = hibernateTemplate.find(sql);
		return list;
	}
	
	private List<?> getPageList(Session session,String sql,int start,int end){
		Query query = session.createQuery(sql);
		query.setFirstResult(start);
		query.setMaxResults(end);
		return query.list();
	}

}
