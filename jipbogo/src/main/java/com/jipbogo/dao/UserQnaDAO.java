package com.jipbogo.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.jipbogo.dto.UserQnaCommentDTO;
import com.jipbogo.dto.UserQnaDTO;

@Repository("userQnaDAO")
public class UserQnaDAO extends AbstractDAO {


  @SuppressWarnings("unchecked")
  public List<UserQnaDTO> userQna(int page) {
    return selectList("userQna.userQna", page);
  }


  public void userQnaWriteAction(UserQnaDTO dto) {
    insert("userQna.userQnaWriteAction", dto);
  }

  public UserQnaDTO userQnaDetail(int reBno) {
    return (UserQnaDTO) selectOne("userQna.userQnaDetail", reBno);
  }

  public void userQnaDetailCountUp(int reBno) {
    update("userQna.userQnaDetailCountUp", reBno);

  }

  public void userQnaDetailDelete(UserQnaDTO dto) {
    delete("userQna.userQnaDetailDelete", dto);

  }

  public void userQnaDetailModifyAction(UserQnaDTO dto) {
    update("userQna.userQnaDetailModifyAction", dto);

  }


  @SuppressWarnings("unchecked")
  public List<UserQnaCommentDTO> userQnaComment(int reBno) {
    return selectList("userQna.userQnaComment", reBno);
  }

  public void userQnaCommentAction(UserQnaCommentDTO dto) {
    insert("userQna.userQnaCommentAction", dto);

  }

  public void userQnaCommentDelete(int reBno) {
    delete("userQna.userQnaCommentDelete", reBno);

  }

  public UserQnaCommentDTO userQnaCommentModifyData(int reBno) {
    return (UserQnaCommentDTO) selectOne("userQna.userQnaCommentModifyData", reBno);
  }

  public void userQnaCommentModifyAction(UserQnaCommentDTO dto) {
    update("userQna.userQnaCommentModifyAction", dto);
  }

}
