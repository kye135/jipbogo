package com.jipbogo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.jipbogo.dto.LoginDTO;

@Repository("loginDAO")
public class LoginDAO extends AbstractDAO{
	
	//회원가입
	public void signAction(LoginDTO dto) {
		insert("login.signAction", dto);
	}
	
	//아이디 중복 체크
	public int checkID(String id) {
		return (int) selectOne("login.checkID", id);
	}

	public String loginName(LoginDTO dto) {
		return (String) selectOne("login.loginName", dto);
	}
	
	public String loginType(LoginDTO dto) {
      return (String) selectOne("login.loginType", dto);
  }

	@SuppressWarnings("unchecked")
	public List<LoginDTO> idfindAction(LoginDTO dto) {
		return selectList("login.idfindAction", dto);
	}

	@SuppressWarnings("unchecked")
	public List<LoginDTO> pwfindAction(LoginDTO dto) {
		return selectList("login.pwfindAction", dto);
	}

	public int sellsignAction(LoginDTO dto) {
		return (int) insert("login.sellsignAction", dto);
	}

	public int sellsignAction2(LoginDTO dto) {
		return (int) insert("login.sellsignAction2", dto);
	}

}
