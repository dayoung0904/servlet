<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<%!
	// 1. 합계
		
	public int getSum(int n){
		int sum = 0;
		for (int i = 0; i <= n; i++) {
		sum += i;
		}
		return sum;
	}
%>
 
<% 
	//2.
	int sumAvg = 0;
	int[] scores = {80, 90, 100, 95, 80};
	for(int i =0; i < scores.length; i++){
		sumAvg += scores[i];
	}
	double avg = (double)sumAvg / scores.length;

%>
<%
	// 3.
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for(int i = 0; i < scoreList.size(); i++){ // 0 ~ 9
		if (scoreList.get(i).equals("O")){
			score += 100 / scoreList.size();
		}
	}
	
	// 4.
	String birthDay = "20010820";
	String year = birthDay.substring(0,4);
	//out.print(year);
	int age = 2023 - Integer.valueOf(year);
%>

<h2>1부터 50까지의 합은 <%= getSum(50) %> 입니다.</h2>

<h2>평균 점수는 <%= avg %> 입니다.</h2>

<h2>채점 결과는 <%= score %> 입니다.</h2>

<h2><%= birthDay %>의 나이는 <%= age %> 입니다.</h2>
</body>
</html>