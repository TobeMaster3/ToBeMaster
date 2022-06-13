package com.camper.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camper.mapper.DashboardMapper;
import com.camper.model.BoardTO;
import com.camper.model.UserDTO;


@Service
public class DashboardService implements DashboardMapper {
	
	@Autowired
	public DashboardMapper mapper;

	@Override
	public List<BoardTO> writeList(UserDTO to) {
		// TODO Auto-generated method stub
		return mapper.writeList(to);
	}

	@Override
	public int totalWrite(UserDTO to) {
		// TODO Auto-generated method stub
		return mapper.totalWrite(to);

	}

}
