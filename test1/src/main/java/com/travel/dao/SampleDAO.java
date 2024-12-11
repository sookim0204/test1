package com.travel.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.travel.domain.ArticleDTO;
import com.travel.domain.SampleDTO;

public class SampleDAO implements ArticleDAO {

	@Override
	public void insert(ArticleDTO dto) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(ArticleDTO dto) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete() throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateHitCount(long num) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int dataCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	/*
	 * 여기서부터는 각 게시판 별 DTO를 사용하여 필요한 DAO 메서드 구현할 것
	 */
	public SampleDTO findById(long num) {
		SampleDTO dto = new SampleDTO();
		return dto;
	}
	
	public List<SampleDTO> list(int offset, int size) {
		List<SampleDTO> list = new ArrayList<SampleDTO>();
		return list;
	}
}
