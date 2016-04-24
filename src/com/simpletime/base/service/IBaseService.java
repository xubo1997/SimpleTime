package com.simpletime.base.service;

public interface IBaseService<T> {
	
	public T save(T t);
	
	public T findById(String id);
}
