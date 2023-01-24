package kr.board.entity;
//게시판이라고 하는 객체(오브젝트) 만들기

public class Board {
	
	//기왕이면 SQL의테이블 이름과 같게 짖는다
	//VO에서 필드라고 부르거나 속성 이거나 프로퍼티라고 부름
	//게시글 번호, 제목, 내용, 작성자, 작성일, 조회수를 가지는 게시판 만들기
	private int idx;
	private String title;
	private String content;
	private String writer; // 작성자
	private String indate; //작성일
	private int count; //조회수
	private String memId; 
	
	
	//스프링에서는 기본생성자를 만들필요 없음, public class 'Board'의  객체의 내용이면 담아줄 수 있다
	//getter,setter 만들기. 단축키 ait+shift+s
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}

}
