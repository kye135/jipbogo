package com.jipbogo.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.jipbogo.common.CommandMap;
import com.jipbogo.dto.HouseDTO;
import com.jipbogo.service.HouseService;

@Controller
public class HouseSearchController {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "houseService")
  private HouseService houseService;


  @RequestMapping(value = "houseSearch.do")
  public ModelAndView houseSearch(HttpServletRequest request, CommandMap commandMap)
      throws Exception {
    ModelAndView mv = new ModelAndView("houseSearch");

    List<HouseDTO> houses = houseService.houseSearch(request.getParameter("query")); // 검색한 결과를 저장한 리스트
   
    mv.addObject("houseSearch", houses);
    
    return mv;
  }
}
