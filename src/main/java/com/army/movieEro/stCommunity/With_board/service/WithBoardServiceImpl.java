package com.army.movieEro.stCommunity.With_board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.army.movieEro.stCommunity.With_board.dao.WithBoardDao;
import com.army.movieEro.stCommunity.With_board.vo.WithBoard;

@Service("bService")
public class WithBoardServiceImpl implements WithBoardService {

	@Autowired
	WithBoardDao bDao;
	
	@Override
	public int getListCount() {
		return bDao.getListCount();
	}

	@Override
	public ArrayList<WithBoard> selectList(int currentPage, int limit) {
		System.out.println("service Impl");
		return bDao.selectList(currentPage, limit);
	}

	@Override
	public WithBoard selectBoard(int boardNum) {
		return bDao.selectBoard(boardNum);
	}

	@Override
	public int insertBoard(WithBoard b) {
		return bDao.insertBoard(b);
	}

	@Override
	public void addReadCount(int boardNum) {
		bDao.addReadCount(boardNum);
	}

	

}