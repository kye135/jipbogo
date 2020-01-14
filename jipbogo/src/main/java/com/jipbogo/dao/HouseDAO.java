package com.jipbogo.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.jipbogo.dto.HouseDTO;
import com.jipbogo.dto.HouseRegistDTO;

@Repository("houseDAO")
public class HouseDAO extends AbstractDAO {

  @SuppressWarnings("unchecked")
  public List<HouseDTO> houses(int page) {
    return selectList("house.house", page);
  }

  @SuppressWarnings("unchecked")
  public List<HouseDTO> houseSearch(String query) {
    return selectList("house.houseSearch", query);
  }

  public void houseRegistAction(HouseRegistDTO dto) {
    insert("house.houseRegistAction", dto);
  }


}
