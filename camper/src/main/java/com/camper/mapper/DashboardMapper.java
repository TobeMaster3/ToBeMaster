package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.camper.model.BoardTO;
import com.camper.model.UserDTO;

@Mapper
public interface DashboardMapper {
	public List<BoardTO> writeList(UserDTO to); 
	public int totalWrite(UserDTO to);

}
