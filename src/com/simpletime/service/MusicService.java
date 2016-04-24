package com.simpletime.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.simpletime.base.service.BaseServiceImpl;
import com.simpletime.pojo.Music;
import com.simpletime.pojo.Page;

@Service
public class MusicService extends BaseServiceImpl<Music> {
   
	public List<Music> getIndexData(Page page){
		List<Music> list = new ArrayList<Music>();
		list = findAll(page);
		return list;
	}
    
}
