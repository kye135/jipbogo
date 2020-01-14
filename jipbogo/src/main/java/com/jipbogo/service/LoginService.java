package com.jipbogo.service;

import java.util.List;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import com.jipbogo.dao.LoginDAO;
import com.jipbogo.dto.LoginDTO;

public interface LoginService {

  void signAction(LoginDTO dto) throws Exception;

  int checkID(String id) throws Exception;

  String loginName(LoginDTO dto) throws Exception;

  String loginType(LoginDTO dto) throws Exception;

  List<LoginDTO> idfindAction(LoginDTO dto) throws Exception;

  List<LoginDTO> pwfindAction(LoginDTO dto) throws Exception;

  int sellsignAction(LoginDTO dto) throws Exception;

  int sellsignAction2(LoginDTO dto) throws Exception;

}


@Service("loginService")
class LoginServiceImpl implements LoginService {

  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "loginDAO")
  private LoginDAO loginDAO;

  @Override
  public void signAction(LoginDTO dto) throws Exception {
    loginDAO.signAction(dto);
  }

  @Override
  public int checkID(String id) throws Exception {
    return loginDAO.checkID(id);
  }

  @Override
  public String loginName(LoginDTO dto) throws Exception {
    return loginDAO.loginName(dto);
  }

  @Override
  public String loginType(LoginDTO dto) throws Exception {
    return loginDAO.loginType(dto);
  }


  @Override
  public List<LoginDTO> idfindAction(LoginDTO dto) throws Exception {
    return loginDAO.idfindAction(dto);
  }

  @Override
  public List<LoginDTO> pwfindAction(LoginDTO dto) throws Exception {
    return loginDAO.pwfindAction(dto);
  }

  @Override
  public int sellsignAction(LoginDTO dto) throws Exception {
    return loginDAO.sellsignAction(dto);
  }

  @Override
  public int sellsignAction2(LoginDTO dto) throws Exception {
    return loginDAO.sellsignAction2(dto);
  }
}

