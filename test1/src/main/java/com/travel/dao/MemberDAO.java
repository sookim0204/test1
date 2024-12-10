package com.travel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.travel.dto.MemberDTO;
import com.travel.util.DBConn;
import com.travel.util.DBUtil;



public class MemberDAO {
	private Connection conn = DBConn.getConnection();

	public MemberDTO loginMember(String memberId, String memberPwd) {
		MemberDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			sql="SELECT memberNum, memberId, name, grade, SignUpDate FROM MEMBER WHERE memberId = ? AND memberPwd = ? AND isLogin = 1";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberId);
			pstmt.setString(2, memberPwd);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new MemberDTO();
				
				dto.setMemberNum(rs.getLong("memberNum"));
				dto.setMemberId(rs.getString("memberId"));
				dto.setName(rs.getString("name"));
				dto.setGrade(rs.getInt("grade"));
				dto.setSignUpDate(rs.getString("SignUpDate"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(pstmt);
		}
		
		return dto;
	}
}
