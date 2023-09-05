package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappinQuiz02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		// 현재 시간은 14시 52분 43초 입니다.
		// 시간 생성
		Date today = new Date();
		
		// 포맷 정의 출력
		PrintWriter out = response.getWriter();
		SimpleDateFormat sdf = new SimpleDateFormat("HH시 mm분 ss초 입니다.");
		out.println("현재 시간은 " + sdf.format(today));
		
	}

}
