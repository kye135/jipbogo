package com.jipbogo.service;

import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import com.jipbogo.dao.MainDAO;


public interface MainService {

}


@Service("mainService")
class MainServiceImpl implements MainService {
  Logger log = Logger.getLogger(this.getClass());


  @Resource(name = "mainDAO")
  private MainDAO mainDAO;
}
