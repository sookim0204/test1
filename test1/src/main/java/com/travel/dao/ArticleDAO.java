package com.travel.dao;

import com.travel.domain.ArticleDTO;
import com.travel.domain.MemberInfo;
import com.travel.util.DBConn;

import java.sql.Connection;
import java.sql.SQLException;

public interface ArticleDAO {
	public static final Connection conn = DBConn.getConnection();
	
	// 게시글 작성
	public void insert(ArticleDTO articleDto) throws SQLException;
	
	// 게시글 수정
	public void update(ArticleDTO articleDto) throws SQLException;
	
	// 게시글 삭제
	public void delete(long num, MemberInfo info) throws SQLException;
	
	// 조회수 업데이트
	public void updateHitCount(long num) throws SQLException;
	
	// 전체 게시글 개수 (게시판 안에서)
	public int dataCount();
}
