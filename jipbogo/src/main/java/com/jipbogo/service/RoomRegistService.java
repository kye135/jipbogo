package com.jipbogo.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.jipbogo.dao.RoomRegistDAO;
import com.jipbogo.dto.RoomRegistDTO;

public interface RoomRegistService {

  void roomRegistWriteAction(RoomRegistDTO dto) throws Exception;

  List<RoomRegistDTO> roomDetail(int rehno) throws Exception;

List<RoomRegistDTO> roomRegistList(Map<String, Object> map);

RoomRegistDTO roomDetailRegist(int rerno) throws Exception;


}


@Service("roomRegistService")
class RoomRegistServiceImpl implements RoomRegistService {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "roomRegistDAO")
  private RoomRegistDAO roomRegistDAO;

  @Override
  public void roomRegistWriteAction(RoomRegistDTO dto) throws Exception {
    roomRegistDAO.roomRegistWriteAction(dto);
  }

  @Override
  public List<RoomRegistDTO> roomDetail(int rehno) throws Exception {
    return roomRegistDAO.roomDetail(rehno);
  }

  @Override
  public List<RoomRegistDTO> roomRegistList(Map<String, Object> map) {
	return roomRegistDAO.roomRegistList(map);
  }

@Override
public RoomRegistDTO roomDetailRegist(int rerno) throws Exception {
	return roomRegistDAO.roomDetailRegist(rerno);
}




}
