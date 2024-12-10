package com.travel.dto;

public class MemberDTO {
	private Long memberNum;
	private String memberId;
	private String memberPwd;
	private String nickName;
	private String name;
	private int grade;
	private int isLogin;
	
	private String SignUpDate;
	private String imageFilename;
	private String birth;
	private String email;
	private String phoneNum;
	private String zip;
	private String addr1;
	private String addr2;
	private String pwd_hint_question;
	private String pwd_answer;
	
	public Long getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPwd() {
		return memberPwd;
	}
	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getIsLogin() {
		return isLogin;
	}
	public void setIsLogin(int isLogin) {
		this.isLogin = isLogin;
	}
	public String getSignUpDate() {
		return SignUpDate;
	}
	public void setSignUpDate(String signUpDate) {
		SignUpDate = signUpDate;
	}
	public String getImageFilename() {
		return imageFilename;
	}
	public void setImageFilename(String imageFilename) {
		this.imageFilename = imageFilename;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getPwd_hint_question() {
		return pwd_hint_question;
	}
	public void setPwd_hint_question(String pwd_hint_question) {
		this.pwd_hint_question = pwd_hint_question;
	}
	public String getPwd_answer() {
		return pwd_answer;
	}
	public void setPwd_answer(String pwd_answer) {
		this.pwd_answer = pwd_answer;
	}
	
}
