package com.simpletime.base.dao;

import java.beans.IntrospectionException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

import com.simpletime.pojo.Page;


public interface IBaseDao<T> {

	public T save(T t);

	public T update(T t);
	
	public boolean delete(T t) throws IntrospectionException, IllegalAccessException, IllegalArgumentException, InvocationTargetException;

	public T findById(String id);
	
	public List<T> findAll();
	
	public List<T> findAll(Page page);
	
	public List<T> querySql(String sql);
	
	public List<T> querySql(Map<String, String> param);
	
	public List<T> querySql(Page page,Map<String, String> param);
	
	public Integer findCount();
	
	public Integer findCount(Map<String, String> param);
}
