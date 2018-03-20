package com.army.movieEro.member.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.army.movieEro.member.vo.MemberVO;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {
	@Inject
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insertMember(MemberVO memberVO) {

		return sqlSession.insert("Member.insertMember", memberVO);
	}

	@Override
	public boolean idCheck(String desiredId) {

		return sqlSession.selectOne("Member.selectID", desiredId);
	}

}
