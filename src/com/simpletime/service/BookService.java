package com.simpletime.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.simpletime.base.service.BaseServiceImpl;
import com.simpletime.pojo.Book;
import com.simpletime.pojo.Page;

@Service
public class BookService extends BaseServiceImpl<Book> {
	
	private final Logger logger = Logger.getLogger("");
	
	public List<Book> getIndexData(Page page){
		List<Book> list = new ArrayList<Book>();
		list = findAll(page);
		return list;
	}
}
