package com.jipbogo.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.jipbogo.common.CommandMap;
import com.jipbogo.dto.RoomRegistDTO;
import com.jipbogo.service.RoomRegistService;
import com.jipbogo.util.Util;

@Controller
public class RoomRegistController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="roomRegistService")
	private RoomRegistService roomRegistService;
	
	@RequestMapping(value = "roomRegist.do")
	public ModelAndView index(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();

	    if (session.getAttribute("id") != null && session.getAttribute("name") != null) {
	      return new ModelAndView("roomRegist");
	    } else {
	      return new ModelAndView("redirect:main.do");
	    }
	}
	
	
	//roomRegistWriteAction.do
	@RequestMapping(value = "roomRegistWriteAction.do")
	public ModelAndView roomRegistWriteAction(HttpServletRequest request, MultipartHttpServletRequest multi) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:roomRegistList.do");
		HttpSession session = request.getSession();
		
		if (session.getAttribute("id") != null) {
			String house_name = request.getParameter("house_name");
			String house_addr1 = request.getParameter("house_addr1");
			String house_addr2 = request.getParameter("house_addr2");
			String house_addr3 = request.getParameter("house_addr3");
			String house_parking = request.getParameter("house_parking");
			String house_gen = request.getParameter("house_gen");
			String house_exp = request.getParameter("house_exp");
			String house_type = request.getParameter("house_type");
			String house_layout = request.getParameter("house_layout");
			String house_intro = request.getParameter("house_intro");
			String manager_name = request.getParameter("manager_name");
			String manager_phone = request.getParameter("manager_phone");
			String manager_email = request.getParameter("manager_email");
			int house_max = Util.checkInt(request.getParameter("house_max"));
			String user_id = (String) session.getAttribute("id");
			String house_img1 = request.getParameter("house_img1");
			String house_img2 = request.getParameter("house_img2");
			String house_img3 = request.getParameter("house_img3");
			String house_img4 = request.getParameter("house_img4");
			String house_img5 = request.getParameter("house_img5");
			String house_img6 = request.getParameter("house_img6");
			String house_img7 = request.getParameter("house_img7");
			String house_img8 = request.getParameter("house_img8");
			String house_img9 = request.getParameter("house_img9");
			String house_img10 = request.getParameter("house_img10");

			//System.out.println("아이디는 : " + user_id);
			
			RoomRegistDTO dto = new RoomRegistDTO();
			dto.setHouse_name(house_name);
			dto.setHouse_addr1(house_addr1);
			dto.setHouse_addr2(house_addr2);
			dto.setHouse_addr3(house_addr3);
			dto.setHouse_parking(house_parking);
			dto.setHouse_gen(house_gen);
			dto.setHouse_exp(house_exp);
			dto.setHouse_type(house_type);
			dto.setHouse_layout(house_layout);
			dto.setHouse_intro(house_intro);
			dto.setManager_name(manager_name);
			dto.setManager_phone(manager_phone);
			dto.setManager_email(manager_email);
			dto.setHouse_max(house_max);
			dto.setUser_id(user_id);
			
			if(request.getParameter("room_a_gen") != null || request.getParameter("room_a_avail") != null || 
					request.getParameter("room_a_type") != null || request.getParameter("room_a_size") != null ||
					request.getParameter("room_a_cost") != null || request.getParameter("room_a_depo") != null ||
					request.getParameter("room_a_utility") != null || request.getParameter("room_a_month") != null) {
				String room_a_gen = request.getParameter("room_a_gen");
				String room_a_avail = request.getParameter("room_a_avail");
				int room_a_type = Util.checkInt(request.getParameter("room_a_type"));
				int room_a_size = Util.checkInt(request.getParameter("room_a_size"));
				int room_a_cost = Util.checkInt(request.getParameter("room_a_cost"));
				int room_a_depo = Util.checkInt(request.getParameter("room_a_depo"));
				int room_a_utility = Util.checkInt(request.getParameter("room_a_utility"));
				int room_a_month = Util.checkInt(request.getParameter("room_a_month"));
				
				dto.setRoom_a_gen(room_a_gen);
				dto.setRoom_a_type(room_a_type);
				dto.setRoom_a_avail(room_a_avail);
				dto.setRoom_a_size(room_a_size);
				dto.setRoom_a_cost(room_a_cost);
				dto.setRoom_a_depo(room_a_depo);
				dto.setRoom_a_utility(room_a_utility);
				dto.setRoom_a_month(room_a_month);
			}
			
			if(request.getParameter("room_b_gen") != null || request.getParameter("room_b_avail") != null || 
					request.getParameter("room_b_type") != null || request.getParameter("room_b_size") != null ||
					request.getParameter("room_b_cost") != null || request.getParameter("room_b_depo") != null ||
					request.getParameter("room_b_utility") != null || request.getParameter("room_b_month") != null) {
				String room_b_gen = request.getParameter("room_b_gen");
				String room_b_avail = request.getParameter("room_b_avail");
				int room_b_type = Util.checkInt(request.getParameter("room_b_type"));
				int room_b_size = Util.checkInt(request.getParameter("room_b_size"));
				int room_b_cost = Util.checkInt(request.getParameter("room_b_cost"));
				int room_b_depo = Util.checkInt(request.getParameter("room_b_depo"));
				int room_b_utility = Util.checkInt(request.getParameter("room_b_utility"));
				int room_b_month = Util.checkInt(request.getParameter("room_b_month"));
				
				dto.setRoom_b_gen(room_b_gen);
				dto.setRoom_b_type(room_b_type);
				dto.setRoom_b_avail(room_b_avail);
				dto.setRoom_b_size(room_b_size);
				dto.setRoom_b_cost(room_b_cost);
				dto.setRoom_b_depo(room_b_depo);
				dto.setRoom_b_utility(room_b_utility);
				dto.setRoom_b_month(room_b_month);
			}
			
			if(request.getParameter("room_c_gen") != null || request.getParameter("room_c_avail") != null || 
					request.getParameter("room_c_type") != null || request.getParameter("room_c_size") != null ||
					request.getParameter("room_c_cost") != null || request.getParameter("room_c_depo") != null ||
					request.getParameter("room_c_utility") != null || request.getParameter("room_c_month") != null) {
				String room_c_gen = request.getParameter("room_c_gen");
				String room_c_avail = request.getParameter("room_c_avail");
				int room_c_type = Util.checkInt(request.getParameter("room_c_type"));
				int room_c_size = Util.checkInt(request.getParameter("room_c_size"));
				int room_c_cost = Util.checkInt(request.getParameter("room_c_cost"));
				int room_c_depo = Util.checkInt(request.getParameter("room_c_depo"));
				int room_c_utility = Util.checkInt(request.getParameter("room_c_utility"));
				int room_c_month = Util.checkInt(request.getParameter("room_c_month"));
				
				dto.setRoom_c_gen(room_c_gen);
				dto.setRoom_c_type(room_c_type);
				dto.setRoom_c_avail(room_c_avail);
				dto.setRoom_c_size(room_c_size);
				dto.setRoom_c_cost(room_c_cost);
				dto.setRoom_c_depo(room_c_depo);
				dto.setRoom_c_utility(room_c_utility);
				dto.setRoom_c_month(room_c_month);
			}
			
			if(request.getParameter("room_d_gen") != null || request.getParameter("room_d_avail") != null || 
					request.getParameter("room_d_type") != null || request.getParameter("room_d_size") != null ||
					request.getParameter("room_d_cost") != null || request.getParameter("room_d_depo") != null ||
					request.getParameter("room_d_utility") != null || request.getParameter("room_d_month") != null) {
				String room_d_gen = request.getParameter("room_d_gen");
				String room_d_avail = request.getParameter("room_d_avail");
				int room_d_type = Util.checkInt(request.getParameter("room_d_type"));
				int room_d_size = Util.checkInt(request.getParameter("room_d_size"));
				int room_d_cost = Util.checkInt(request.getParameter("room_d_cost"));
				int room_d_depo = Util.checkInt(request.getParameter("room_d_depo"));
				int room_d_utility = Util.checkInt(request.getParameter("room_d_utility"));
				int room_d_month = Util.checkInt(request.getParameter("room_d_month"));
				
				dto.setRoom_d_gen(room_d_gen);
				dto.setRoom_d_type(room_d_type);
				dto.setRoom_d_avail(room_d_avail);
				dto.setRoom_d_size(room_d_size);
				dto.setRoom_d_cost(room_d_cost);
				dto.setRoom_d_depo(room_d_depo);
				dto.setRoom_d_utility(room_d_utility);
				dto.setRoom_d_month(room_d_month);
			}
			
			if(request.getParameter("room_e_gen") != null || request.getParameter("room_e_avail") != null || 
					request.getParameter("room_e_type") != null || request.getParameter("room_e_size") != null ||
					request.getParameter("room_e_cost") != null || request.getParameter("room_e_depo") != null ||
					request.getParameter("room_e_utility") != null || request.getParameter("room_e_month") != null) {
				String room_e_gen = request.getParameter("room_e_gen");
				String room_e_avail = request.getParameter("room_e_avail");
				int room_e_type = Util.checkInt(request.getParameter("room_e_type"));
				int room_e_size = Util.checkInt(request.getParameter("room_e_size"));
				int room_e_cost = Util.checkInt(request.getParameter("room_e_cost"));
				int room_e_depo = Util.checkInt(request.getParameter("room_e_depo"));
				int room_e_utility = Util.checkInt(request.getParameter("room_e_utility"));
				int room_e_month = Util.checkInt(request.getParameter("room_e_month"));
				
				dto.setRoom_e_gen(room_e_gen);
				dto.setRoom_e_type(room_e_type);
				dto.setRoom_e_avail(room_e_avail);
				dto.setRoom_e_size(room_e_size);
				dto.setRoom_e_cost(room_e_cost);
				dto.setRoom_e_depo(room_e_depo);
				dto.setRoom_e_utility(room_e_utility);
				dto.setRoom_e_month(room_e_month);
			}
			
			if(request.getParameter("room_f_gen") != null || request.getParameter("room_f_avail") != null || 
					request.getParameter("room_f_type") != null || request.getParameter("room_f_size") != null ||
					request.getParameter("room_f_cost") != null || request.getParameter("room_f_depo") != null ||
					request.getParameter("room_f_utility") != null || request.getParameter("room_f_month") != null) {
				String room_f_gen = request.getParameter("room_f_gen");
				String room_f_avail = request.getParameter("room_f_avail");
				int room_f_type = Util.checkInt(request.getParameter("room_f_type"));
				int room_f_size = Util.checkInt(request.getParameter("room_f_size"));
				int room_f_cost = Util.checkInt(request.getParameter("room_f_cost"));
				int room_f_depo = Util.checkInt(request.getParameter("room_f_depo"));
				int room_f_utility = Util.checkInt(request.getParameter("room_f_utility"));
				int room_f_month = Util.checkInt(request.getParameter("room_f_month"));
				
				dto.setRoom_f_gen(room_f_gen);
				dto.setRoom_f_type(room_f_type);
				dto.setRoom_f_avail(room_f_avail);
				dto.setRoom_f_size(room_f_size);
				dto.setRoom_f_cost(room_f_cost);
				dto.setRoom_f_depo(room_f_depo);
				dto.setRoom_f_utility(room_f_utility);
				dto.setRoom_f_month(room_f_month);
			}
			
			//System.out.println(r_gen1);
			//System.out.println(id);

			house_intro = house_intro.replaceAll("\r\n", "\n");
			house_intro = house_intro.replaceAll("\n", "<br>");
		
			
			String realpath = request.getSession().getServletContext().getRealPath("");
			String savepath = realpath + "upRoomImg\\";
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String today = sdf.format(new Date());
			
			//System.out.println(savepath);
			File folder = new File(savepath);
			
			if(!folder.exists()) {
				folder.mkdirs();
			}
			
			Iterator<String> files = multi.getFileNames();
			
			String[] fileList = new String[10];
			int i = 0;
			
			while(files.hasNext()) {
				MultipartFile mfile = multi.getFile(files.next());
				
				String filename = today + mfile.getOriginalFilename();
				
				if (!mfile.isEmpty()) {
					mfile.transferTo(new File(savepath + "\\" + filename));
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
			dto.setHouse_img7(fileList[6]);
			dto.setHouse_img8(fileList[7]);
			dto.setHouse_img9(fileList[8]);
			dto.setHouse_img10(fileList[9]);
			
			roomRegistService.roomRegistWriteAction(dto);
			
		}
		
		return mv;
	}
	
	
	@RequestMapping(value = "roomDetail.do")
	public ModelAndView roomDetail(HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("roomDetail");
		
		String hno = request.getParameter("house_no");
		
		int rehno = Util.checkInt(hno);
		
		List<RoomRegistDTO> roomDetail = roomRegistService.roomDetail(rehno);
		
		mv.addObject("roomDetail", roomDetail);
		
		return mv;
	}
	
	//roomRegistList
	@RequestMapping(value = "roomRegistList.do")
	public ModelAndView roomRegistList(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("roomRegistList");
		HttpSession session = request.getSession();
		
		String user_id = (String) session.getAttribute("id");
		
		//System.out.println(user_id);
		
		int page = 1;

	    if (commandMap.get("page") != null) {
	      page = Util.checkInt((String) commandMap.get("page"));
	    }
	    
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("user_id", user_id);
	    map.put("page", ((page - 1) * 10));
	    List<RoomRegistDTO> roomRegistList = roomRegistService.roomRegistList(map);
	    
	    
	    int count;
	    
	    if(roomRegistList.size() == 0){
	      count = 1;
	    } else {
	      count = roomRegistList.get(0).getTotalCount();
	    }

	    mv.addObject("roomRegistList", roomRegistList);
	    mv.addObject("page", page);
	    mv.addObject("totalCount", count);

		
		return mv;
	}
	
	@RequestMapping(value = "roomDetailRegist.do")
	public ModelAndView roomDetailRegist(HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("roomDetailRegist");
		HttpSession session = request.getSession();
		
		String rno = request.getParameter("house_no");
		String user_id = (String) session.getAttribute("id");
		
		int rerno = Util.checkInt(rno);
		
		RoomRegistDTO roomDetailRegist = roomRegistService.roomDetailRegist(rerno);

	
		mv.addObject("roomDetailRegist", roomDetailRegist);
		
		
		return mv;
	}
	
}
