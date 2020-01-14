package com.jipbogo.util;

import javax.servlet.http.HttpServletRequest;

public class Util {
	public static String getIp(HttpServletRequest request) {
		String ip = request.getHeader("X-FORWARDED-FOR");
		if(ip == null) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if(ip == null) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if(ip == null) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if(ip == null) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if(ip == null) {
			ip = request.getRemoteAddr();
		}		
		return ip;
		//MAC값
	}
	
	public static int checkInt(String str) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < str.length(); i++) {
			if (Character.isDigit(str.charAt(i))) {
				sb.append(str.charAt(i));
			}
		}
		return Integer.parseInt(sb.toString());
		//return Integer.parseInt(str.replaceAll("[^0-9]", ""));
		//return Integer.parseInt(str.replaceAll("[\D]", ""));
	}
}

/*
str.replaceAll("[^0-9]", "");
[0-9]  = 0~9이면
[^0-9] = 0~9가 아니면
*/