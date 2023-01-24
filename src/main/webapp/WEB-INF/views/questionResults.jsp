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

  <title>보이스피싱 모의체험 페이지3(결과)입니다</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
  <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
  <link rel="stylesheet" href="${cpath}/resources/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/css/questions.css">
  <script type="module" defer src="${cpath}/resources/js/questions.js"></script>
 
  
</head>
<body>
  <h2 class="page-subtitle">
    내 결과는?
  </h2>

  <h1 class="page-title"></h1>

  <img src="" alt="캐릭터" class="character">

  <div class="result">
    <div class="box"></div>
    <div class="box"></div>
    <div class="box"></div>
    <div class="box"></div>
  </div>

  <div class="result">
    <h3>나의 보이스피싱 모의체험 결과는?</h3>
    <div class="VpResults">
      <div class="VpResult"></div>
      <div class="VpResult"></div>
    </div>
  </div>

  <div class="result">
    <h3>보이스피싱 예방 교육영상은 어떤가요?</h3>
    <!-- blank 새탭으로 열림  -->
    <a href="" target="_blank" class="lecture"> 
      <!-- 광고 배너 이미지 -->
      <img src="" alt="교육영상">
    </a>
  </div>

<!-- 주소 복사 + 얼럿창 나타나는 함수=> share.js파일, share-or-copy클래스 선택 -->
  <div class="btn btn-btn2 btn-small share-or-copy">
    모의체험 결과 공유하기
  </div>

  <a href="/index.html" class="btn btn-btn3 btn-small">
    모의체험 다시하기
  </a>
</body>
</html>
