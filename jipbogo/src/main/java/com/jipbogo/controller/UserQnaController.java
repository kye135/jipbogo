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
import com.jipbogo.dto.UserQnaCommentDTO;
import com.jipbogo.dto.UserQnaDTO;
import com.jipbogo.service.UserQnaService;
import com.jipbogo.util.Util;

@Controller
public class UserQnaController {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "userQnaService")
  private UserQnaService userQnaService;

  @RequestMapping(value = "userQna.do")
  public ModelAndView userQna(CommandMap commandMap) throws Exception {
    ModelAndView mv = new ModelAndView("userQna");

    int page = 1;

    if (commandMap.get("page") != null) {
      page = Util.checkInt((String) commandMap.get("page"));
    }

    List<UserQnaDTO> userQna = userQnaService.userQna(((page - 1) * 10));

    int count;

    if (userQna.size() == 0) { // 글없을떄
      count = 1;
    } else {
      count = userQna.get(0).getTotalCount();
    }

    mv.addObject("userQna", userQna);
    mv.addObject("page", page);
    mv.addObject("totalCount", count);
    
    return mv;
  }

  @RequestMapping(value = "userQnaWrite.do")
  public ModelAndView userQnaWrite(HttpServletRequest request) throws Exception {

    return new ModelAndView("userQnaWrite");

  }

  @RequestMapping(value = "userQnaWriteAction.do")
  public ModelAndView userQnaWriteAction(HttpServletRequest request) throws Exception {

    ModelAndView mv = new ModelAndView("redirect:userQna.do");

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    content = content.replaceAll("\r\n", "\n");
    content = content.replaceAll("\n", "<br>");

    UserQnaDTO dto = new UserQnaDTO();
    dto.setUser_qna_id(id);
    dto.setUser_qna_pw(pw);
    dto.setUser_qna_title(title);
    dto.setUser_qna_content(content);

    userQnaService.userQnaWriteAction(dto);

    return mv;
  }

  @RequestMapping(value = "userQnaDetail.do")
  public ModelAndView userQnaDetail(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("userQnaDetail");

    String bno = request.getParameter("user_qna_no");

    int reBno = Util.checkInt(bno);

    userQnaService.userQnaDetailCountUp(reBno);

    UserQnaDTO userQnaDetail = userQnaService.userQnaDetail(reBno);

    mv.addObject("userQnaDetail", userQnaDetail);

    List<UserQnaCommentDTO> userQnaComment = userQnaService.userQnaComment(reBno);

    mv.addObject("userQnaComment", userQnaComment);

    return mv;
  }

  @RequestMapping(value = "userQnaDetailDelete.do")
  public ModelAndView userQnaDetailDelete(HttpServletRequest request) throws Exception {

    ModelAndView mv = new ModelAndView("redirect:userQna.do");

    // if(session.getAttribute("name") != null && session.getAttribute("id") != null
    // && request.getParameter("board3_no") != null) {

    String bno = request.getParameter("user_qna_no");

    int reBno = Util.checkInt(bno);

    UserQnaDTO dto = new UserQnaDTO();
    dto.setUser_qna_no(reBno);

    // userQnaService.detailDelete(reBno);이거 기존 식
    userQnaService.userQnaDetailDelete(dto);// 이거 변경된 구문

    return mv;
  }

  @RequestMapping(value = "userQnaDetailModifyData.do")
  public ModelAndView userQnaDetailModifyData(HttpServletRequest request) throws Exception {
    String bno = request.getParameter("user_qna_no");

    ModelAndView mv = new ModelAndView("userQnaDetailModify");

    int reBno = Util.checkInt(bno);

    UserQnaDTO dto = userQnaService.userQnaDetail(reBno);

    mv.addObject("userQnaDetailModify", dto);

    return mv;
  }

  @RequestMapping(value = "userQnaDetailModifyAction.do")
  public ModelAndView userQnaDetailModifyAction(HttpServletRequest request) throws Exception {
    String bno = request.getParameter("user_qna_no");
    ModelAndView mv = new ModelAndView("redirect:userQnaDetail.do?user_qna_no=" + bno);

    String title = request.getParameter("title");
    String content = request.getParameter("content");

    UserQnaDTO dto = new UserQnaDTO();
    dto.setUser_qna_title(title);
    dto.setUser_qna_content(content);
    dto.setUser_qna_no(Util.checkInt(bno));

    userQnaService.userQnaDetailModifyAction(dto);

    return mv;
  }

  @RequestMapping(value = "userQnaCommentAction.do")
  public ModelAndView userQnaCommentAction(HttpServletRequest request) throws Exception {
    HttpSession session = request.getSession();

    String bno = request.getParameter("user_qna_no");
    int reBno = Util.checkInt(bno);

    ModelAndView mv = new ModelAndView("redirect:userQnaDetail.do?user_qna_no=" + bno);

    String content = request.getParameter("content");
    String id = (String) session.getAttribute("id");

    UserQnaCommentDTO dto = new UserQnaCommentDTO();
    dto.setUser_qna_no(reBno);
    dto.setComment_content(content);
    dto.setUser_id(id);

    userQnaService.userQnaCommentAction(dto);

    return mv;
  }

  // commentDelete.do?comment_no=10
  @RequestMapping(value = "userQnaCommentDelete.do")
  public ModelAndView userQnaCommentDelete(HttpServletRequest request) throws Exception {
    String bno = request.getParameter("user_qna_no");

    ModelAndView mv = new ModelAndView("redirect:userQnaDetail.do?user_qna_no=" + bno);

    int reBno = Util.checkInt(request.getParameter("comment_no"));

    userQnaService.userQnaCommentDelete(reBno);

    return mv;
  }

  @RequestMapping(value = "userQnaCommentModifyData.do")
  public ModelAndView userQnaCommentModifyData(HttpServletRequest request) throws Exception {
    String bno = request.getParameter("comment_no");

    ModelAndView mv = new ModelAndView("userQnaCommentModify");

    int reBno = Util.checkInt(bno);

    UserQnaCommentDTO dto = userQnaService.userQnaCommentModifyData(reBno);

    mv.addObject("userQnaDetailModify", dto);

    return mv;
  }

  @RequestMapping(value = "userQnaCommentModifyAction.do")
  public ModelAndView userQnaCommentModifyAction(HttpServletRequest request) throws Exception {
    String bno = request.getParameter("user_qna_no");

    ModelAndView mv = new ModelAndView("redirect:userQnaDetail.do?user_qna_no=" + bno);

    String content = request.getParameter("content");

    UserQnaCommentDTO dto = new UserQnaCommentDTO();
    dto.setComment_no(Util.checkInt(request.getParameter("comment_no")));
    dto.setComment_content(content);

    userQnaService.userQnaCommentModifyAction(dto);

    return mv;
  }
}
