package com.jipbogo.controller;

import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.jipbogo.service.MainService;

@Controller
public class MainController {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "mainService")
  private MainService mainService;

  @RequestMapping(value = "main.do")
  public ModelAndView main() throws Exception {
    ModelAndView mv = new ModelAndView("main");

    return mv;
  }


  @RequestMapping(value = "lifes.do")
  public ModelAndView lifes() throws Exception {
    ModelAndView mv = new ModelAndView("lifes");

    return mv;
  }


  @RequestMapping(value = "privacy.do")
  public ModelAndView privacy() throws Exception {
    ModelAndView mv = new ModelAndView("privacy");

    return mv;
  }

  @RequestMapping(value = "terms.do")
  public ModelAndView terms() throws Exception {
    ModelAndView mv = new ModelAndView("terms");

    return mv;
  }

  @RequestMapping(value = "location.do")
  public ModelAndView location() throws Exception {
    ModelAndView mv = new ModelAndView("location");

    return mv;
  }



}
