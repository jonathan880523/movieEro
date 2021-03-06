package com.army.movieEro.rentalQnA.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.army.movieEro.rentalQnA.vo.RentalQnAReplyVO;

@Repository("rentalQnAReplyDaoImpl")
public class RentalQnAReplyDaoImpl implements RentalQnAReplyDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<RentalQnAReplyVO> selectList(int bnum) {
		// TODO Auto-generated method stub
		return new ArrayList<RentalQnAReplyVO>(sqlSession.selectList("QnAReply.selectList", bnum));
	}

	@Override
	public int insertBoard(RentalQnAReplyVO b) {
		// TODO Auto-generated method stub
		return sqlSession.insert("QnAReply.insertReply",b);
	}

	@Override
	public int updateBoard(RentalQnAReplyVO b) {
		// TODO Auto-generated method stub
		return sqlSession.update("QnAReply.updateReply",b);
	}

	@Override
	public int deleteBoard(int boardNum) {
		// TODO Auto-generated method stub
		return sqlSession.delete("QnAReply.deleteReply",boardNum);
	}

	public int getListCount(int boardNum) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("QnAReply.selectCount",boardNum);
	}

	@Override
	public RentalQnAReplyVO selectViewList(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("QnAReply.selectViewList", bno);
	}
}
