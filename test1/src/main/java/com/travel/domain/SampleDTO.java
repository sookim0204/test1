package com.travel.domain;

public class SampleDTO extends ArticleDTO {
	/*
	 * 여기서부터는 각 게시판 별로 필요한 멤버 변수를 선언하여 DTO 클래스 작성할 것
	 */
	public int sample1;
	public int sample2;
	
	public int getSample1() {
		return sample1;
	}
	public void setSample1(int sample1) {
		this.sample1 = sample1;
	}
	public int getSample2() {
		return sample2;
	}
	public void setSample2(int sample2) {
		this.sample2 = sample2;
	}
}
