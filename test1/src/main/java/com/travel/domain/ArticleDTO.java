package com.travel.domain;

public abstract class ArticleDTO {
	private long boardNum;		// 글 번호
	private long memberNum;	// 회원 번호
	private String nickname;	// 유저 별명
	private String title;	// 글 제목
	private String content;	// 글 내용
	private String reg_date;	// 글 등록일
	
	private int replyCount;	// 댓글 수
	private int hitCount;	// 조회 수
	private int likeCount;	// 좋아요 수
	// private int clippingCount;	// 스크랩 수
	
	// private int isBlind;	// 블라인드 여부
	
	public long getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(long boardNum) {
		this.boardNum = boardNum;
	}
	public long getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(long memberNum) {
		this.memberNum = memberNum;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
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
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getReplyCount() {
		return replyCount;
	}
	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	public int getHitCount() {
		return hitCount;
	}
	public void setHitCount(int hitCount) {
		this.hitCount = hitCount;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	

}
