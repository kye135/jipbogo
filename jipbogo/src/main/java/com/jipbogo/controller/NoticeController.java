package com.jipbogo.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.jipbogo.common.CommandMap;
import com.jipbogo.dto.NoticeDTO;
import com.jipbogo.service.NoticeService;
import com.jipbogo.util.Util;

@Controller
public class NoticeController {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "noticeService")
  private NoticeService noticeService;

  @RequestMapping(value = "notice.do")
  public ModelAndView notice(CommandMap commandMap) throws Exception {
    ModelAndView mv = new ModelAndView("notice");

    int page = 1;

    if (commandMap.get("page") != null) {
      page = Util.checkInt((String) commandMap.get("page"));
    }


    List<NoticeDTO> notice = noticeService.notice(((page - 1) * 10));

    mv.addObject("page", page);
    int count;
    
    if( notice.size()== 0){ //글없을떄
      count = 1;
    } else {
      count = notice.get(0).getTotalCount();
    }

    mv.addObject("totalCount", count);
    mv.addObject("notice", notice);
    return mv;
  }

  @RequestMapping(value = "noticeWrite.do")
  public ModelAndView noticeWrite(HttpServletRequest request) throws Exception {

    HttpSession session = request.getSession();

    if (session.getAttribute("id") != null && session.getAttribute("name") != null) {
      return new ModelAndView("noticeWrite");
    } else {
      return new ModelAndView("redirect:main.do");
    }
  }

  @RequestMapping(value = "noticeWriteAction.do")
  public ModelAndView noticeWriteAction(HttpServletRequest request) throws Exception {

    ModelAndView mv = new ModelAndView("redirect:notice.do");

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    content = content.replaceAll("\r\n", "\n");
    content = content.replaceAll("\n", "<br>");

    NoticeDTO dto = new NoticeDTO();
    dto.setNotice_id(id);
    dto.setNotice_pw(pw);
    dto.setNotice_title(title);
    dto.setNotice_content(content);

    noticeService.noticeWriteAction(dto);

    return mv;
  }
  
  @RequestMapping(value = "noticeDetail.do")
  public ModelAndView noticeDetail(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("noticeDetail");

    String bno = request.getParameter("notice_no");

    int reBno = Util.checkInt(bno);

    noticeService.noticeDetailCountUp(reBno);


    NoticeDTO noticeDetail = noticeService.noticeDetail(reBno);

    mv.addObject("noticeDetail", noticeDetail);

    return mv;
  }

  @RequestMapping(value = "noticeDetailDelete.do")
  public ModelAndView noticeDetailDelete(HttpServletRequest request) throws Exception {
    
    ModelAndView mv = new ModelAndView("redirect:notice.do");

    // if(session.getAttribute("name") != null && session.getAttribute("id") != null
    // && request.getParameter("board3_no") != null) {
    
    String bno = request.getParameter("notice_no");
 
    int reBno = Util.checkInt(bno);

    NoticeDTO dto = new NoticeDTO();
    dto.setNotice_no(reBno);

    // noticeService.detailDelete(reBno);이거 기존 식
    noticeService.noticeDetailDelete(dto);// 이거 변경된 구문

    return mv;
  }
  
  @RequestMapping(value="noticeDetailModifyData.do")
  public ModelAndView noticeDetailModifyData(HttpServletRequest request) throws Exception {
      String bno = request.getParameter("notice_no");
      
      ModelAndView mv = new ModelAndView("noticeDetailModify");

      int reBno = Util.checkInt(bno);
      
      NoticeDTO dto = noticeService.noticeDetail(reBno);
      
      mv.addObject("noticeDetailModify", dto);
      
      return mv;
  }
  
  @RequestMapping(value="noticeDetailModifyAction.do")
  public ModelAndView noticeDetailModifyAction(HttpServletRequest request) throws Exception {
      String bno = request.getParameter("notice_no");
      ModelAndView mv = new ModelAndView("redirect:noticeDetail.do?notice_no="+bno);

      String title = request.getParameter("title");
      String content = request.getParameter("content");
      
      NoticeDTO dto = new NoticeDTO();
      dto.setNotice_title(title);
      dto.setNotice_content(content);
      dto.setNotice_no(Util.checkInt(bno));
      
      
      noticeService.noticeDetailModifyAction(dto);
      
      return mv;
  }
  
}
