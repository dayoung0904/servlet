<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <style>
 header{height:100px;background-color: #FF8000;}
 nav{height:50px;background-color: #FF8000;}
 section{height:600px;}
 footer{height:50px;}
 article{width:300px;}
.item-box{border: #FF8000;}
.item-box:hover{backgroud-color:#FAAC58}
.nickname{color:#FF8000;}
 </style>  
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select
	String selectQuery = "select *from `seller` AS A right join `used_goods` AS B on A.`id` = B.`sellerId` order by A.`id` desc";
	ResultSet res = ms.select(selectQuery);
%>
	<div id="wrap" class="container">
		<header class="d-flex justify-content-center align-items-center">
			<div class="text-white"><h1>HONG당무 마켓</h1></div>
		</header>
		<nav class="mb-3">
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">리스트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">물건올리기</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">마이페이지</a></li>
			</ul>
		</nav>
		<section>
			<div class="d-flex flex-wrap justify-content-between">
				<%
					while (res.next()) {	
				%>
				<div class="item-box border border-danger m-3">
					<article>
	                	<img src="<%= res.getString("image") %>" alt="상품" width="300" >
	                	<div class="font-weight-bold"><h3><%= res.getString("title") %></h3></div>
	                	<div class="text-secondary"><%= res.getInt("price") %></div>
	                	<div class="nickname"><%= res.getString("nickname") %></div>
	                </article>
	            </div>
	            <%
					}
	            %>
			</div>
		</section>
		<footer class="d-flex justify-content-center align-items-center">
			<div class="text-secondary">Copyright 2019 © HONG All Rights Reserved.</div>
		</footer>
	
	
	</div>
<%
	//DB 연결 해제
	ms.disconnect();
%>
</body>
</html>