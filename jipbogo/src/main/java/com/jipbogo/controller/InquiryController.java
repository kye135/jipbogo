package com.jipbogo.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.jipbogo.common.CommandMap;
import com.jipbogo.dto.InquiryDTO;
import com.jipbogo.service.InquiryService;
import com.jipbogo.util.Util;


@Controller
public class InquiryController {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "inquiryService")
  private InquiryService inquiryService;
  
  @RequestMapping(value = "inquiry.do")
  public ModelAndView inquiry(CommandMap commandMap) throws Exception {
    ModelAndView mv = new ModelAndView("inquiry");

    int page = 1;

    if (commandMap.get("page") != null) {
      page = Util.checkInt((String) commandMap.get("page"));
    }

    List<InquiryDTO> inquiry = inquiryService.inquiry(((page - 1) * 10));

    int count;

    if (inquiry.size() == 0) { // 글없을떄
      count = 1;
    } else {
      count = inquiry.get(0).getTotalCount();
    }

    mv.addObject("inquiry", inquiry);
    mv.addObject("page", page);
    mv.addObject("totalCount", count);
    
    return mv;
  }

  @RequestMapping(value = "inquiryWrite.do")
  public ModelAndView inquiryWrite(CommandMap commandMap) throws Exception {
    return new ModelAndView("inquiryWrite");
  }

  @RequestMapping(value = "inquiryWriteAction.do")
  public ModelAndView inquiryWriteAction(HttpServletRequest request,
      @RequestParam("file") MultipartFile file) throws Exception {


    ModelAndView mv = new ModelAndView("redirect:inquiry.do");

    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    content = content.replaceAll("\r\n", "\n");
    content = content.replaceAll("\n", "<br>");

    InquiryDTO dto = new InquiryDTO();
    dto.setInquiry_name(name);
    dto.setInquiry_phone(phone);
    dto.setInquiry_email(email);
    dto.setInquiry_title(title);
    dto.setInquiry_content(content);

    if (file.getSize() != 0) {// 파일이 업로드 되었을때만
      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
      String today = sdf.format(new Date());
      System.out.println(today);/// 오늘 년월일시분초
      String upFileName = today + file.getOriginalFilename();
      System.out.println(upFileName);
      // 파일 업로드 경로
      String path = request.getSession().getServletContext().getRealPath("/");

      System.out.println("리얼경로" + path);
      File f = new File(path + "upImg/" + upFileName);// 준비
      file.transferTo(f);// 실제 파일 전송
      dto.setInquiry_file(upFileName);
    }

    inquiryService.inquiryWriteAction(dto);

    return mv;
  }


}
