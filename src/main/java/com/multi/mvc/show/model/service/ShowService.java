package com.multi.mvc.show.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.show.model.mapper.ShowMapper;
import com.multi.mvc.show.model.vo.Show;

@Service
public class ShowService {

	@Autowired
	ShowMapper mapper;
	
	public List<Show> findShow(Map<String, Object> map){
		return mapper.selectShowList(map);
	}
	

	public List<Show> findDisplay(Map<String, Object> map){
		return mapper.selectDisplayList(map);
	}
	
	public List<Show> findLocation(Map<String, Object> map){
		return mapper.selectLocationList(map);
	}

}
