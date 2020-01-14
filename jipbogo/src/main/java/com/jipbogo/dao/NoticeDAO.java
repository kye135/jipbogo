package com.jipbogo.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.jipbogo.dto.NoticeDTO;

@Repository("noticeDAO")
public class NoticeDAO extends AbstractDAO{

  @SuppressWarnings("unchecked")
  public List<NoticeDTO> notice(int page) {
    return selectList("notice.notice", page);
  }

  public void noticeWriteAction(NoticeDTO dto) {
    insert("notice.noticeWriteAction", dto);
  }

  public NoticeDTO noticeDetail(int reBno) {
    return (NoticeDTO) selectOne("notice.noticeDetail", reBno);
  }

  public void noticeDetailCountUp(int reBno) {
    update("notice.noticeDetailCountUp", reBno);
  }

  public void noticeDetailDelete(NoticeDTO dto) {
    delete("notice.noticeDetailDelete", dto);
  }

  public void noticeDetailModifyAction(NoticeDTO dto) {
    update("notice.noticeDetailModifyAction", dto);
  }


}
