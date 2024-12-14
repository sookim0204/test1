package com.travel.dao;

import com.travel.domain.ArticleDTO;
import com.travel.domain.MemberInfo;
import com.travel.domain.ReviewDTO;
import com.travel.util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReviewDAO implements ArticleDAO {
    @Override
    public void insert(ArticleDTO articleDto) throws SQLException {
        ReviewDTO dto = (ReviewDTO) articleDto;
        PreparedStatement pstmt = null;
        String sql = null;

        try {
            // TODO: Implement the SQL query. The query should insert CATEGORY reviews.
            sql = "";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getTitle());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            throw e;
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            DBUtil.close(pstmt);
        }
    }

    @Override
    public void update(ArticleDTO articleDto) throws SQLException {
        ReviewDTO dto = (ReviewDTO) articleDto;
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
}
