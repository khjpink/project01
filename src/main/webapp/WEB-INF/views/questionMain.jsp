<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${cpath}/resources/css/index.css">

  <title>보이스피싱 모의체험 페이지(메인)1입니다</title>
  
  <link rel="icon" href="${cpath}/resources/images/favicon.png">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
  <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <script defer src="${cpath}/resources/js/share.js"></script> 
  <script defer src="${cpath}/resources/js/data.js"></script>

  
</head>
<body>
<!-- header 메뉴불러오기 -->
<%@ include file="header.jsp" %>

<div class="sub">	 
  <h2 class="page-subtitle">
	    스마트인재개발원<br>
	  Final Project
  </h2>

  <h1 class="page-title">
	    보이스 피싱<br>
	    모의체험하기
  </h1>

  <img src="${cpath}/resources/images/main_character.png" alt="이미지" class="character">
   
  <a href="${cpath}/questions.do" class="btn btn-btn1">
	    모의체험 하기
  </a>
  <div class="btn btn-btn2 btn-small share-or-copy">
    	모의체험 링크 공유하기
  </div>
 </div>

  
</body>
</html>
