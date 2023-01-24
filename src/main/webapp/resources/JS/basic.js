  	$(document).ready(function(){
  		boardList();
  	});
  	
  	
  	
  	function SignUp(){
  		location.href="${cpath}/SignUp.do";
  	}
  	
  	
  	
	function boardList() {
  		console.log("basic실행되면 로그에 보이게!")
  		$.ajax({

  			url : "${cpath}/board",
  			type : "get",
  			dataType : "json", 
  			success : callBack,
  			error : function() {
  				alert("error");
			}
  		}) //ajax끝
	} //boardList함수 끝
	
	function callBack(data) { 
		//alert("데이터 통신 확인");
		console.log(data) 
		
		//콜백함수가 실행되면 테이브태그 내용을 넣어볼거다.
		var bList = "<table class='table table-hover table-bordered'>"; 
		bList += "<tr>";
		bList += "<td>번호</td>";
		bList += "<td>제목</td>";
		bList += "<td>작성자</td>";
		bList += "<td>작성일</td>";
		bList += "<td>조회수</td>";
		bList += "<tr>";
		
		$.each(data,(index,obj)=>{ //이문법 원래 오류라고 나오는게 맞다. 오류 아닌데 이클립스가 오류로 인식함
			bList += "<tr>";
			bList += "<td>" + obj.idx + "</td>"; 
			bList += "<td><a href='javascript:cview(" + obj.idx + ")'>" + obj.title + "</a></td>";
			bList += "<td>" + obj.writer + "</td>";
			bList += "<td>" + obj.indate + "</td>";
			bList += "<td id='count" + obj.idx + "'>" + obj.count + "</td>";
			bList += "</tr>";
			
			//게시글 내용만 보여주는 태그 
	        bList += "<tr style='display:none' id='c" + obj.idx + "'>"; 
	        bList += "<td>내용</td>"; 
	        bList += "<td colspan='4'>";
	        bList += "<textarea class='form-control' row='7' id='nc" + obj.idx + "'>" +  obj.content + "</textarea>";
	        
	        if("${loginMember.memId}" == obj.memId){
		        bList += "<button class='btn btn-sm btn-warning' onclick='goUpdate(" + obj.idx + ")'>수정</button>";
		        bList += "<button class='btn btn-sm btn-primary' onclick='goDel(" + obj.idx + ")'>삭제</button>";
	        }else{
	        	bList += "<button disabled class='btn btn-sm btn-warning' onclick='goUpdate(" + obj.idx + ")'>수정</button>";
		        bList += "<button disabled class='btn btn-sm btn-primary' onclick='goDel(" + obj.idx + ")'>삭제</button>"; 
        	}

	        bList += "</td>";
	        bList += "<tr>";
		}); //each끝
		
		bList += "<tr>";
		bList += "<td colspan='5'>";
		bList += "<button class='btn btn-sm btn-info' onclick='goForm()'>글쓰기</button>";
		bList += "</td>";
		bList += "</tr>";
		
		bList += "</table>";
		$("#list").html(bList); 
	} //callBack함수 끝
	
	function goForm() {
		//글쓰기 버튼 온클릭하면 리스트목록은 없애고,
		$("#list").css("display","none");
		//글쓰기 폼태그들 화면에 보여주기
		$("#wform").css("display","block");
	} // goForm끝		

	
	function insertFn(){
	//1.form태그 안에 있는 input태그에 입력한 내용들 가져오기
		var fData = $("#frm").serialize();
		console.log("폼태그 내용",fData);
	//2.그 내용들은 ajax통신으로 보내기
	$.ajax({
		url : "${cpath}/board",
		type : "post",
		data : fData, 
		success : boardList,  
		error : function() { 
			alert("글쓰기 실패");
		}
	}); //insert ajax끝
	//3.잘 보내졌으면 글쓰기 버튼 누르고 다면 다시 게시글 목록이 보여질 수 있도록
		$("#list").css("display","block");
		$("#wform").css("display","none");
	//4.글쓰고 나면 다시 열었을때  form태그에  내용이 남은 상태임 아래처럼 일일이 넣지 않고 .취소 버튼 id에   reset을 주고 자바스크립트 코드만들기 	
		$("#reset").trigger("click") //취소버튼을 강제로 실행 js코드
	
	} //insertFn 끝
	function cview(idx) { 
		if($("#c"+idx).css("display") == "none"){  
			$.ajax({
  			url : "${cpath}/updateCount/"+idx, 
  			type : "get",
  			success : function(vo){
  				console.log(vo.count);
  				$("#count"+idx).text(vo.count);
  			},
  			error : function() {
  				alert("조회수 올리기 실패!");
  			}
  		}); //조회수 ajax끝
			$("#c"+idx).css("display","table-row") 
		}else{
			$("#c"+idx).css("display","none")
		}
	} //cview 끝
	
	
	function goDel(idx) {
		var real = confirm("정말 삭제하시겠습니까?")
		if(real){
			$.ajax({
	  			url : "${cpath}/board/"+idx,
	  			type : "delete",
	  			data : {"idx" : idx},
	  			success : boardList,
	  			error : function() {
	  				alert("글삭제 실패!");
	  			}
	  		});
		}
	} //goDel끝

	
	function goUpdate(idx){
	      var newContent = $("#nc"+idx).val();
	      $.ajax({
	            url : "${cpath}/board",
	            type : "put",
	            contentType : "application/json;charset=utf-8",
	            data : JSON.stringify({"idx":idx, "content": newContent}), 
	            success : boardList,
	            error : function(){
	               alert("글 수정 실패~");
	            }
	         });
	   }//goUpdate끝