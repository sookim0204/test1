package com.travel.domain;

public class HelpDTO extends ArticleDTO{

//	private long boardNum;		// 글 번호
//	private long memberNum;	// 회원 번호
//	private String nickname;	// 유저 별명
//	private String title;	// 글 제목
//	private String content;	// 글 내용
//	private String reg_date;	// 글 등록일
//	private int hitCount;	// 조회 수
	private Long adminNum; // 답변한 관리자 회원번호
    private String answer_date; // 답변한 날짜
    
	public Long getAdminNum() {
		return adminNum;
	}
	public void setAdminNum(Long adminNum) {
		this.adminNum = adminNum;
	}

	public String getAnswer_date() {
		return answer_date;
	}
	public void setAnswer_date(String answer_date) {
		this.answer_date = answer_date;
	}
	
	
}
