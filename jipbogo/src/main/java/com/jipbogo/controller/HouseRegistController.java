package com.jipbogo.controller;

import java.io.File;
import java.util.Iterator;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.jipbogo.dto.HouseRegistDTO;
import com.jipbogo.service.HouseService;

@Controller
public class HouseRegistController {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "houseService")
  private HouseService houseService;

  @RequestMapping(value = "houseRegist.do")
  public ModelAndView houseRegist() {
    return new ModelAndView("houseRegist");
  }

  @RequestMapping(value = "houseRegistAction.do")
  public ModelAndView houseRegistAction(HttpServletRequest request,
      MultipartHttpServletRequest multi) throws Exception {

    HttpSession session = request.getSession();

    ModelAndView mv = new ModelAndView("redirect:main.do");

    String house_name = request.getParameter("house_name");
    String post = request.getParameter("post");
    String addr = request.getParameter("addr");
    String detailaddr = request.getParameter("detailaddr");
    String parking = request.getParameter("parking");
    String gen = request.getParameter("h_gen");
    String exp = request.getParameter("exp");
    int max = Integer.parseInt(request.getParameter("max"));
    String h_type = request.getParameter("h_type");
    String layout = request.getParameter("layout");
    String intro = request.getParameter("intro");

    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");

    String id = (String) session.getAttribute("id");
    
    intro = intro.replaceAll("\r\n", "\n");
    intro = intro.replaceAll("\n", "<br>");

    HouseRegistDTO dto = new HouseRegistDTO();
    dto.setHouse_name(house_name);
    dto.setHouse_addr1(post);
    dto.setHouse_addr2(addr);
    dto.setHouse_addr3(detailaddr);
    dto.setHouse_parking(parking);
    dto.setHouse_gen(gen);
    dto.setHouse_exp(exp);
    dto.setHouse_max(max);
    dto.setHouse_type(h_type);
    dto.setHouse_layout(layout);
    dto.setHouse_intro(intro);
    dto.setManager_name(name);
    dto.setManager_phone(phone);
    dto.setManager_email(email);
    dto.setUser_id(id);

    String realPath = request.getSession().getServletContext().getRealPath("");
    String savePath = realPath + "roomImg\\";

    System.out.println(savePath);
    File folder = new File(savePath);

    if (!folder.exists()) {
      folder.mkdirs();
    }

    Iterator<String> files = multi.getFileNames();

    String[] fileList = new String[6];

    int i = 0;

    while (files.hasNext()) {

      MultipartFile mFile = multi.getFile(files.next());

      String filename = mFile.getOriginalFilename();

      if (!mFile.isEmpty()) {
        mFile.transferTo(new File(savePath + id + filename));
        fileList[i] = filename;
      } else {
        fileList[i] = null;
      }
      i++;
    }
    
    dto.setHouse_img1(fileList[0]);
    dto.setHouse_img2(fileList[1]);
    dto.setHouse_img3(fileList[2]);
    dto.setHouse_img4(fileList[3]);
    dto.setHouse_img5(fileList[4]);
    dto.setHouse_img6(fileList[5]);

    houseService.houseRegistAction(dto);

    return mv;
  }

}
