package com.jipbogo.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.jipbogo.common.CommandMap;
import com.jipbogo.dto.LoginDTO;
import com.jipbogo.service.LoginService;

@Controller
public class LoginController {
  Logger log = Logger.getLogger(this.getClass());

  @Resource(name = "loginService")
  private LoginService loginService;


  @RequestMapping(value = "login.do")
  public ModelAndView login(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("login");

    return mv;
  }

  // loginAction.do
  @RequestMapping(value = "loginAction.do")
  public ModelAndView loginAction(CommandMap commandMap, HttpServletRequest request)
      throws Exception {
    ModelAndView mv = null;

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    LoginDTO dto = new LoginDTO();
    dto.setUser_id(id);
    dto.setUser_pw(pw);

    String name = loginService.loginName(dto);
    String type = loginService.loginType(dto);

    if (name != null) {
      HttpSession session = request.getSession();
      session.setAttribute("name", name);
      session.setAttribute("type", type);
      session.setAttribute("id", id);
      session.setAttribute("pw", pw);
      mv = new ModelAndView("redirect:main.do");
    } else {
      mv = new ModelAndView("redirect:main.do");
    }

    return mv;
  }

  // logout.do
  @RequestMapping(value = "logout.do")
  public ModelAndView logout(CommandMap commandmap, HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("redirect:main.do");
    HttpSession session = request.getSession();

    // 세션 종료
    if (session.getAttribute("id") != null) {
      session.removeAttribute("id");
    }
    if (session.getAttribute("name") != null) {
      session.removeAttribute("name");
    }
    if (session.getAttribute("id") != null) {
      session.removeAttribute("id");
    }
    if (session.getAttribute("type") != null) {
      session.removeAttribute("type");
    }
    session.removeAttribute("id");// 개별종료-()에 기재된 하나만 종료

    return mv;
  }

  @RequestMapping(value = "sign.do")
  public ModelAndView sign(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("sign");

    return mv;
  }

  // signAction.do
  @RequestMapping(value = "signAction.do")
  public ModelAndView signAction(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("redirect:main.do");

    LoginDTO dto = new LoginDTO();
    dto.setUser_id(request.getParameter("id"));
    dto.setUser_pw(request.getParameter("pw1"));
    dto.setUser_name(request.getParameter("name"));
    dto.setUser_email(request.getParameter("email"));
    dto.setUser_phone(request.getParameter("phone"));
    dto.setUser_gen(request.getParameter("gen"));
    dto.setUser_type(request.getParameter("type"));

    loginService.signAction(dto);

    return mv;
  }

  // checkID.do
  @RequestMapping(value = "checkID.do")
  public @ResponseBody int checkID(HttpServletRequest request) throws Exception {
    // @ResponseBody : 결과값을 바디에
    String id = request.getParameter("id");

    int num = loginService.checkID(id);

    return num;
  }
  
  @RequestMapping(value = "checkIdPw.do")
  public ModelAndView checkIdPw(HttpServletRequest request) throws Exception {
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    System.out.println(id);
    System.out.println(pw);
    
    ModelAndView mv = new ModelAndView("checkIdPw");

    return mv;
  }
  // find.do
  @RequestMapping(value = "find.do")
  public ModelAndView find(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("find");

    return mv;
  }

  // idfindAction.do
  @RequestMapping(value = "idfindAction.do")
  public ModelAndView idfindAction(HttpServletRequest request) throws Exception {
    ModelAndView mv = null;

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    LoginDTO dto = new LoginDTO();
    dto.setUser_name(name);
    dto.setUser_email(email);
    dto.setUser_phone(phone);

    List<LoginDTO> find = loginService.idfindAction(dto);

    mv = new ModelAndView("findResult");

    mv.addObject("find", find);

    return mv;
  }

  // pwfindAction.do
  @RequestMapping(value = "pwfindAction.do")
  public ModelAndView pwfindAction(HttpServletRequest request) throws Exception {
    ModelAndView mv = null;

    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    LoginDTO dto = new LoginDTO();
    dto.setUser_id(id);
    dto.setUser_name(name);
    dto.setUser_email(email);
    dto.setUser_phone(phone);

    List<LoginDTO> pwfind = loginService.pwfindAction(dto);

    mv = new ModelAndView("pwfindResult");
    mv.addObject("pwfind", pwfind);

    return mv;
  }


  // findResult.do
  @RequestMapping(value = "findResult.do")
  public ModelAndView findResult(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("findResult");

    return mv;
  }

  // pwfindResult.do
  @RequestMapping(value = "pwfindResult.do")
  public ModelAndView pwfindResult(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("pwfindResult");

    return mv;
  }


  // seller_sign.do
  @RequestMapping(value = "sellerSign.do")
  public ModelAndView sellerSign(HttpServletRequest request) throws Exception {
    ModelAndView mv = new ModelAndView("sellerSign");

    return mv;
  }

  // sellsignAction.do
  @RequestMapping(value = "sellsignAction.do")
  public ModelAndView sellsignAction(HttpServletRequest request) throws Exception {

    LoginDTO dto = new LoginDTO();
    dto.setUser_id(request.getParameter("id"));
    dto.setUser_pw(request.getParameter("pw1"));
    dto.setUser_name(request.getParameter("name"));
    dto.setUser_email(request.getParameter("email"));
    dto.setUser_phone(request.getParameter("phone"));
    dto.setUser_gen(request.getParameter("gen"));
    dto.setUser_type(request.getParameter("type"));

    ModelAndView mv = new ModelAndView("main");

    return mv;
  }

  // sellsignAction2.do
  @RequestMapping(value = "sellsignAction2.do")
  public ModelAndView sellsignAction2(HttpServletRequest request) throws Exception {

    LoginDTO dto = new LoginDTO();
    dto.setUser_id(request.getParameter("id"));
    dto.setUser_pw(request.getParameter("pw1"));
    dto.setUser_name(request.getParameter("name"));
    dto.setUser_email(request.getParameter("email"));
    dto.setUser_phone(request.getParameter("phone"));
    dto.setUser_gen(request.getParameter("gen"));
    dto.setUser_biznum(request.getParameter("bizNum"));
    dto.setUser_acc(request.getParameter("acc"));
    dto.setUser_type(request.getParameter("type"));

    ModelAndView mv = new ModelAndView("main");

    return mv;
  }

}
