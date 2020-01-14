package com.jipbogo.controller;

import java.util.List;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.jipbogo.common.CommandMap;
import com.jipbogo.dto.HouseDTO;
import com.jipbogo.service.HouseService;
import com.jipbogo.util.Util;

@Controller
public class HouseController {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "houseService")
  private HouseService housesService;


  @RequestMapping(value = "houses.do")
  public ModelAndView houses(CommandMap commandMap) throws Exception {
    ModelAndView mv = new ModelAndView("houses");

    int page = 1;

    if (commandMap.get("page") != null) {
      page = Util.checkInt((String) commandMap.get("page"));
    }
    
    List<HouseDTO> houses = housesService.houses((page - 1) * 10);

    int count;
    
    if( houses.size()== 0){ //글없을때
      count = 1;
    } else {
      count = houses.get(0).getTotalCount();
    }

    mv.addObject("houses", houses);
    mv.addObject("page", page);
    mv.addObject("totalCount", count);

    return mv;
  }
}
