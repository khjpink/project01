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

  <title>보이스피싱 모의체험 페이지2(질문)입니다</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
  <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/home.css">
  <script defer src="${cpath}/resources/js/share.js"></script>
  <script defer src="${cpath}/resources/js/data.js"></script>    
 
</head>
<body>

  <div class="progress"> <!-- 질문 클릭시 색 채워지는-->
    <div class="value"></div>
  </div>
  
  <div class="question-box">
    <div class="number"></div>
    <div class="question"></div>
    <div class="btn btn-btn3 choice choice1"></div>
    <div class="btn btn-btn3 choice choice2"></div>
  </div>
  
</body>
</html>
