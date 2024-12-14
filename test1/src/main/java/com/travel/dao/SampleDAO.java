package com.travel.dao;

import com.travel.domain.ArticleDTO;
import com.travel.domain.MemberInfo;
import com.travel.domain.SampleDTO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SampleDAO implements ArticleDAO {

	@Override
	public void insert(ArticleDTO articleDto) throws SQLException {
		SampleDTO dto = (SampleDTO) articleDto;
	}

	@Override
	public void update(ArticleDTO articleDto) throws SQLException {
		SampleDTO dto = (SampleDTO) articleDto;
	}

	@Override
	public void delete(long num, MemberInfo info) throws SQLException {
		
	}

	@Override
	public void updateHitCount(long num) throws SQLException {
		
	}

	@Override
	public int dataCount() {
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
