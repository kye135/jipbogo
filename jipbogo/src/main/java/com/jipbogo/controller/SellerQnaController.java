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
import com.jipbogo.dto.SellerQnaCommentDTO;
import com.jipbogo.dto.SellerQnaDTO;
import com.jipbogo.service.SellerQnaService;
import com.jipbogo.util.Util;

@Controller
public class SellerQnaController {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "sellerQnaService")
  private SellerQnaService sellerQnaService;

  @RequestMapping(value = "sellerQna.do")
  public ModelAndView sellerQna(CommandMap commandMap) throws Exception {
    ModelAndView mv = new ModelAndView("sellerQna");

    int page = 1;

    if (commandMap.get("page") != null) {
      page = Util.checkInt((String) commandMap.get("page"));
    }

    List<SellerQnaDTO> sellerQna = sellerQnaService.sellerQna(((page - 1) * 10));

    int count;
    
    if( sellerQna.size()== 0){ //글없을떄
      count = 1;
    } else {
      count = sellerQna.get(0).getTotalCount();
    }

    mv.addObject("sellerQna", sellerQna);
    mv.addObject("page", page);
    mv.addObject("totalCount", count);

    return mv;
  }

  @RequestMapping(value = "sellerQnaWrite.do")
  public ModelAndView sellerQnaWrite(HttpServletRequest request) throws Exception {

    // HttpSession session = request.getSession();
    //
    // if (session.getAttribute("id") != null && session.getAttribute("name") != null) {
    // return new ModelAndView("notice_write");
    // } else {
    // return new ModelAndView("redirect:main.do");
    // }

    return new ModelAndView("sellerQnaWrite");
  }

  @RequestMapping(value = "sellerQnaWriteAction.do")
  public ModelAndView sellerQnaWriteAction(HttpServletRequest request) throws Exception {

    // HttpSession session = request.getSession();

    ModelAndView mv = new ModelAndView("redirect:sellerQna.do");

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    content = content.replaceAll("\r\n", "\n");
    content = content.replaceAll("\n", "<br>");

    SellerQnaDTO dto = new SellerQnaDTO();
    dto.setSeller_qna_id(id);;
    dto.setSeller_qna_pw(pw);
    dto.setSeller_qna_title(title);
    dto.setSeller_qna_content(content);

    sellerQnaService.sellerQnaWriteAction(dto);

    return mv;
  }


  @RequestMapping(value = "sellerQnaDetail.do")
  public ModelAndView sellerQnaDetail(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("sellerQnaDetail");

    String bno = request.getParameter("seller_qna_no");

    int reBno = Util.checkInt(bno);

    sellerQnaService.sellerQnaDetailCountUp(reBno);


    SellerQnaDTO sellerQnaDetail = sellerQnaService.sellerQnaDetail(reBno);

    mv.addObject("sellerQnaDetail", sellerQnaDetail);

    List<SellerQnaCommentDTO> sellerQnaComment = sellerQnaService.sellerQnaComment(reBno);

    mv.addObject("sellerQnaComment", sellerQnaComment);
    
    return mv;
  }

  @RequestMapping(value = "sellerQnaDetailDelete.do")
  public ModelAndView sellerQnaDetailDelete(HttpServletRequest request) throws Exception {
    // HttpSession session = request.getSession();
    ModelAndView mv = new ModelAndView("redirect:sellerQna.do");

    // if(session.getAttribute("name") != null && session.getAttribute("id") != null
    // && request.getParameter("board3_no") != null) {
    String bno = request.getParameter("seller_qna_no");
    int reBno = Util.checkInt(bno);
    SellerQnaDTO dto = new SellerQnaDTO();
    dto.setSeller_qna_no(reBno);

    // sellerQnaService.detailDelete(reBno);이거 기존 식
    sellerQnaService.sellerQnaDetailDelete(dto);// 이거 변경된 구문

    return mv;
  }

  @RequestMapping(value="sellerQnaDetailModifyData.do")
  public ModelAndView sellerQnaDetailModifyData(HttpServletRequest request) throws Exception {
      String bno = request.getParameter("seller_qna_no");
      
      ModelAndView mv = new ModelAndView("sellerQnaDetailModify");

      int reBno = Util.checkInt(bno);
      
      SellerQnaDTO dto = sellerQnaService.sellerQnaDetail(reBno);
      
      mv.addObject("sellerQnaDetailModify", dto);
      
      return mv;
  }
  
  @RequestMapping(value="sellerQnaDetailModifyAction.do")
  public ModelAndView sellerQnaDetailModifyAction(HttpServletRequest request) throws Exception {
      String bno = request.getParameter("seller_qna_no");
      ModelAndView mv = new ModelAndView("redirect:sellerQnaDetail.do?seller_qna_no="+bno);

      String title = request.getParameter("title");
      String content = request.getParameter("content");
      
      SellerQnaDTO dto = new SellerQnaDTO();
      dto.setSeller_qna_title(title);
      dto.setSeller_qna_content(content);
      dto.setSeller_qna_no(Util.checkInt(bno));
      
      
      sellerQnaService.sellerQnaDetailModifyAction(dto);
      
      return mv;
  }
  
  @RequestMapping(value = "sellerQnaCommentAction.do")
  public ModelAndView sellerQnaCommentAction(HttpServletRequest request) throws Exception {
    HttpSession session = request.getSession();

    String bno = request.getParameter("seller_qna_no");
    int reBno = Util.checkInt(bno);

    ModelAndView mv = new ModelAndView("redirect:sellerQnaDetail.do?seller_qna_no=" + bno);

    String content = request.getParameter("content");
    String id = (String) session.getAttribute("id");

    SellerQnaCommentDTO dto = new SellerQnaCommentDTO();
    dto.setSeller_qna_no(reBno);
    dto.setComment_content(content);
    dto.setSeller_id(id);

    sellerQnaService.sellerQnaCommentAction(dto);

    return mv;
  }

  // commentDelete.do?comment_no=10
  @RequestMapping(value = "sellerQnaCommentDelete.do")
  public ModelAndView sellerQnaCommentDelete(HttpServletRequest request) throws Exception {
    String bno = request.getParameter("seller_qna_no");

    ModelAndView mv = new ModelAndView("redirect:sellerQnaDetail.do?seller_qna_no=" + bno);

    int reBno = Util.checkInt(request.getParameter("comment_no"));

    sellerQnaService.sellerQnaCommentDelete(reBno);

    return mv;
  }
}
