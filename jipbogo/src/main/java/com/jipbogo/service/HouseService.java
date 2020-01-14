package com.jipbogo.service;

import java.util.List;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import com.jipbogo.dao.HouseDAO;
import com.jipbogo.dto.HouseDTO;
import com.jipbogo.dto.HouseRegistDTO;


public interface HouseService {

  List<HouseDTO> houses(int page) throws Exception;

  List<HouseDTO> houseSearch(String query) throws Exception;

  void houseRegistAction(HouseRegistDTO dto) throws Exception;

}


@Service("houseService")
class HouseServiceImpl implements HouseService {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "houseDAO")
  private HouseDAO houseDAO;

  @Override
  public List<HouseDTO> houses(int page) throws Exception {
    return houseDAO.houses(page);
  }

  @Override
  public List<HouseDTO> houseSearch(String query) throws Exception {
    return houseDAO.houseSearch(query);
  }

  @Override
  public void houseRegistAction(HouseRegistDTO dto) throws Exception {
    houseDAO.houseRegistAction(dto);
  }

}
