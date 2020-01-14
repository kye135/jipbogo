package com.jipbogo.service;

import java.util.List;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import com.jipbogo.dao.UserQnaDAO;
import com.jipbogo.dto.UserQnaCommentDTO;
import com.jipbogo.dto.UserQnaDTO;


public interface UserQnaService {

  List<UserQnaDTO> userQna(int page) throws Exception;

  void userQnaWriteAction(UserQnaDTO dto) throws Exception;

  UserQnaDTO userQnaDetail(int reBno) throws Exception;

  void userQnaDetailCountUp(int reBno) throws Exception;

  void userQnaDetailDelete(UserQnaDTO dto) throws Exception;

  void userQnaDetailModifyAction(UserQnaDTO dto) throws Exception;

  List<UserQnaCommentDTO> userQnaComment(int reBno) throws Exception;

  void userQnaCommentAction(UserQnaCommentDTO dto) throws Exception;

  void userQnaCommentDelete(int reBno) throws Exception;

  UserQnaCommentDTO userQnaCommentModifyData(int reBno) throws Exception;

  void userQnaCommentModifyAction(UserQnaCommentDTO dto) throws Exception;

}


@Service("userQnaService")
class UserQnaServiceImpl implements UserQnaService {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "userQnaDAO")
  private UserQnaDAO userQnaDAO;


  @Override
  public List<UserQnaDTO> userQna(int page) throws Exception {
    return userQnaDAO.userQna(page);
  }

  @Override
  public void userQnaWriteAction(UserQnaDTO dto) throws Exception {
    userQnaDAO.userQnaWriteAction(dto);
  }

  @Override
  public UserQnaDTO userQnaDetail(int reBno) throws Exception {
    return userQnaDAO.userQnaDetail(reBno);
  }

  @Override
  public void userQnaDetailCountUp(int reBno) throws Exception {
    userQnaDAO.userQnaDetailCountUp(reBno);
  }


  @Override
  public void userQnaDetailDelete(UserQnaDTO dto) throws Exception {
    userQnaDAO.userQnaDetailDelete(dto);

  }

  @Override
  public void userQnaDetailModifyAction(UserQnaDTO dto) throws Exception {
    userQnaDAO.userQnaDetailModifyAction(dto);

  }


  @Override
  public List<UserQnaCommentDTO> userQnaComment(int reBno) throws Exception {
    return userQnaDAO.userQnaComment(reBno);
  }

  @Override
  public void userQnaCommentAction(UserQnaCommentDTO dto) throws Exception {
    userQnaDAO.userQnaCommentAction(dto);

  }

  @Override
  public void userQnaCommentDelete(int reBno) throws Exception {
    userQnaDAO.userQnaCommentDelete(reBno);

  }

  @Override
  public UserQnaCommentDTO userQnaCommentModifyData(int reBno) throws Exception {
    return userQnaDAO.userQnaCommentModifyData(reBno);
  }

  @Override
  public void userQnaCommentModifyAction(UserQnaCommentDTO dto) throws Exception {
    userQnaDAO.userQnaCommentModifyAction(dto);

  }
}

