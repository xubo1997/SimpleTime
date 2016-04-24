package com.simpletime.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.simpletime.base.service.BaseServiceImpl;
import com.simpletime.pojo.Movie;
import com.simpletime.pojo.Page;

@Service
public class MovieService extends BaseServiceImpl<Movie> {
   
	public List<Movie> getIndexData(Page page){
		List<Movie> list = new ArrayList<Movie>();
		list = findAll(page);
		return list;
	}
    
    
}
