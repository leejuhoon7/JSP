<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
<style>
    body{
      margin:0;
    }
    a {
      color:black;
      text-decoration: none;
    }
    h1 {
      font-size:45px;
      text-align: center;
      border-bottom:1px solid gray;
      margin:0;
      padding:20px;
    }
    ol{
      border-right:1px solid gray;
      width:100px;
      margin:0;
      padding:20px;
      padding-bottom:500px;
      padding-top:75px;
    }
    #grid{
      display: grid;
      grid-template-columns: 150px 1fr;
    }
    #grid ol{
      padding-left:50px;
    }
    #grid #article{
      padding-left:100px;
      font-size:30px;
    }
  </style>
</head>

<body>

  
  <div id="grid">
    <ol>
    
      <li><a href="webapp/WEB-INF/views/main/updateMember.jsp">마이페이지</a></li><br/><br><br><br><br>
      <li><a href="2.html">1:1게시판</a></li><br/><br><br><br><br>
      <li><a href="3.html">회원정보수정</a></li><br/><br><br><br><br>
      <li><a href="3.html">나의리뷰내역</a></li><br/><br><br><br><br>
      <li><a href="3.html">결제내역</a></li><br/><br><br><br><br>
      <li><a href="3.html">끝</a></li><br/><br><br><br><br>
    </ol>
    <div id="article">
        <h2>회원정보수정하는곳!!</h2>
       	
       
      </div>
  </div>
  </body>
</html>