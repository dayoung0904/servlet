<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱차트</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
header {height: 100px;}
nav {height: 50px;}
.contents {height: 600px;}
.info {height:40%}
.list {height:60%}
footer {height: 50px;}
a, a:hover{text-decoration:none;}
</style>
</head>
<body>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>
	<div id="wrap" class="container">
		<header class="bg-warning d-flex">
			<%-- 로고영역 --%>
			<div class="bg-secondary col-2 d-flex align-items-center">
				<h2><a href="#" class="text-success">Melong</a></h2>
			</div>
			<%-- 검색영역 --%>
			<div class="bg-danger col-10 d-flex align-items-center">
				<div class="input-group">
	  				<input type="text" class="form-control col-5">
	  				<div class="input-group-append">
	    				<button class="btn btn-info" type="button">검색</button>
	  				</div>
				</div>
			</div>
		</header>
		
		<nav class="bg-success">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark"><b>멜롱차트</b></a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark"><b>최신음악</b></a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark"><b>장르음악</b></a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark"><b>멜롱DJ</b></a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark"><b>뮤직어워드</b></a></li>
			</ul>
		</nav>
		<%
			String title = request.getParameter("title");
			for(Map<String, Object> music : musicList){
				if(title.equals(music.get("title"))){
		%>
		<section class="contents">
		<h4 class="font-weight-bold">곡 정보</h4>
		<%-- 곡 정보 영역 --%>
			<div class="d-flex mt-4 border border-success p-3">
				<%-- 이미지 --%>
				<div>
					<img src="<%=music.get("thumbnail") %>" alt="표지" width="150">
				</div>
				<%-- 가수 정보 --%>
				<div class="ml-3">
					<h3><b><%=music.get("title") %></b></h3>
					<div><%=music.get("singer") %></div>
					
					<table>
						<td>앨범<td><%=music.get("album") %></td>
						<td>재생 시간</td><td><%=music.get("time") %></td>
						<td>작곡가</td><td><%=music.get("composer") %></td>
						<td>작사가</td><dt><%=music.get("lyricist") %></dt>
					</table>
				</div>
			</div>
			
		<%
				}
			}
		%>
			<%-- 가사 영역 --%>
			<div class="bg-success mt-3">
				<hr>
				<h4 class="font-weight-bold">가사</h4>
				가사 정보 없음
			</div>
		</section>
		<footer class="bg-warning">
			<hr>
			<span class="text-secondary">Copyright © marondal 2021</span>
		</footer>
	</div>
</body>
</html>