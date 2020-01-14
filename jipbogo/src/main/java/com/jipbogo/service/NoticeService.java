package com.jipbogo.service;

import java.util.List;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import com.jipbogo.dao.NoticeDAO;
import com.jipbogo.dto.NoticeDTO;


public interface NoticeService {

  List<NoticeDTO> notice(int page) throws Exception;

  void noticeWriteAction(NoticeDTO dto) throws Exception;

  NoticeDTO noticeDetail(int reBno) throws Exception;

  void noticeDetailCountUp(int reBno) throws Exception;

  void noticeDetailDelete(NoticeDTO dto) throws Exception;

  void noticeDetailModifyAction(NoticeDTO dto) throws Exception;

}

@Service("noticeService")
class NoticeServiceImpl implements NoticeService {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "noticeDAO")
  private NoticeDAO noticeDAO;


  @Override
  public List<NoticeDTO> notice(int page) throws Exception {
    return noticeDAO.notice(page);
  }

  @Override
  public void noticeWriteAction(NoticeDTO dto) throws Exception {
    noticeDAO.noticeWriteAction(dto);
  }

  @Override
  public NoticeDTO noticeDetail(int reBno) throws Exception {
    return noticeDAO.noticeDetail(reBno);
  }

  @Override
  public void noticeDetailCountUp(int reBno) throws Exception {
    noticeDAO.noticeDetailCountUp(reBno);
  }

  @Override
  public void noticeDetailDelete(NoticeDTO dto) throws Exception {
    noticeDAO.noticeDetailDelete(dto);
  }

  @Override
  public void noticeDetailModifyAction(NoticeDTO dto) throws Exception {
    noticeDAO.noticeDetailModifyAction(dto);
  }


}

