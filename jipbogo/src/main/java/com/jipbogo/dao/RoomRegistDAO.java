package com.jipbogo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.jipbogo.dto.RoomRegistDTO;

@Repository("roomRegistDAO")
public class RoomRegistDAO extends AbstractDAO{

	public void roomRegistWriteAction(RoomRegistDTO dto) {
		insert("roomRegist.roomRegistWriteAction", dto);
	}

	@SuppressWarnings("unchecked")
	public List<RoomRegistDTO> roomDetail(int rehno) {
		return selectList("roomRegist.roomDetail", rehno);
	}

	@SuppressWarnings("unchecked")
	public List<RoomRegistDTO> roomRegistList(Map<String, Object> map) {
		return selectList("roomRegist.roomRegistList", map);
	}

	public RoomRegistDTO roomDetailRegist(int rerno) {
		return (RoomRegistDTO) selectOne("roomRegist.roomDetailRegist", rerno);
	}

	

	

}
