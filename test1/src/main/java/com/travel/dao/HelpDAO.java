package com.travel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.travel.domain.ArticleDTO;
import com.travel.domain.HelpDTO;
import com.travel.domain.MemberInfo;
import com.travel.util.DBUtil;

public class HelpDAO implements ArticleDAO{


	@Override
	public void insert(ArticleDTO articleDto) throws SQLException {
		HelpDTO dto = (HelpDTO) articleDto;
			PreparedStatement pstmt = null;
			String sql;
			
			try {
				// INSERT INTO 테이블명(컬럼,컬럼) VALUES (값,값)
				sql = "INSERT INTO QUESTION(num, memberNum, subject, content, reg_date) "
						+ " VALUES(bbs_seq.NEXTVAL, ?, ?, ?, SYSDATE)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setLong(1, dto.getMemberNum());
				pstmt.setString(2, dto.getTitle());
				pstmt.setString(3, dto.getContent());
				
				pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
				throw e;
			} finally {
				DBUtil.close(pstmt);
			}		
		}

	@Override
	public void update(ArticleDTO articleDto) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(long num, MemberInfo info) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateHitCount(long num) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int dataCount() {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "SELECT COUNT(*) cnt " + " FROM question " + " WHERE block = 0 ";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt("cnt");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
		}

		return result;
	}
	
	
	public int dataCount(String schType, String kwd) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "SELECT COUNT(*) cnt " + " FROM question " + " WHERE block = 0 ";
			if (schType.equals("all")) { // subject 또는 content
				sql += " AND ( INSTR(subject, ?) >= 1 OR INSTR(content, ?) >= 1 )";
			} else if (schType.equals("reg_date")) {
				kwd = kwd.replaceAll("(\\-|\\.|\\/)", "");
				sql += " AND TO_CHAR(reg_date, 'YYYYMMDD') = ? ";
			} else { // userName, subject, content
				sql += " AND INSTR(" + schType + ", ?) >= 1";
			}

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, kwd);
			if (schType.equals("all")) {
				pstmt.setString(2, kwd);
			}

			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt("cnt");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
		}

		return result;
	}
	
	

	 public List<HelpDTO> listBoard(int offset, int size) {
	        List<HelpDTO> list = new ArrayList<>();
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        String sql = "SELECT questionNum, memberNum, subject, content, TO_CHAR(reg_date, 'YYYY-MM-DD') reg_date, answerId, TO_CHAR(answer_date, 'YYYY-MM-DD') answer_date FROM help_inquiry ORDER BY questionNum DESC OFFSET ? ROWS FETCH NEXT ? ROWS ONLY ";
	        try {
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1, offset);
	            pstmt.setInt(2, size);

	            rs = pstmt.executeQuery();
	            while (rs.next()) {
	                HelpDTO dto = new HelpDTO();
	                dto.setBoardNum(rs.getLong("questionNum"));
	                dto.setMemberNum(rs.getLong("memberNum"));
	                dto.setTitle(rs.getString("subject"));
	                dto.setContent(rs.getString("content"));
	                dto.setReg_date(rs.getString("reg_date"));
	                dto.setAdminNum(rs.getLong("adminNum"));
	                dto.setAnswer_date(rs.getString("answer_date"));

	                list.add(dto);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            DBUtil.close(rs);
	            DBUtil.close(pstmt);
	        }

	        return list;
	    }
	
	 
	 public List<HelpDTO> listBoard(int offset, int size, String schType, String kwd) {
			List<HelpDTO> list = new ArrayList<HelpDTO>();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			StringBuilder sb = new StringBuilder();

			try {
				sb.append(" SELECT num, memberId, subject, hitCount, ");
				sb.append("     TO_CHAR(reg_date, 'YYYY-MM-DD') reg_date ");
				sb.append(" FROM bbs b ");
				sb.append(" WHERE block = 0 ");
				if (schType.equals("all")) {
					sb.append(" AND (INSTR(subject, ?) >= 1 OR INSTR(content, ?) >= 1) ");
				} else if (schType.equals("reg_date")) {
					kwd = kwd.replaceAll("(\\-|\\.|\\/)", "");
					sb.append(" AND TO_CHAR(reg_date, 'YYYYMMDD') = ? ");
				} else {
					sb.append(" AND INSTR(" + schType + ", ?) >= 1");
				}

				sb.append(" ORDER BY num DESC ");
				sb.append(" OFFSET ? ROWS FETCH FIRST ? ROWS ONLY ");

				pstmt = conn.prepareStatement(sb.toString());

				if (schType.equals("all")) {
					pstmt.setString(1, kwd);
					pstmt.setString(2, kwd);
					pstmt.setInt(3, offset);
					pstmt.setInt(4, size);
				} else {
					pstmt.setString(1, kwd);
					pstmt.setInt(2, offset);
					pstmt.setInt(3, size);
				}

				rs = pstmt.executeQuery();
				while (rs.next()) {
					HelpDTO dto = new HelpDTO();

					dto.setBoardNum(rs.getLong("questionNum"));
					dto.setTitle(rs.getString("subject"));
					dto.setNickname(rs.getString("userName"));
					dto.setHitCount(rs.getInt("hitCount"));
					dto.setReg_date(rs.getString("reg_date"));

					list.add(dto);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBUtil.close(rs);
				DBUtil.close(pstmt);
			}

			return list;
		}

	
	
	
	
}
   
