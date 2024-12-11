package com.travel.dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.travel.domain.ArticleDTO;
import com.travel.util.DBConn;

public interface ArticleDAO {
	public static final Connection conn = DBConn.getConnection();
	
	// 게시글 작성
	public void insert(ArticleDTO dto) throws SQLException;
	
	// 게시글 수정
	public void update(ArticleDTO dto) throws SQLException;
	
	// 게시글 삭제
	public void delete() throws SQLException;
	
	// 조회수 업데이트
	public void updateHitCount(long num) throws SQLException;
	
	// 전체 게시글 개수 (게시판 안에서)
	public int dataCount();
}
